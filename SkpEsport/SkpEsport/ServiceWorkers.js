

    var cacheName = "cacheName";
    
    // init cache of resources
    self.addEventListener('install', function (event) {
        event.waitUntil(
            caches.open(cacheName).then(function (cache) {
                return cache.addAll(
                    [
                        // paths for cached items
                    ]
                );
            })
        );
    });

    // Cache new information
    self.addEventListener('fetch', function (event) {
        event.respondWith(
            caches.open(cacheName).then(function (cache) {
                return cache.match(event.request).then(function (response) {
                    return response || fetch(event.request).then(function (response) {
                        cache.put(event.request, response.clone());
                        return response;
                    });
                });
            })
        );
    });

    // fallback if user is offline
    self.addEventListener('fetch', function (event) {
        event.respondWith(fetch(event.request));
    });