CONFIG += console debug_and_release
CONFIG -= app_bundle
QT -= core gui
TEMPLATE = app

# Shared files
HEADERS += my_functions.h
SOURCES += my_functions.cpp

# Unique files
SOURCES += main_test.cpp my_functions_test.cpp

# C++11
CONFIG += c++11
QMAKE_CXXFLAGS += -std=c++11

# Boost.Test does not go well with -Weffc++
QMAKE_CXXFLAGS += -Wall -Wextra -Werror -std=c++11

# Debug and release build
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

# Boost.Test
win32 {
  INCLUDEPATH += C:/boost_1_62_0
  #LIBS += -LC:/boost_1_62_0/stage/lib
  #LIBS += -LC:/boost_1_62_0
  #LIBS += -LC:/boost_1_62_0/bin.v2
  #LIBS += -LC:/boost_1_62_0/bin.v2/libs
  #LIBS += -LC:/boost_1_62_0/bin.v2/libs/test
  #LIBS += -LC:/boost_1_62_0/bin.v2/libs/test/build/gcc-mingw-4.9.3/debug/link-static/threading-multi
  #LIBS += -lboost_unit_test_framework
  #LIBS += -LC:/boost_1_62_0/stage/lib/
  #LIBS += -lboost_unit_test_framework-mgw49-mt-d-1_62.a
  #LIBS += "C:/boost_1_62_0/stage/lib/libboost_unit_test_framework-mgw49-mt-d-1_62.a"
  LIBS += "C:/boost_1_62_0/stage/lib/libboost_unit_test_framework-mgw49-mt-1_62.a"
  #LIBS += -LC:/boost_1_62_0/stage/lib/*.a
  #LIBS += -LC:/boost_1_62_0/stage/lib/libboost_unit_test_framework-mgw49-mt-1_62.a
  #LIBS += -LC:/boost_1_62_0/bin.v2/libs/test/build/gcc-mingw-4.9.3/debug/link-static/threading-multi/*.a
  #LIBS += -LC:/boost_1_62_0/bin.v2/libs/test/build/gcc-mingw-4.9.3/release/link-static/threading-multi/*.a
  #LIBS += -LC:/boost_1_62_0/bin.v2/libs/test/build/gcc-mingw-4.9.3/debug/link-static/threading-multi/libboost_unit_test_framework-mgw49-mt-d-1_62.a
  QMAKE_CXXFLAGS += -fext-numeric-literals
}

unix {
  LIBS += -lboost_unit_test_framework
}
