
Stack Exchange exposes [HTTP-based API](https://api.stackexchange.com/).
Questions are asked on [Stack Apps](https://stackapps.com/). Apps using API are promoted [here](https://stackapps.com/questions/7/how-to-list-your-application-library-wrapper-script-here).

Applications should be registered on [Stack Apps](https://stackapps.com/apps/oauth/register) to get a request key. Request keys grant more requests per day, and are necessary for using `access_tokens` created via authentication.

All API responses are JSON, we do support JSONP with the `callback` query parameter. Every response in the API is returned in a common `wrapper` object, for easier and more consistent parsing.

Additionally, all API responses are compressed. The `Content-Encoding` header is always set, but some proxies will strip this out. The proper way to decode API responses can be found here.
