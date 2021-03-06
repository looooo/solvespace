SET(CMAKE_SYSTEM_NAME Windows)

SET(TRIPLE x86_64-w64-mingw32)

SET(CMAKE_C_COMPILER ${TRIPLE}-gcc)
SET(CMAKE_CXX_COMPILER ${TRIPLE}-g++)
SET(CMAKE_RC_COMPILER ${TRIPLE}-windres)

SET(CMAKE_FIND_ROOT_PATH /usr/${TRIPLE})

IF(${BUILD_PYTHON})
    add_definitions(-DMS_WIN64)
    IF(${BUILD_PYTHON} EQUAL 3)
        LIST(APPEND CMAKE_FIND_ROOT_PATH  ${CMAKE_SOURCE_DIR}/extlib/win32/python3/x86_64)
    ELSE()
        LIST(APPEND CMAKE_FIND_ROOT_PATH  ${CMAKE_SOURCE_DIR}/extlib/win32/python27/x86_64)
        SET(PYTHON_VERSION_MAJOR 2)
        SET(PYTHON_VERSION_MINOR 7)
    ENDIF()
ENDIF()

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

