# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ccy/project/mymuduo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ccy/project/mymuduo/build

# Include any dependencies generated for this target.
include CMakeFiles/mymuduo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/mymuduo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/mymuduo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mymuduo.dir/flags.make

CMakeFiles/mymuduo.dir/Acceptor.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Acceptor.o: ../Acceptor.cc
CMakeFiles/mymuduo.dir/Acceptor.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mymuduo.dir/Acceptor.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/Acceptor.o -MF CMakeFiles/mymuduo.dir/Acceptor.o.d -o CMakeFiles/mymuduo.dir/Acceptor.o -c /home/ccy/project/mymuduo/Acceptor.cc

CMakeFiles/mymuduo.dir/Acceptor.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Acceptor.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/Acceptor.cc > CMakeFiles/mymuduo.dir/Acceptor.i

CMakeFiles/mymuduo.dir/Acceptor.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Acceptor.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/Acceptor.cc -o CMakeFiles/mymuduo.dir/Acceptor.s

CMakeFiles/mymuduo.dir/CurrentThread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/CurrentThread.o: ../CurrentThread.cc
CMakeFiles/mymuduo.dir/CurrentThread.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mymuduo.dir/CurrentThread.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/CurrentThread.o -MF CMakeFiles/mymuduo.dir/CurrentThread.o.d -o CMakeFiles/mymuduo.dir/CurrentThread.o -c /home/ccy/project/mymuduo/CurrentThread.cc

CMakeFiles/mymuduo.dir/CurrentThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/CurrentThread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/CurrentThread.cc > CMakeFiles/mymuduo.dir/CurrentThread.i

CMakeFiles/mymuduo.dir/CurrentThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/CurrentThread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/CurrentThread.cc -o CMakeFiles/mymuduo.dir/CurrentThread.s

CMakeFiles/mymuduo.dir/DefaultPoller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/DefaultPoller.o: ../DefaultPoller.cc
CMakeFiles/mymuduo.dir/DefaultPoller.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mymuduo.dir/DefaultPoller.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/DefaultPoller.o -MF CMakeFiles/mymuduo.dir/DefaultPoller.o.d -o CMakeFiles/mymuduo.dir/DefaultPoller.o -c /home/ccy/project/mymuduo/DefaultPoller.cc

CMakeFiles/mymuduo.dir/DefaultPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/DefaultPoller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/DefaultPoller.cc > CMakeFiles/mymuduo.dir/DefaultPoller.i

CMakeFiles/mymuduo.dir/DefaultPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/DefaultPoller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/DefaultPoller.cc -o CMakeFiles/mymuduo.dir/DefaultPoller.s

CMakeFiles/mymuduo.dir/EPollPoller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EPollPoller.o: ../EPollPoller.cc
CMakeFiles/mymuduo.dir/EPollPoller.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/mymuduo.dir/EPollPoller.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/EPollPoller.o -MF CMakeFiles/mymuduo.dir/EPollPoller.o.d -o CMakeFiles/mymuduo.dir/EPollPoller.o -c /home/ccy/project/mymuduo/EPollPoller.cc

CMakeFiles/mymuduo.dir/EPollPoller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EPollPoller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/EPollPoller.cc > CMakeFiles/mymuduo.dir/EPollPoller.i

CMakeFiles/mymuduo.dir/EPollPoller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EPollPoller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/EPollPoller.cc -o CMakeFiles/mymuduo.dir/EPollPoller.s

CMakeFiles/mymuduo.dir/EventLoop.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoop.o: ../EventLoop.cc
CMakeFiles/mymuduo.dir/EventLoop.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/mymuduo.dir/EventLoop.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/EventLoop.o -MF CMakeFiles/mymuduo.dir/EventLoop.o.d -o CMakeFiles/mymuduo.dir/EventLoop.o -c /home/ccy/project/mymuduo/EventLoop.cc

CMakeFiles/mymuduo.dir/EventLoop.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoop.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/EventLoop.cc > CMakeFiles/mymuduo.dir/EventLoop.i

CMakeFiles/mymuduo.dir/EventLoop.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoop.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/EventLoop.cc -o CMakeFiles/mymuduo.dir/EventLoop.s

CMakeFiles/mymuduo.dir/EventLoopThread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoopThread.o: ../EventLoopThread.cc
CMakeFiles/mymuduo.dir/EventLoopThread.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/mymuduo.dir/EventLoopThread.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/EventLoopThread.o -MF CMakeFiles/mymuduo.dir/EventLoopThread.o.d -o CMakeFiles/mymuduo.dir/EventLoopThread.o -c /home/ccy/project/mymuduo/EventLoopThread.cc

CMakeFiles/mymuduo.dir/EventLoopThread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoopThread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/EventLoopThread.cc > CMakeFiles/mymuduo.dir/EventLoopThread.i

