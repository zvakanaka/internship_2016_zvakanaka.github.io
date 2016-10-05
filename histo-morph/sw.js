this.addEventListener('install', function(event) {
  event.waitUntil(
    caches.open('v1').then(function(cache) {
      return cache.addAll([
        '.',
        'components/bootstrap/dist/js/bootstrap.min.js',
        'components/jquery/dist/jquery.min.js',
        'components/bootstrap/dist/css/bootstrap.min.css',
        'index.html',
        'app.js',
        'index.js',
        'main.js',
        'img/milkyway.jpg',
        'lib/hueConvert.js'
      ]);
    })
  );
});

this.addEventListener('fetch', function(event) {
  var response;
  event.respondWith(caches.match(event.request).catch(function() {
    return fetch(event.request);
  }).then(function(r) {
    response = r;
    caches.open('v1').then(function(cache) {
      cache.put(event.request, response);
    });
    return response.clone();
  }).catch(function() {
    return caches.match('img/milkyway.jpg');
  }));
});
