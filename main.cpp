#include "my_functions.h"
#include <fstream>

int main() {
  #ifndef NDEBUG
  std::ofstream f("exe_debug.txt");
  #else
  std::ofstream f("exe_release.txt");
  #endif
  f << add(40,2) << '\n';
}