CMakeFiles/mymuduo.dir/EventLoopThread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoopThread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/EventLoopThread.cc -o CMakeFiles/mymuduo.dir/EventLoopThread.s

CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: ../EventLoopThreadPool.cc
CMakeFiles/mymuduo.dir/EventLoopThreadPool.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/mymuduo.dir/EventLoopThreadPool.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/EventLoopThreadPool.o -MF CMakeFiles/mymuduo.dir/EventLoopThreadPool.o.d -o CMakeFiles/mymuduo.dir/EventLoopThreadPool.o -c /home/ccy/project/mymuduo/EventLoopThreadPool.cc

CMakeFiles/mymuduo.dir/EventLoopThreadPool.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/EventLoopThreadPool.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/EventLoopThreadPool.cc > CMakeFiles/mymuduo.dir/EventLoopThreadPool.i

CMakeFiles/mymuduo.dir/EventLoopThreadPool.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/EventLoopThreadPool.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/EventLoopThreadPool.cc -o CMakeFiles/mymuduo.dir/EventLoopThreadPool.s

CMakeFiles/mymuduo.dir/InetAddress.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/InetAddress.o: ../InetAddress.cc
CMakeFiles/mymuduo.dir/InetAddress.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/mymuduo.dir/InetAddress.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/InetAddress.o -MF CMakeFiles/mymuduo.dir/InetAddress.o.d -o CMakeFiles/mymuduo.dir/InetAddress.o -c /home/ccy/project/mymuduo/InetAddress.cc

CMakeFiles/mymuduo.dir/InetAddress.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/InetAddress.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/InetAddress.cc > CMakeFiles/mymuduo.dir/InetAddress.i

CMakeFiles/mymuduo.dir/InetAddress.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/InetAddress.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/InetAddress.cc -o CMakeFiles/mymuduo.dir/InetAddress.s

CMakeFiles/mymuduo.dir/Logger.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Logger.o: ../Logger.cc
CMakeFiles/mymuduo.dir/Logger.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/mymuduo.dir/Logger.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/Logger.o -MF CMakeFiles/mymuduo.dir/Logger.o.d -o CMakeFiles/mymuduo.dir/Logger.o -c /home/ccy/project/mymuduo/Logger.cc

CMakeFiles/mymuduo.dir/Logger.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Logger.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/Logger.cc > CMakeFiles/mymuduo.dir/Logger.i

CMakeFiles/mymuduo.dir/Logger.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Logger.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/Logger.cc -o CMakeFiles/mymuduo.dir/Logger.s

CMakeFiles/mymuduo.dir/Poller.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Poller.o: ../Poller.cc
CMakeFiles/mymuduo.dir/Poller.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/mymuduo.dir/Poller.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/Poller.o -MF CMakeFiles/mymuduo.dir/Poller.o.d -o CMakeFiles/mymuduo.dir/Poller.o -c /home/ccy/project/mymuduo/Poller.cc

CMakeFiles/mymuduo.dir/Poller.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Poller.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/Poller.cc > CMakeFiles/mymuduo.dir/Poller.i

CMakeFiles/mymuduo.dir/Poller.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Poller.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/Poller.cc -o CMakeFiles/mymuduo.dir/Poller.s

CMakeFiles/mymuduo.dir/Socket.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Socket.o: ../Socket.cc
CMakeFiles/mymuduo.dir/Socket.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/mymuduo.dir/Socket.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/Socket.o -MF CMakeFiles/mymuduo.dir/Socket.o.d -o CMakeFiles/mymuduo.dir/Socket.o -c /home/ccy/project/mymuduo/Socket.cc

CMakeFiles/mymuduo.dir/Socket.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Socket.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/Socket.cc > CMakeFiles/mymuduo.dir/Socket.i

CMakeFiles/mymuduo.dir/Socket.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Socket.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/Socket.cc -o CMakeFiles/mymuduo.dir/Socket.s

CMakeFiles/mymuduo.dir/TcpServer.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/TcpServer.o: ../TcpServer.cc
CMakeFiles/mymuduo.dir/TcpServer.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/mymuduo.dir/TcpServer.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/TcpServer.o -MF CMakeFiles/mymuduo.dir/TcpServer.o.d -o CMakeFiles/mymuduo.dir/TcpServer.o -c /home/ccy/project/mymuduo/TcpServer.cc

CMakeFiles/mymuduo.dir/TcpServer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/TcpServer.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/TcpServer.cc > CMakeFiles/mymuduo.dir/TcpServer.i

CMakeFiles/mymuduo.dir/TcpServer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/TcpServer.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/TcpServer.cc -o CMakeFiles/mymuduo.dir/TcpServer.s

CMakeFiles/mymuduo.dir/Thread.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Thread.o: ../Thread.cc
CMakeFiles/mymuduo.dir/Thread.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/mymuduo.dir/Thread.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/Thread.o -MF CMakeFiles/mymuduo.dir/Thread.o.d -o CMakeFiles/mymuduo.dir/Thread.o -c /home/ccy/project/mymuduo/Thread.cc

