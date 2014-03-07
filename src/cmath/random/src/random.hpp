#ifndef _RANDOM_HPP_
#define _RANDOM_HPP_

#include <stdexcept>    // std::range_error
#include <cstdlib>      // std::rand
#include <ctime>        // std::time

namespace std
{

    namespace random
    {

        inline void     randomize ( void );

        inline int      get_int ( const int minimum , const int maximum );

        inline bool     coin_flip ( float win_rate_percent = 50 );

    }

}

// Include implementation file
#include "random.ipp"

#endif  //  _RANDOM_HPP_
