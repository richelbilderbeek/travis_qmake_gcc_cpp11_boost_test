#define BOOST_TEST_DYN_LINK
#define BOOST_TEST_MODULE my_functions_test_module
#include <boost/test/unit_test.hpp>
#include <fstream>

BOOST_AUTO_TEST_CASE(inform_travis)
{
  #ifndef NDEBUG
  std::ofstream f("test_debug.txt");
  #else
  std::ofstream f("test_release.txt");
  #endif
  f << "OK\n";
}

//No main needed, BOOST_TEST_DYN_LINK creates it
