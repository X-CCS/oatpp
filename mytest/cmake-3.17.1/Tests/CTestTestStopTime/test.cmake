cmake_minimum_required(VERSION 2.4)

# Settings:
set(CTEST_DASHBOARD_ROOT                "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CTestTest")
set(CTEST_SITE                          "HDP01.urunai.com")
set(CTEST_BUILD_NAME                    "CTestTest-Linux-g++-StopTime")

set(CTEST_SOURCE_DIRECTORY              "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CTestTestStopTime")
set(CTEST_BINARY_DIRECTORY              "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CTestTestStopTime")
set(CTEST_CVS_COMMAND                   "CVSCOMMAND-NOTFOUND")
set(CTEST_CMAKE_GENERATOR               "Unix Makefiles")
set(CTEST_CMAKE_GENERATOR_PLATFORM      "")
set(CTEST_CMAKE_GENERATOR_TOOLSET       "")
set(CTEST_BUILD_CONFIGURATION           "$ENV{CMAKE_CONFIG_TYPE}")
set(CTEST_COVERAGE_COMMAND              "/usr/bin/gcov")
set(CTEST_NOTES_FILES                   "${CTEST_SCRIPT_DIRECTORY}/${CTEST_SCRIPT_NAME}")

#CTEST_EMPTY_BINARY_DIRECTORY(${CTEST_BINARY_DIRECTORY})

include("${CTEST_BINARY_DIRECTORY}/GetDate.cmake")

CTEST_START(Experimental)
CTEST_CONFIGURE(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)
CTEST_BUILD(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res)

GET_DATE()
message("curr time: ${${GD_PREFIX}HOUR}:${${GD_PREFIX}MINUTE}:${${GD_PREFIX}SECOND}")
ADD_SECONDS(15)
message("stop time: ${new_hr}:${new_min}:${new_sec}")

CTEST_TEST(BUILD "${CTEST_BINARY_DIRECTORY}" RETURN_VALUE res STOP_TIME "${new_hr}:${new_min}:${new_sec}")

#CTEST_SUBMIT()
