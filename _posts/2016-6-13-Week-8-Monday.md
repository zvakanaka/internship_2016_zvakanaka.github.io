---
layout: post
title: Week 8 - Monday
---
An example of fetch (the new Ajax):
```javascript
var array = [
  {value: "ya"},
  {value: "ye"},
  {value: "yi"},
  {value: "yo"},
  {value: "yu"}
];

var getValue = function(obj) {
  return obj.value;
}

console.log(array.map(getValue).forEach(num => { console.log(num)} ));
```

```js
var urls = ['https://httpbin.org/get', 'https://httpbin.org/xml'];

var promises = urls.map(url => fetch(url).then(res => res.text()));
Promise.all(promises)
  .then(function(data) {
    //do the stuff with the data
  });
```
