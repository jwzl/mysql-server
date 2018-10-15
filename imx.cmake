################################################
#######    General crosscompile toolchain file       
################################################
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR arm)
SET(CMAKE_CROSSCOMPILING 1)

SET(CMAKE_SYSROOT /opt/fsl-imx-x11/4.1.15-2.0.0/sysroots/cortexa9hf-neon-poky-linux-gnueabi)
SET(CMAKE_FIND_ROOT_PATH /home/Work/Linux/FSL/Projects/Rom3420/other/mysql/std /opt/fsl-imx-x11/4.1.15-2.0.0)

#LINK_DIRECTORIES(/opt/fsl-imx-x11/4.1.15-2.0.0/sysroots/cortexa9hf-neon-poky-linux-gnueabi)
SET(CMAKE_C_COMPILER arm-poky-linux-gnueabi-gcc)
SET(CMAKE_CXX_COMPILER arm-poky-linux-gnueabi-g++)
SET(CMAKE_C_COMPILER_ARG1 "-march=armv7-a -mfpu=neon  -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/opt/fsl-imx-x11/4.1.15-2.0.0/sysroots/cortexa9hf-neon-poky-linux-gnueabi")
SET(CMAKE_CXX_COMPILER_ARG1 "-march=armv7-a -mfpu=neon  -mfloat-abi=hard -mcpu=cortex-a9 --sysroot=/opt/fsl-imx-x11/4.1.15-2.0.0/sysroots/cortexa9hf-neon-poky-linux-gnueabi")
SET(CMAKE_EXE_LINKER_FLAGS  "${CMAKE_EXE_LINKER_FLAGS} --sysroot=/opt/fsl-imx-x11/4.1.15-2.0.0/sysroots/cortexa9hf-neon-poky-linux-gnueabi")
SET(CMAKE_MODULE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS}  --sysroot=/opt/fsl-imx-x11/4.1.15-2.0.0/sysroots/cortexa9hf-neon-poky-linux-gnueabi")

SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

################################################################
#######    The special configuration MACRO for mysql       
################################################################
SET(WITH_UNIT_TESTS OFF)  ## disable unit_test
SET(DEFAULT_CHARSET utf8)  ## the default charset
SET(DEFAULT_COLLATION utf8_general_ci)
SET(EXTRA_CHARSETS  all)  ## Which extra character sets to include: 
SET(STACK_DIRECTION 1)    ## Stack grows direction
## If LOAD DATA LOCAL is disabled, either in the server or the client, a client that attempts 
## to issue such a statement receives the following error message:   
## ERROR 1148: The used command is not allowed with this MySQL version
SET(ENABLED_LOCAL_INFILE 1)  
#SET(WITH_EMBEDDED_SERVER TRUE)
SET(HAVE_LLVM_LIBCPP OFF)

SET(HAVE_FALLOC_PUNCH_HOLE_AND_KEEP_SIZE 1)
SET(HAVE_IB_GCC_SYNC_SYNCHRONISE 1)
SET(HAVE_IB_GCC_ATOMIC_THREAD_FENCE 1)
SET(HAVE_IB_GCC_ATOMIC_COMPARE_EXCHANGE 1)
SET(HAVE_IB_ATOMIC_PTHREAD_T_GCC 1)
SET(HAVE_IB_LINUX_FUTEX 1)
SET(HAVE_GCC_ATOMICS_WITH_ARCH_FLAG 1)
SET(HAVE_FUNC_IN_CXX 1)
SET(HAVE___BUILTIN_FFS 1)

IF(CMAKE_COMPILER_IS_GNUCC)
  SET(HAVE_C_FLOATING_POINT_FUSED_MADD 1)
ENDIF()
IF(CMAKE_COMPILER_IS_GNUCXX)
  SET(HAVE_CXX_FLOATING_POINT_FUSED_MADD 1)
ENDIF()
IF(CMAKE_COMPILER_IS_GNUCC)
 SET(HAVE_C_SHIFT_OR_OPTIMIZATION_BUG 1)
ENDIF()

IF(CMAKE_COMPILER_IS_GNUCXX)
  SET(HAVE_CXX_SHIFT_OR_OPTIMIZATION_BUG 1)
ENDIF()
