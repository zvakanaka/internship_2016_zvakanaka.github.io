---
layout: post
title: Week 4 - Tuesday
---
[Locales](https://www.loc.gov/standards/iso639-2/php/code_list.php) are getting revised. The previous [ISO-639-1 standard codes](https://en.wikipedia.org/wiki/List_of_ISO_639-1) used 2-letter codes which are not descriptive enough to support the amount of existing languages.  

It would be nice if there was some sort of `npm` package that could look at an outdated or not yet supported locale-describing string and return an ISO standard string (using parameters to specify which format, but defaulting to the latest if no parameters are supplied). [Here is a whole mess](http://xml.coverpages.org/N071-PWD-639-lang-group-coding.pdf) of codes to worry about.

Perhaps even an API would be helpful, considering that there is so much [changing](https://en.wikipedia.org/wiki/ISO_639) going on.

It looks like [ISO-639-5](https://en.wikipedia.org/wiki/ISO_639-5) is the latest standard. It uses 3-letter codes. <strong>However</strong>, [ISO 639-1 Alpha-2](https://en.wikipedia.org/wiki/ISO_639-1) is used all across the web, <strong>but</strong> it is missing small languages, as it uses 2-letter codes.

If this was to be taken on <strong>as a senior project, it would have a few weak areas</strong>. First, several committees have submitted standards; There is no standard standard. If this package were to be actualized, it would currently have to favor a standard. Auto-detection would be ideal for input, but there still has to be one default output. Dates have had the same problem, especially in Java. Eventually, a simple date-format was released after a long struggle, and it still isn't very simple.

After all that research, [this choosing language tags article](https://www.w3.org/International/questions/qa-choosing-language-tags) seems to be what I was looking for. Also, I no longer have the desire to create that `npm` package after playing with this [tool](http://r12a.github.io/apps/subtags/). Not only did someone basically already do it, but I now see the even greater chaos involved.

Additional Resources:  
- [Simplified Locale Codes (Sbarnea)](https://sbarnea.com/articles/simplified-locale-codes/)
- [Accept-lang Locales (W3)](https://www.w3.org/International/questions/qa-accept-lang-locales)
- [Language Tags (W3)](https://www.w3.org/International/articles/language-tags/)
- [R12](http://r12a.github.io/)
- [Accept-lang Header (W3)](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.4)
