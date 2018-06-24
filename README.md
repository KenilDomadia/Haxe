# Haxe

`Haxelib` - A place to share your code with others in the Haxe ecosystem. Haxelib is the package manager for the Haxe Toolkit, like npm, for javascript code. Along with the compiler this also installs tools like haxelib, a pretty powerfull lib manager for haxe.
> To install haxe & haxelib : 
1. https://haxe.org/download/

`Lime` - Lime or Light Media Engine is the glue which helps make our Haxe code to run in various native platforms. Lime exposes native functionality like OpenGL, Audio, Input, Windowing etc (From the lime project readme https://github.com/openfl/lime). Lime is the layer closest to all targeted native platforms.
 > To install lime :
 1. `haxelib install lime`
 2. `haxelib run lime setup`

 `OpenFL` - OpenFL is an open source implementation of the familiar Flash API. OpenFL is a productive 2D library built on Lime thus providing a true native experience. OpenFL targets include native cross-compiled C++ for desktop and mobile targets, as well as web targets such as Flash, HTML5 and experimental support for Emscripten. OpenFL is written primarily in the Haxe language as well as platform specific code integrating with SDKs and native APIs.
 > To install OpenFL : 
 1. `haxelib install openfl`
 2. `haxelib run openfl setup`

 `HaxeFlixel` - HaxeFlixel is an open source 2D game engine written for use with the Open Flash Library and Haxe. It enables multi-platform development for native targets on mobile and desktop as well as Flash and HTML5 on web platforms.
 > To install HaxeFlixel :
 1. `haxelib install flixel`
 2. `haxelib run lime setup flixel`
 

 Instructions for building and running projects :

 * haxeflixel
    1. `lime test html5` -- Builds the project, generates `export` folder and runs local server
    
 * heapsIO
    1. `haxe build.hxml` -- Generates bin folder
    2. `python -m SimpleHTTPServer` -- Runs local server and opens index.html existing in the directory

 * openfl_haxelib
    1. `openfl test html5` -- Generates `Export` folder and start local server.

 * openfl_npm
    1. `yarn` -- installs
    2. `npm run build` -- builds
    3. `npm start` -- runs local server