CMakeFiles/mymuduo.dir/Thread.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Thread.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/Thread.cc > CMakeFiles/mymuduo.dir/Thread.i

CMakeFiles/mymuduo.dir/Thread.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Thread.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/Thread.cc -o CMakeFiles/mymuduo.dir/Thread.s

CMakeFiles/mymuduo.dir/Timestamp.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/Timestamp.o: ../Timestamp.cc
CMakeFiles/mymuduo.dir/Timestamp.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/mymuduo.dir/Timestamp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/Timestamp.o -MF CMakeFiles/mymuduo.dir/Timestamp.o.d -o CMakeFiles/mymuduo.dir/Timestamp.o -c /home/ccy/project/mymuduo/Timestamp.cc

CMakeFiles/mymuduo.dir/Timestamp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/Timestamp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/Timestamp.cc > CMakeFiles/mymuduo.dir/Timestamp.i

CMakeFiles/mymuduo.dir/Timestamp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/Timestamp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/Timestamp.cc -o CMakeFiles/mymuduo.dir/Timestamp.s

CMakeFiles/mymuduo.dir/channel.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/channel.o: ../channel.cc
CMakeFiles/mymuduo.dir/channel.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/mymuduo.dir/channel.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/channel.o -MF CMakeFiles/mymuduo.dir/channel.o.d -o CMakeFiles/mymuduo.dir/channel.o -c /home/ccy/project/mymuduo/channel.cc

CMakeFiles/mymuduo.dir/channel.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/channel.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/channel.cc > CMakeFiles/mymuduo.dir/channel.i

CMakeFiles/mymuduo.dir/channel.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/channel.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/channel.cc -o CMakeFiles/mymuduo.dir/channel.s

CMakeFiles/mymuduo.dir/test.o: CMakeFiles/mymuduo.dir/flags.make
CMakeFiles/mymuduo.dir/test.o: ../test.cc
CMakeFiles/mymuduo.dir/test.o: CMakeFiles/mymuduo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/mymuduo.dir/test.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/mymuduo.dir/test.o -MF CMakeFiles/mymuduo.dir/test.o.d -o CMakeFiles/mymuduo.dir/test.o -c /home/ccy/project/mymuduo/test.cc

CMakeFiles/mymuduo.dir/test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mymuduo.dir/test.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ccy/project/mymuduo/test.cc > CMakeFiles/mymuduo.dir/test.i

CMakeFiles/mymuduo.dir/test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mymuduo.dir/test.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ccy/project/mymuduo/test.cc -o CMakeFiles/mymuduo.dir/test.s

# Object files for target mymuduo
mymuduo_OBJECTS = \
"CMakeFiles/mymuduo.dir/Acceptor.o" \
"CMakeFiles/mymuduo.dir/CurrentThread.o" \
"CMakeFiles/mymuduo.dir/DefaultPoller.o" \
"CMakeFiles/mymuduo.dir/EPollPoller.o" \
"CMakeFiles/mymuduo.dir/EventLoop.o" \
"CMakeFiles/mymuduo.dir/EventLoopThread.o" \
"CMakeFiles/mymuduo.dir/EventLoopThreadPool.o" \
"CMakeFiles/mymuduo.dir/InetAddress.o" \
"CMakeFiles/mymuduo.dir/Logger.o" \
"CMakeFiles/mymuduo.dir/Poller.o" \
"CMakeFiles/mymuduo.dir/Socket.o" \
"CMakeFiles/mymuduo.dir/TcpServer.o" \
"CMakeFiles/mymuduo.dir/Thread.o" \
"CMakeFiles/mymuduo.dir/Timestamp.o" \
"CMakeFiles/mymuduo.dir/channel.o" \
"CMakeFiles/mymuduo.dir/test.o"

# External object files for target mymuduo
mymuduo_EXTERNAL_OBJECTS =

../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Acceptor.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/CurrentThread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/DefaultPoller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EPollPoller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoop.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoopThread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/EventLoopThreadPool.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/InetAddress.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Logger.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Poller.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Socket.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/TcpServer.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Thread.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/Timestamp.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/channel.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/test.o
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/build.make
../lib/libmymuduo.so: CMakeFiles/mymuduo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ccy/project/mymuduo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX shared library ../lib/libmymuduo.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mymuduo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mymuduo.dir/build: ../lib/libmymuduo.so
.PHONY : CMakeFiles/mymuduo.dir/build

CMakeFiles/mymuduo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mymuduo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mymuduo.dir/clean

CMakeFiles/mymuduo.dir/depend:
	cd /home/ccy/project/mymuduo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ccy/project/mymuduo /home/ccy/project/mymuduo /home/ccy/project/mymuduo/build /home/ccy/project/mymuduo/build /home/ccy/project/mymuduo/build/CMakeFiles/mymuduo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mymuduo.dir/depend

