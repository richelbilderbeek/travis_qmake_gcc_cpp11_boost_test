#include "my_functions.h"
#include <iostream>
#include <vector> //Does this make Travis CI fail?


int main() {
  std::cout << add(40,2) << '\n';
  std::vector<int> v;
  std::cout << v.empty() << '\n';
}
