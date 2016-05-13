---
layout: post
title: Week 3 - Thursday
---
I realized I should get more familiar with [express](http://expressjs.com/en/starter/generator.html) and decided to port my [scripture journal](https://github.com/zvakanaka/scripture-journal) to Node.js. [Routes](http://expressjs.com/en/starter/generator.html) were where I got stuck, but here is what I did in `app.js`:  

```js
app.set('view engine', 'ejs');
var path = require('path');
app.use(express.static(path.join(__dirname, 'public')));```

Anything in the `public` directory is now public facing.

I also decided to use mongodb by way of the mongoose plugin. This was done in Heroku by following a [scotch.io](https://scotch.io/tutorials/use-ejs-to-template-your-node-application) guide.  

The port is not finished, but data is getting loaded onto a page.
