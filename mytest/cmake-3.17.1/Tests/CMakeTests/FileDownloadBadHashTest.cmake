if(NOT "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests" MATCHES "^/")
  set(slash /)
endif()
set(url "file://${slash}/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests/FileDownloadInput.png")
set(dir "/home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Tests/CMakeTests/downloads")

file(DOWNLOAD
  ${url}
  ${dir}/file3.png
  TIMEOUT 2
  STATUS status
  EXPECTED_HASH SHA1=5555555555555555555555555555555555555555
  )
