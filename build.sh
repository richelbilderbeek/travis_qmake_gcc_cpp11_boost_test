#!/bin/bash
qmake travis_qmake_gcc_cpp11_boost_test_exe.pro
make debug
./travis_qmake_gcc_cpp11_boost_test_exe
if [ ! -f exe_debug.txt ]
then
  exit 1
fi

./clean.sh
qmake travis_qmake_gcc_cpp11_boost_test_exe.pro
make release
./travis_qmake_gcc_cpp11_boost_test_exe
if [ ! -f exe_release.txt ]
then
  exit 1
fi

./clean.sh
qmake travis_qmake_gcc_cpp11_boost_test_test.pro
make debug
./travis_qmake_gcc_cpp11_boost_test_test
if [ ! -f test_debug.txt ]
then
  exit 1
fi

./clean.sh
qmake travis_qmake_gcc_cpp11_boost_test_test.pro
make release
./travis_qmake_gcc_cpp11_boost_test_test
if [ ! -f test_release.txt ]
then
  exit 1
fi

exit 0
