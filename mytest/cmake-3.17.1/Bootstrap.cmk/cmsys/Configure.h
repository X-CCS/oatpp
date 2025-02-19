/*
 * Generated by /home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/bootstrap
 * Version:     $Revision$
 *
 * Source directory: /home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1
 * Binary directory: /home/changshu/URunResearchPrototypeCode/myRepo/mytest/cmake-3.17.1/Bootstrap.cmk
 *
 * C compiler:   gcc
 * C flags:        
 *
 * C++ compiler: g++
 * C++ flags:     -std=gnu++17  
 *
 * Make:         make
 *
 * Sources:
 *   cmAddCustomCommandCommand   cmAddCustomTargetCommand   cmAddDefinitionsCommand   cmAddDependenciesCommand   cmAddExecutableCommand   cmAddLibraryCommand   cmAddSubDirectoryCommand   cmAddTestCommand   cmArgumentParser   cmBinUtilsLinker   cmBinUtilsLinuxELFGetRuntimeDependenciesTool   cmBinUtilsLinuxELFLinker   cmBinUtilsLinuxELFObjdumpGetRuntimeDependenciesTool   cmBinUtilsMacOSMachOGetRuntimeDependenciesTool   cmBinUtilsMacOSMachOLinker   cmBinUtilsMacOSMachOOToolGetRuntimeDependenciesTool   cmBinUtilsWindowsPEGetRuntimeDependenciesTool   cmBinUtilsWindowsPEDumpbinGetRuntimeDependenciesTool   cmBinUtilsWindowsPELinker   cmBinUtilsWindowsPEObjdumpGetRuntimeDependenciesTool   cmBreakCommand   cmBuildCommand   cmCMakeMinimumRequired   cmCMakePolicyCommand   cmCPackPropertiesGenerator   cmCacheManager   cmCheckCustomOutputs   cmCommand   cmCommandArgumentParserHelper   cmCommands   cmCommonTargetGenerator   cmComputeComponentGraph   cmComputeLinkDepends   cmComputeLinkInformation   cmComputeTargetDepends   cmConditionEvaluator   cmConfigureFileCommand   cmContinueCommand   cmCoreTryCompile   cmCreateTestSourceList   cmCustomCommand   cmCustomCommandGenerator   cmCustomCommandLines   cmDefinePropertyCommand   cmDefinitions   cmDepends   cmDependsC   cmDocumentationFormatter   cmEnableLanguageCommand   cmEnableTestingCommand   cmExecProgramCommand   cmExecuteProcessCommand   cmExpandedCommandArgument   cmExportBuildFileGenerator   cmExportFileGenerator   cmExportInstallFileGenerator   cmExportSet   cmExportTryCompileFileGenerator   cmExprParserHelper   cmExternalMakefileProjectGenerator   cmFileCommand   cmFileCopier   cmFileInstaller   cmFileTime   cmFileTimeCache   cmFileTimes   cmFindBase   cmFindCommon   cmFindFileCommand   cmFindLibraryCommand   cmFindPackageCommand   cmFindPathCommand   cmFindProgramCommand   cmForEachCommand   cmFunctionBlocker   cmFunctionCommand   cmFSPermissions   cmGeneratedFileStream   cmGeneratorExpression   cmGeneratorExpressionContext   cmGeneratorExpressionDAGChecker   cmGeneratorExpressionEvaluationFile   cmGeneratorExpressionEvaluator   cmGeneratorExpressionLexer   cmGeneratorExpressionNode   cmGeneratorExpressionParser   cmGeneratorTarget   cmGetCMakePropertyCommand   cmGetDirectoryPropertyCommand   cmGetFilenameComponentCommand   cmGetPipes   cmGetPropertyCommand   cmGetSourceFilePropertyCommand   cmGetTargetPropertyCommand   cmGetTestPropertyCommand   cmGlobalCommonGenerator   cmGlobalGenerator   cmGlobalUnixMakefileGenerator3   cmGlobVerificationManager   cmHexFileConverter   cmIfCommand   cmIncludeCommand   cmIncludeGuardCommand   cmIncludeDirectoryCommand   cmIncludeRegularExpressionCommand   cmInstallCommand   cmInstallCommandArguments   cmInstallDirectoryGenerator   cmInstallExportGenerator   cmInstallFilesCommand   cmInstallFilesGenerator   cmInstallGenerator   cmInstallScriptGenerator   cmInstallSubdirectoryGenerator   cmInstallTargetGenerator   cmInstallTargetsCommand   cmInstalledFile   cmLDConfigLDConfigTool   cmLDConfigTool   cmLinkDirectoriesCommand   cmLinkItem   cmLinkItemGraphVisitor   cmLinkLineComputer   cmLinkLineDeviceComputer   cmListCommand   cmListFileCache   cmLocalCommonGenerator   cmLocalGenerator   cmLocalUnixMakefileGenerator3   cmMSVC60LinkLineComputer   cmMacroCommand   cmMakeDirectoryCommand   cmMakefile   cmMakefileExecutableTargetGenerator   cmMakefileLibraryTargetGenerator   cmMakefileTargetGenerator   cmMakefileUtilityTargetGenerator   cmMarkAsAdvancedCommand   cmMathCommand   cmMessageCommand   cmMessenger   cmNewLineStyle   cmOSXBundleGenerator   cmOptionCommand   cmOrderDirectories   cmOutputConverter   cmParseArgumentsCommand   cmPathLabel   cmPolicies   cmProcessOutput   cmProjectCommand   cmPropertyDefinition   cmPropertyDefinitionMap   cmPropertyMap   cmReturnCommand   cmRulePlaceholderExpander   cmRuntimeDependencyArchive   cmScriptGenerator   cmSearchPath   cmSeparateArgumentsCommand   cmSetCommand   cmSetDirectoryPropertiesCommand   cmSetPropertyCommand   cmSetSourceFilesPropertiesCommand   cmSetTargetPropertiesCommand   cmSetTestsPropertiesCommand   cmSiteNameCommand   cmSourceFile   cmSourceFileLocation   cmState   cmStateDirectory   cmStateSnapshot   cmString   cmStringAlgorithms   cmStringReplaceHelper   cmStringCommand   cmSubcommandTable   cmSubdirCommand   cmSystemTools   cmTarget   cmTargetCompileDefinitionsCommand   cmTargetCompileFeaturesCommand   cmTargetCompileOptionsCommand   cmTargetIncludeDirectoriesCommand   cmTargetLinkLibrariesCommand   cmTargetLinkOptionsCommand   cmTargetPrecompileHeadersCommand   cmTargetPropCommandBase   cmTargetPropertyComputer   cmTargetSourcesCommand   cmTest   cmTestGenerator   cmTimestamp   cmTryCompileCommand   cmTryRunCommand   cmUnsetCommand   cmUVHandlePtr   cmUVProcessChain   cmVersion   cmWhileCommand   cmWorkingDirectory   cmake    cmakemain   cmcmd   
 * STD Sources:
 *   memory   optional   shared_mutex   string_view   utility    string_view 
 * LexerParser Sources:
 *   cmCommandArgumentLexer   cmCommandArgumentParser   cmExprLexer   cmExprParser    cmListFileLexer 
 * kwSys Sources:
 *   Directory   EncodingCXX   FStream   Glob   RegularExpression   SystemTools     EncodingC     ProcessUNIX     String     System     Terminal
 * libuv Sources:
 *     src/strscpy.c     src/timer.c     src/uv-common.c     src/unix/cmake-bootstrap.c     src/unix/core.c     src/unix/fs.c     src/unix/loop.c     src/unix/loop-watcher.c     src/unix/no-fsevents.c     src/unix/pipe.c     src/unix/poll.c     src/unix/posix-hrtime.c     src/unix/posix-poll.c     src/unix/process.c     src/unix/signal.c     src/unix/stream.c     
 */

/* Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
   file Copyright.txt or https://cmake.org/licensing#kwsys for details.  */
#ifndef cmsys_Configure_h
#define cmsys_Configure_h

/* If we are building a kwsys .c or .cxx file, let it use the kwsys
   namespace.  When not building a kwsys source file these macros are
   temporarily defined inside the headers that use them.  */
#if defined(KWSYS_NAMESPACE)
#  define kwsys_ns(x) cmsys##x
#  define kwsysEXPORT cmsys_EXPORT
#endif

/* Disable some warnings inside kwsys source files.  */
#if defined(KWSYS_NAMESPACE)
#  if defined(__BORLANDC__)
#    pragma warn - 8027 /* function not inlined.  */
#  endif
#  if defined(__INTEL_COMPILER)
#    pragma warning(disable : 1572) /* floating-point equality test */
#  endif
#  if defined(__sgi) && !defined(__GNUC__)
#    pragma set woff 3970 /* pointer to int conversion */
#    pragma set woff 3968 /* 64 bit conversion */
#  endif
#endif

/* Whether kwsys namespace is "kwsys".  */
#define cmsys_NAME_IS_KWSYS 0

/* Setup the export macro.  */
#if 0
#  if defined(_WIN32) || defined(__CYGWIN__)
#    if defined(cmsys_EXPORTS)
#      define cmsys_EXPORT __declspec(dllexport)
#    else
#      define cmsys_EXPORT __declspec(dllimport)
#    endif
#  elif __GNUC__ >= 4
#    define cmsys_EXPORT __attribute__((visibility("default")))
#  else
#    define cmsys_EXPORT
#  endif
#else
#  define cmsys_EXPORT
#endif

/* Enable warnings that are off by default but are useful.  */
#if !defined(cmsys_NO_WARNING_ENABLE)
#  if defined(_MSC_VER)
#    pragma warning(default : 4263) /* no override, call convention differs   \
                                     */
#  endif
#endif

/* Disable warnings that are on by default but occur in valid code.  */
#if !defined(cmsys_NO_WARNING_DISABLE)
#  if defined(_MSC_VER)
#    pragma warning(disable : 4097) /* typedef is synonym for class */
#    pragma warning(disable : 4127) /* conditional expression is constant */
#    pragma warning(disable : 4244) /* possible loss in conversion */
#    pragma warning(disable : 4251) /* missing DLL-interface */
#    pragma warning(disable : 4305) /* truncation from type1 to type2 */
#    pragma warning(disable : 4309) /* truncation of constant value */
#    pragma warning(disable : 4514) /* unreferenced inline function */
#    pragma warning(disable : 4706) /* assignment in conditional expression   \
                                     */
#    pragma warning(disable : 4710) /* function not inlined */
#    pragma warning(disable : 4786) /* identifier truncated in debug info */
#  endif
#  if defined(__BORLANDC__) && !defined(__cplusplus)
/* Code has no effect; raised by winnt.h in C (not C++) when ignoring an
   unused parameter using "(param)" syntax (i.e. no cast to void).  */
#    pragma warn - 8019
#  endif
#endif

/* MSVC 6.0 in release mode will warn about code it produces with its
   optimizer.  Disable the warnings specifically for this
   configuration.  Real warnings will be revealed by a debug build or
   by other compilers.  */
#if !defined(cmsys_NO_WARNING_DISABLE_BOGUS)
#  if defined(_MSC_VER) && (_MSC_VER < 1300) && defined(NDEBUG)
#    pragma warning(disable : 4701) /* Variable may be used uninitialized. */
#    pragma warning(disable : 4702) /* Unreachable code.  */
#  endif
#endif

#endif
