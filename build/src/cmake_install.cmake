# Install script for directory: /home/changshu/URunResearchPrototypeCode/myRepo/oatpp/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/oatpp-1.0.0" TYPE STATIC_LIBRARY FILES "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/liboatpp.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/oatpp-1.0.0" TYPE STATIC_LIBRARY FILES "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/liboatpp-test.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/oatpp-1.0.0/oatpp" TYPE DIRECTORY FILES
    "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/cmake/../src/oatpp"
    "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/cmake/../src/oatpp-test"
    FILES_MATCHING REGEX "/[^/]*\\.hpp$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0/oatppTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0/oatppTargets.cmake"
         "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/CMakeFiles/Export/lib/cmake/oatpp-1.0.0/oatppTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0/oatppTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0/oatppTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0" TYPE FILE FILES "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/CMakeFiles/Export/lib/cmake/oatpp-1.0.0/oatppTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0" TYPE FILE FILES "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/CMakeFiles/Export/lib/cmake/oatpp-1.0.0/oatppTargets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/oatpp-1.0.0" TYPE FILE FILES
    "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/oatppConfig.cmake"
    "/home/changshu/URunResearchPrototypeCode/myRepo/oatpp/build/src/oatppConfigVersion.cmake"
    )
endif()

