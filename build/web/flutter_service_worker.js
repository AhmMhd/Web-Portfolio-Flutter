'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "426313f2f3133c2f20415344c4a22df3",
"index.html": "ce8f7e083265ff0a73cea79365c152b2",
"/": "ce8f7e083265ff0a73cea79365c152b2",
"main.dart.js": "c03a5a2fa8f7603996f666dcdc1f0614",
"404.html": "0a27a4163254fc8fce870c8cc3a3f94f",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "1b16d3d6fd41354e79412998d2dde4e7",
"assets/AssetManifest.json": "4c5c323b156002bb89ef8e8356a70953",
"assets/NOTICES": "a7e483533bfdb8f7c6961bd9c386cc08",
"assets/FontManifest.json": "f14f60495d3a9e7b87a3ccbee1638aa4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "1288c9e28052e028aba623321f7826ac",
"assets/assets/images/ic_java.png": "74e943d82452f81f6a0bb0b51ac6785d",
"assets/assets/images/ic_pvc.webp": "0464551e3affd3f7c9e1df27bb4c75e3",
"assets/assets/images/ic_jenkins.png": "ca91cc22bedb0d39a621df5174bb8747",
"assets/assets/images/ic_stakeoverflow.png": "b09388b600927a6dd3dc005b843b5ea4",
"assets/assets/images/ic_jetpack.png": "5298b2615e289cfb387a6c7ec217551c",
"assets/assets/images/ic_kotlin.png": "7d0f99724776e6e50675649567727e13",
"assets/assets/images/ic_linkedin.png": "30c453b7f5fbdb09ea0cb42a5dc7a6e5",
"assets/assets/images/ic_sparktan.webp": "76d80d833aa1d79759fcd0540d8b66d6",
"assets/assets/images/ic_sparkmember.webp": "0f63faecc20a3525aba096a4c52bee9f",
"assets/assets/images/ic_dbk.webp": "bc2bce52efac42fe6381322d20febce1",
"assets/assets/images/ic_phone.png": "7147ca19cb88338682ba6ede7f2f6f53",
"assets/assets/images/bg_main.png": "78509fe1160f33ce4f679f007f55b1c8",
"assets/assets/images/ic_github.png": "ec3a60c8c6539a07eb70b52f6737ea6e",
"assets/assets/images/avatar.jpg": "d682de81c760574a9b768cb6f6f71b4c",
"assets/assets/images/ic_medium.png": "91450b4eb04851c6bf6f4620042e8da1",
"assets/assets/images/ic_dart.png": "f07ae6f792faa9743c97e8a3fead0544",
"assets/assets/images/ic_android.png": "b309ea14ed00ef28fcd6f1afd398d7a9",
"assets/assets/images/ic_email.png": "84ae248b74b852175cc2cf9a51bc370e",
"assets/assets/images/ic_firebase.png": "a6c26916c900bfa596ff3c52dfa11db0",
"assets/assets/images/ic_gymhub.png": "de03fc848a0225ee5356ddd5d7efdc16",
"assets/assets/images/ic_ttr.webp": "7eaf34daa558644f25e85e02bbb384c4",
"assets/assets/images/ic_flutter.png": "e95ed7dd9c2c4dda38e075564ec309e3",
"assets/assets/images/ic_mm.webp": "73b5c2a73381a56ed413f2f14f1b6539",
"assets/assets/fonts/yellowtail.ttf": "c59dc89f09bc93c715a736a9132f27f7",
"assets/assets/fonts/roboto.ttf": "c8b6e083af3f94009801989c3739425e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "/",
"main.dart.js",
"index.html",
"assets/NOTICES",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value + '?revision=' + RESOURCES[value], {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache.
        return response || fetch(event.request).then((response) => {
          cache.put(event.request, response.clone());
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
