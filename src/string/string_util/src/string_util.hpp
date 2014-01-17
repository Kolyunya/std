#ifndef _STRING_UTIL_HPP_
#define _STRING_UTIL_HPP_

#include <stdexcept>    // std::runtime_error
#include <algorithm>    // std::for_each
#include <vector>       // std::vector
#include <sstream>      // std::string
                        // std::stringstream
#include <climits>      // LONG_MIN
                        // LONG_MAX
#include <cstdlib>      // std::strtol
                        // std::strtof

namespace std
{

    typedef vector<string> strings;

    inline long int     string_to_long_int ( const string& source_string , int number_base = 10 );

    inline int          string_to_int ( const string& source_string , int number_base = 10 );

    inline double       string_to_double ( const string& source_string );

    inline float        string_to_float ( const string& source_string );

    inline string       number_to_string ( const int source_number );

    inline string       number_to_string ( const unsigned int source_number );

    inline string       number_to_string ( const float source_number );

    inline string       string_reverse ( const string& source_string );

    inline strings      string_split ( const string& source_string , char delimiter );

    inline strings      string_split ( const string& source_string , const std::string& delimiter );

    inline string       string_replace ( const string& source_string , const char search_for , const char replace_with );

    inline bool         string_is_numeric ( const string& source_string );

    inline bool         string_is_integer ( const string& source_string );


}

// Include implementation file
#include "string_util.ipp"

#endif    // _STRING_UTIL_HPP_