#!/bin/bash
qmake travis_qmake_gcc_cpp11_boost_test_exe.pro
make debug
./travis_qmake_gcc_cpp11_boost_test_exe
if [ ! -f exe_debug.txt ]
then
  echo "ERROR: Cannot find exe_debug.txt"
  exit 1
fi

qmake travis_qmake_gcc_cpp11_boost_test_exe.pro
make release
./travis_qmake_gcc_cpp11_boost_test_exe
if [ ! -f exe_release.txt ]
then
  echo "ERROR: Cannot find exe_release.txt"
  exit 1
fi

qmake travis_qmake_gcc_cpp11_boost_test_test.pro
make debug
./travis_qmake_gcc_cpp11_boost_test_test
if [ ! -f test_debug.txt ]
then
  echo "ERROR: Cannot find test_debug.txt"
  exit 1
fi

qmake travis_qmake_gcc_cpp11_boost_test_test.pro
make release
./travis_qmake_gcc_cpp11_boost_test_test
if [ ! -f test_release.txt ]
then
  echo "ERROR: Cannot find test_release.txt"
  exit 1
fi
