opencv-raw
==========

Raw Haskell bindings to OpenCV >= 2.0


Compilation / Installation
------------

Compiling this package might be a little tricky at the moment since I've only had the chance to test it on my machine
so far. First, you need to generate C wrappers for the version of OpenCV on your machine -- this repo holds the wrappers
for OpenCV 2.4.6 only. You can generate these wrappers (and the corresponding Haskell bindings) via:

    ./setup.sh <path to opencv headers>
      
e.g.

    ./setup.sh /usr/local/include
      
You want the include directory that contains the opencv2 directory at the top level.

If that goes off without a hitch, compilation *should* be as easy as:

    cabal build --with-gcc=<c++ compiler>
      
Cabal doesn't have a way of specifying that the library in use is a C++ library and not a C library, so it tries to use
gcc for everything. But of course, you can't compile this project without a C++ compiler handy. On my machine the
following is sufficient:

    cabal build --with-gcc=g++
      
The repl command doesn't work with this library and GHC <=7.6 due to a longstanding bug with ghci and dynamically
linked libraries.

Check [revelation](https://github.com/arjuncomar/revelation) for a library built on these raw bindings.
