#include <fstream>
#include "my_functions.h"


#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE my_test_module
#include <boost/test/unit_test.hpp>

BOOST_AUTO_TEST_SUITE(my_functions)

BOOST_AUTO_TEST_CASE(add_works)
{
  #ifndef NDEBUG
  std::ofstream f("test_debug.txt");
  #else
  std::ofstream f("test_release.txt");
  #endif

  BOOST_CHECK(add(1, 1) == 2);
  BOOST_CHECK(add(1, 2) == 3);
  BOOST_CHECK(add(1, 3) == 4);
  BOOST_CHECK(add(1, 4) == 5);

  f << "OK\n";
}

BOOST_AUTO_TEST_SUITE_END()
