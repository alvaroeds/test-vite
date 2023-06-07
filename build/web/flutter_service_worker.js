'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "36ed12dfdc28b6577230ed62c9a08dc6",
"splash/img/light-2x.png": "8c0e9a172a4d51d034ccac84fa3acee2",
"splash/img/dark-4x.png": "470bad190cf560a7db3a5d8c0be7fa0a",
"splash/img/light-3x.png": "542075b33d77598d4c85e8102de6c607",
"splash/img/dark-3x.png": "542075b33d77598d4c85e8102de6c607",
"splash/img/light-4x.png": "470bad190cf560a7db3a5d8c0be7fa0a",
"splash/img/dark-2x.png": "8c0e9a172a4d51d034ccac84fa3acee2",
"splash/img/dark-1x.png": "6489623546a3624864290ee83e474d4e",
"splash/img/light-1x.png": "6489623546a3624864290ee83e474d4e",
"splash/splash.js": "123c400b58bea74c1305ca3ac966748d",
"splash/style.css": "a4a200e545d9471dbf2d3d5602968d2a",
"index.html": "f9cc63986654269398cf96419a1935e0",
"/": "f9cc63986654269398cf96419a1935e0",
"main.dart.js": "ab03b0f216e8bd6524b37e869f6430cc",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"index_old.html": "e541b0e2d71871fba93483784730fd07",
"favicon.png": "a5a6b9846897139d56a48f19dab49ca8",
"icons/Icon-192.png": "0517811da4eacd146bf70cb3f063f2db",
"icons/Icon-maskable-192.png": "7248b162d634de659713757d38a9e7dd",
"icons/Icon-maskable-512.png": "763073bf5746b2282d91c3c51320405f",
"icons/Icon-512.png": "d90376a56b1e31e8312d5e46b0b2f810",
"manifest.json": "55e8f9cbd5f6faa3b43347a48d39b39b",
"assets/AssetManifest.json": "8a8dbd9995fe7225a0682c435c56885a",
"assets/NOTICES": "a3790647634c37cf876278c3a5950e48",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "efc6c90b58d765987f922c95c2031dd2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "01bb14ae3f14c73ee03eed84f480ded9",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "0db203e8632f03baae0184700f3bda48",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.smcbin": "c17d22047e8693abfcfa887595b668ea",
"assets/fonts/MaterialIcons-Regular.otf": "e96b5c75ba2b7acc3bb7209b2fc64a07",
"assets/assets/svg/pedido.svg": "e298933570cec564d824afddf300cf92",
"assets/assets/svg/shop.svg": "9a8e85025ca0f5d7fe782de9c544794c",
"assets/assets/svg/delivery.svg": "12fd34f395af1dbbc8cab01934324cb2",
"assets/assets/svg/cart.svg": "b288abf131e0eedccb986dddd301678a",
"assets/assets/svg/location-marker.svg": "ba91390b43e6c2515496303729ac1dc8",
"assets/assets/svg/favorite.svg": "14896cd474aea959a7ea417f8b8af7e9",
"assets/assets/svg/whatsapp.svg": "fa099be02a723ec8f105be290c2551e0",
"assets/assets/svg/delete_green.svg": "e8217d7b824a4e28c01bab3ef03460fa",
"assets/assets/svg/currency-dollar.svg": "325888b8a1fa9bc777ba508aebcc3065",
"assets/assets/svg/delete_2.svg": "95e96c1a61e060280a8e6074dfb66d69",
"assets/assets/platform-view.png": "a97f1600c47eee4800063bf6f7204232",
"assets/assets/logo-circ-2.png": "c31832dbcb1b61bbf9e9dae8a1b02a80",
"assets/assets/png/bag.png": "d135816b949c7970db8ec809352e1548",
"assets/assets/logo.png": "9e89b5542ef496e127ba99ef407897f9",
"assets/assets/logo-circ.png": "8b53603c251135ef371fce50ccf30399",
"assets/assets/logo.jpeg": "1ca266a749d2b91f12ccb43e66dca3ad",
"assets/assets/background-landing.webp": "ae5d1c7423f87768c3485f58fbd9554c",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
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
        // Claim client to enable caching on first launch
        self.clients.claim();
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
      // Claim client to enable caching on first launch
      self.clients.claim();
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
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
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
