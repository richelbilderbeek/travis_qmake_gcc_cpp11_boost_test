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
QMAKE_CXX = g++-5
QMAKE_LINK = g++-5
QMAKE_CC = gcc-5
QMAKE_CXXFLAGS += -Wall -Wextra -Weffc++ -Werror -std=c++11

# Debug and release build
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

# Boost.Test
LIBS += -lboost_unit_test_framework
