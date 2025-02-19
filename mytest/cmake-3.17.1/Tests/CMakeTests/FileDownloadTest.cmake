# We do not contact any real URLs, but do try a bogus one.
# Remove any proxy configuration that may change behavior.
unset(ENV{http_proxy})
unset(ENV{https_proxy})

set(timeout 4)

if(NOT "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests" MATCHES "^/")
  set(slash /)
endif()
set(url "file://${slash}/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests/downloads")

# Beware Windows asynchronous file/directory removal, rename and then
# remove the renamed dir so we can be certain the dir isn't there when
# we get to the file() commands below
if(EXISTS "${dir}")
  file(RENAME ${dir} "${dir}_beingRemoved")
  file(REMOVE_RECURSE "${dir}_beingRemoved")
endif()

function(__reportIfWrongStatus statusPair expectedStatusCode)
  list(GET statusPair 0 statusCode)
  if(NOT statusCode EQUAL expectedStatusCode)
    message(SEND_ERROR
            "Unexpected status: ${statusCode}, expected: ${expectedStatusCode}")
  endif()
endfunction()

message(STATUS "FileDownload:1")
file(DOWNLOAD
  ${url}
  ${dir}/file1.png
  TIMEOUT ${timeout}
  STATUS status
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:2")
file(DOWNLOAD
  ${url}
  ${dir}/file2.png
  TIMEOUT ${timeout}
  STATUS status
  SHOW_PROGRESS
  )
__reportIfWrongStatus("${status}" 0)

# Two calls in a row, exactly the same arguments.
# Since downloaded file should exist already for 2nd call,
# the 2nd call will short-circuit and return early...
#
if(EXISTS ${dir}/file3.png)
  file(REMOVE ${dir}/file3.png)
endif()

message(STATUS "FileDownload:3")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_MD5 dbd330d52f4dbd60115d4191904ded92
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:4")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_HASH SHA1=67eee17f79d9ac557284fc0b8ad19f25723fb578
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:5")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_HASH SHA224=ba283726bbb602776818b463943189afd91836cb7ee5dd6e2c7b5ae4
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:6")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_HASH SHA256=cf3334b1275071e1da6e8c396ccb72cf1b2388d8c937526f3af26230affb9423
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:7")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_HASH SHA384=43a5d13978d97c660db44481aee0604cb4ff6ca0775cd5c2cd68cd8000e107e507c4caf6c228941231041e282ffb8950
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:8")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_HASH SHA512=6984e0909a1018030ccaa418e3be1654223cdccff0fe6adc745f9aea7e377f178be53b9fc7d54a6f81c2b62ef9ddcd38ba1978fedf4c5e7139baaf355eefad5b
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:9")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_HASH MD5=dbd330d52f4dbd60115d4191904ded92
  )
__reportIfWrongStatus("${status}" 0)

message(STATUS "FileDownload:10")
file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT ${timeout}
  STATUS status
  EXPECTED_MD5 dbd330d52f4dbd60115d4191904ded92
  )
__reportIfWrongStatus("${status}" 0)
# Print status because we check its message too
message(STATUS "${status}")

message(STATUS "FileDownload:11")
file(DOWNLOAD
  badhostname.invalid
  ${dir}/file11.png
  TIMEOUT 30
  STATUS status
  )
message(STATUS "${status}")
__reportIfWrongStatus("${status}" 6) # 6 corresponds to an unresolvable host name

message(STATUS "FileDownload:12")
set(absFile "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests/file12.png")
if(EXISTS "${absFile}")
  file(RENAME ${absFile} "${absFile}_beingRemoved")
  file(REMOVE "${absFile}_beingRemoved")
endif()
file(DOWNLOAD
  ${url}
  file12.png
  TIMEOUT ${timeout}
  EXPECTED_MD5 dbd330d52f4dbd60115d4191904ded92
  STATUS status
  )
__reportIfWrongStatus("${status}" 0)
if(NOT EXISTS file12.png)
  message(SEND_ERROR "file12.png not downloaded: ${status}")
endif()
