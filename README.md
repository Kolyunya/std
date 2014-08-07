================================================================================
    ABOUT THE LIBRARY
================================================================================

This library is an extension of the C++ standard library which contains general
purpose, commonly used tools.


================================================================================
    LIBRARY STRUCTURE
================================================================================

Library root directory contains "include", "src" and "sytem" sub-directories.
"Include" directory contains library header files which are supposed to be
included in projects. "Src" directory contains project sources with tests and
building scripts. "System" directory contains system files used mostly for
library building.

Each library unit is contained in a separate directory. Each unit directory
contains "build", "src" and "tests" sub-directories. "Build" directory contains
GYP script which is used for building the unit. "Src" directory contains unit
source files. "Tests" directory contains unit tests.


================================================================================
    HOW TO USE LIBRARY
================================================================================

1. Prerequisites.
  1. C++11 compatible compiler.

2. Using the library.
  1. Add path to library "include" directory to your project.
  2. Include required unit headers from library "include" directory into your
     project.
  3. Compile your project.


================================================================================
    HOW TO TEST LIBRARY
================================================================================

1. Prerequisites.
  1. C++11 compatible compiler supported by GYP.
  3. GYP build system.

2. Testing library.
  1. Set "XSTD_HOME" environment variable to the location of this library. Home
     directory is one with "src", "include", "system" and others sub-directories
  2. Set "GYP_GENERATORS" environment variable to value(s) corresponding you
     compiler(s). Options should be separated by a comma. Available options are
     "make", "msvs", "ninja", "scons", "eclipse" and others.
  3. Execute library GYP script by calling
     "gyp --depth=. %LIBRARY_ROOT%/build/generator.gyp" command. Selected build
     scripts would be produced in the "build" directory.
  4. Run build script(s) from "%LIBRARY_ROOT%/build/" directory.
  5. Compile test program using selected environment.
  6. Run test program.


