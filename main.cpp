#include "my_functions.h"
#include <iostream>

int main()
{
  #ifndef NDEBUG
  std::cout << "Debug mode\n";
  #else
  std::cout << "Release mode\n";
  #endif
  std::cout << add(40,2) << '\n';
}
