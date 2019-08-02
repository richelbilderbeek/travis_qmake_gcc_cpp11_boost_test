SOURCES += my_functions.cpp main.cpp
HEADERS += my_functions.h

CONFIG += console debug_and_release
CONFIG(release, debug|release) {
  DEFINES += NDEBUG
}

# C++11
CONFIG += c++11
QMAKE_CXXFLAGS += -std=c++11
