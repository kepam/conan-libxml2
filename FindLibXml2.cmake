
find_path(LIBXML2_INCLUDE_DIR NAMES "libxml/xmlwriter.h" PATHS ${CONAN_INCLUDE_DIRS_LIBXML2})
MESSAGE("LOOK FOR ${CONAN_LIBS_LIBXML2} IN ${CONAN_LIB_DIRS_LIBXML2}")
find_library(LIBXML2_LIBRARY NAMES ${CONAN_LIBS_LIBXML2} PATHS ${CONAN_LIB_DIRS_LIBXML2})

MESSAGE("** LIBXML2 ALREADY FOUND BY CONAN!")
SET(LIBXML2_FOUND TRUE)
MESSAGE("** FOUND XML2:  ${LIBXML2_LIBRARY}")
MESSAGE("** FOUND XML2 INCLUDE:  ${LIBXML2_INCLUDE_DIR}")

set(LIBXML2_INCLUDE_DIRS ${LIBXML2_INCLUDE_DIR})
set(LIBXML2_LIBRARIES ${LIBXML2_LIBRARY})

mark_as_advanced(LIBXML2_LIBRARY LIBXML2_INCLUDE_DIR)
