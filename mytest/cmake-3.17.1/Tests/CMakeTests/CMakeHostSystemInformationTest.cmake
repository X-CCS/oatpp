set(BadArg1-RESULT 1)
set(BadArg1-STDERR "missing RESULT specification")
set(BadArg2-RESULT 1)
set(BadArg2-STDERR "missing QUERY specification")
set(BadArg3-RESULT 1)
set(BadArg3-STDERR "does not recognize <key> FOOBAR")
set(QueryList-RESULT 0)
set(QueryList-STDERR "\\[[0-9]+;[0-9]+\\]")

function(try_and_print key)
	cmake_host_system_information(RESULT RESULT QUERY ${key})
	message(STATUS "[${key}] [${RESULT}]")
endfunction()

message("CTEST_FULL_OUTPUT (Avoid ctest truncation of output)")

try_and_print(NUMBER_OF_LOGICAL_CORES)
try_and_print(NUMBER_OF_PHYSICAL_CORES)
try_and_print(HOSTNAME)
try_and_print(FQDN)
try_and_print(TOTAL_VIRTUAL_MEMORY)
try_and_print(AVAILABLE_VIRTUAL_MEMORY)
try_and_print(TOTAL_PHYSICAL_MEMORY)
try_and_print(AVAILABLE_PHYSICAL_MEMORY)
try_and_print(IS_64BIT)
try_and_print(HAS_FPU)
try_and_print(HAS_MMX)
try_and_print(HAS_MMX_PLUS)
try_and_print(HAS_SSE)
try_and_print(HAS_SSE2)
try_and_print(HAS_SSE_FP)
try_and_print(HAS_SSE_MMX)
try_and_print(HAS_AMD_3DNOW)
try_and_print(HAS_AMD_3DNOW_PLUS)
try_and_print(HAS_IA64)
try_and_print(HAS_SERIAL_NUMBER)
try_and_print(PROCESSOR_SERIAL_NUMBER)
try_and_print(PROCESSOR_NAME)
try_and_print(PROCESSOR_DESCRIPTION)
try_and_print(OS_NAME)
try_and_print(OS_RELEASE)
try_and_print(OS_VERSION)
try_and_print(OS_PLATFORM)

include("/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests/CheckCMakeTest.cmake")

check_cmake_test(CMakeHostSystemInformation
	BadArg1
	BadArg2
	BadArg3
	QueryList
)
