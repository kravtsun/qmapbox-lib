# qmapbox-lib
## Outline
Building qmapbox library (with Qt framework) on Windows 10.

## Dependencies
* [mapbox/geometry.hpp](https://github.com/mapbox/geometry.hpp)
* [mapbox/rapidjson] (https://github.com/mapbox/rapidjson)
* boost

Dependencies' sources are already taken, so you don't need to take any extra action.
Except for boost, it can be downloaded (ver. 1.63 from [here](http://www.boost.org/users/history/version_1_63_0.html))

## Known problems
Currently, my solution suffers from weird error:
```
C:\Users\Andrey\Projects\qmapbox-lib\src\mbgl/storage/resource.hpp(76) : fatal error C1001: An internal error has occurred in the compiler.
(compiler file 'msc1.cpp', line 1325)
```

