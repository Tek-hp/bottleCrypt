cmake_minimum_required(VERSION 3.18.4)

add_library( native_add

             # Sets the library as a shared library.
             SHARED
             src/cpp/bottle_crypt.cpp

             # Provides a relative path to your source file(s).
             ../ios/Classes/bottle_crypt.cpp )