# borland specific configure file
# NOTE: all entries in here MUST be CACHE values, regular SET will NOT WORK!

FIND_PATH(BCB_BIN_PATH bcc32.exe
  "C:/Program Files/Borland/CBuilder5/Bin"
  "C:/Borland/Bcc55/Bin"
  "/Borland/Bcc55/Bin"
  [HKEY_LOCAL_MACHINE/SOFTWARE/Borland/C++Builder/5.0/RootDir]/Bin
)

SET (CMAKE_BUILD_TOOL borlandmake CACHE INTERNAL 
     "What is the target build tool cmake is generating for.")

SET (CMAKE_SYSTEM "Win32" CACHE INTERNAL 
     "What system is this.  Result of uname.")

SET (BORLAND 1 CACHE INTERNAL "This is the borland generator")

SET (CMAKE_C_COMPILER ${BCB_BIN_PATH}/bcc32  CACHE FILEPATH
     "Name of C compiler used.")

SET (CMAKE_C_FLAGS "-w- -whid -waus -tWM" CACHE STRING
     "Flags for C compiler.")

SET (CMAKE_BUILD_TYPE Debug CACHE STRING 
     "Choose the type of build, options are: Debug Release RelWithDebInfo MinSizeRel.")

SET (CMAKE_CXX_COMPILER  "${BCB_BIN_PATH}/bcc32" CACHE FILEPATH
     "Name of C++ compiler used.")

SET (CMAKE_CXX_FLAGS_RELEASE "-O2" CACHE STRING
     "Flags used by the compiler during release builds.")

SET (CMAKE_CXX_FLAGS_RELWITHDEBINFO "-Od" CACHE STRING
     "Flags used by the compiler during Release with Debug Info builds.")

SET (CMAKE_CXX_FLAGS_MINSIZEREL "-O1" CACHE STRING
     "Flags used by the compiler during release minsize builds.")

SET (CMAKE_CXX_FLAGS_DEBUG "-Od -v" CACHE STRING
     "Flags used by the compiler during debug builds.")

SET (CMAKE_LINKER_FLAGS "-tWM" CACHE STRING
     "Flags used by the linker.")

SET (CMAKE_LINKER_FLAGS_DEBUG "-v" CACHE STRING
     "Flags used by the linker during debug builds.")

SET (CMAKE_LINKER_FLAGS_MINSIZEREL "" CACHE STRING
     "Flags used by the linker during release minsize builds.")

SET (CMAKE_LINKER_FLAGS_RELEASE "" CACHE STRING
     "Flags used by the linker during release builds.")

SET (CMAKE_LINKER_FLAGS_RELWITHDEBINFO "-v" CACHE STRING
     "Flags used by the linker during Release with Debug Info builds.")

SET (CMAKE_CXX_FLAGS "-w- -whid -waus -wpar -tWM" CACHE STRING
     "Flags used by the compiler during all build types, /GX /GR are for exceptions and rtti in VC++, /Zm1000 increases the compiler's memory allocation to support ANSI C++/stdlib.")

SET (CMAKE_USE_WIN32_THREADS 1 CACHE BOOL 
     "Use the win32 thread library.")

SET (CMAKE_STANDARD_WINDOWS_LIBRARIES "import32.lib" CACHE STRING 
     "Libraries linked by defalut with all applications.")

SET (CMAKE_SHLIB_SUFFIX ".dll" CACHE STRING 
     "Shared library suffix.")

SET (CMAKE_MODULE_SUFFIX ".dll" CACHE STRING 
     "Module library suffix.")
SET (CMAKE_OBJECT_FILE_SUFFIX ".obj" CACHE STRING 
     "Object file suffix.")

SET (CMAKE_EXECUTABLE_SUFFIX ".exe" CACHE STRING 
     "Executable suffix.")

SET (CMAKE_STATICLIB_SUFFIX ".lib" CACHE STRING 
     "Static library suffix.")

SET (CMAKE_SHLIB_SUFFIX ".dll" CACHE STRING 
     "Shared library suffix.")

SET (CMAKE_MODULE_SUFFIX ".dll" CACHE STRING 
     "Module library suffix.")

FIND_PROGRAM(CMAKE_MAKE_PROGRAM make ${BCB_BIN_PATH})

# We will hardcode them for now. Make sure to fix that in the future
SET (CMAKE_SIZEOF_INT       4   CACHE INTERNAL "Size of int data type")
SET (CMAKE_SIZEOF_LONG      4   CACHE INTERNAL "Size of long data type")
SET (CMAKE_SIZEOF_VOID_P    4   CACHE INTERNAL "Size of void* data type")
SET (CMAKE_SIZEOF_CHAR      1   CACHE INTERNAL "Size of char data type")
SET (CMAKE_SIZEOF_SHORT     2   CACHE INTERNAL "Size of short data type")
SET (CMAKE_SIZEOF_FLOAT     4   CACHE INTERNAL "Size of float data type")
SET (CMAKE_SIZEOF_DOUBLE    8   CACHE INTERNAL "Size of double data type")

MARK_AS_ADVANCED(
CMAKE_CXX_FLAGS_RELEASE
CMAKE_CXX_FLAGS_RELWITHDEBINFO
CMAKE_CXX_FLAGS_MINSIZEREL
CMAKE_CXX_FLAGS_DEBUG
CMAKE_LINKER_FLAGS
CMAKE_LINKER_FLAGS_MINSIZEREL
CMAKE_LINKER_FLAGS_RELEASE
CMAKE_LINKER_FLAGS_RELWITHDEBINFO
CMAKE_USE_WIN32_THREADS
CMAKE_STANDARD_WINDOWS_LIBRARIES
CMAKE_SHLIB_SUFFIX
CMAKE_MODULE_SUFFIX
CMAKE_OBJECT_FILE_SUFFIX
CMAKE_EXECUTABLE_SUFFIX
CMAKE_STATICLIB_SUFFIX
CMAKE_SHLIB_SUFFIX
CMAKE_MODULE_SUFFIX
CMAKE_LINKER_FLAGS
CMAKE_LINKER_FLAGS_DEBUG
CMAKE_LINKER_FLAGS_MINSIZEREL
CMAKE_LINKER_FLAGS_RELEASE
CMAKE_LINKER_FLAGS_RELWITHDEBINFO
)

MARK_AS_ADVANCED( CLEAR
TCL_LIBRARY
TK_LIBRARY)
