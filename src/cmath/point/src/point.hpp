#ifndef _STD_POINT_HPP_
#define _STD_POINT_HPP_

#include <initializer_list>
#include <array>
#include <math.h>
#include <iostream>

namespace std
{

    template <typename type , int dimension>
    class point
    {

        public:

            using coordinates = std::array<type,dimension>;

            using coordinates_initializer_list = std::initializer_list<type>;

            using coordinates_initializer_list_itr = typename coordinates_initializer_list::iterator;

            using coordinates_initializer_list_citr = typename coordinates_initializer_list::const_iterator;

                                    point ( void )
            {

                //	Check if the dimension of the point_object is legal
                this->validate_dimension();

                //	 Set coordinates_object values to zero
                this->set_coordinates_values(0);

            }

                                    point ( const coordinates_initializer_list& coordinates_object )
            {

                this->validate_dimension_match(coordinates_object);

                this->set_coordinates_values(coordinates_object);

            }

                                    template <typename _type>
                                    point ( const point<_type,dimension>& point_object )
            {

                this->set_coordinates_values(point_object.get_coordinates_ref());

            }

                                    template <typename _type>
            point&				    operator= ( const point<_type,dimension>& point_object )
            {

                this->set_coordinates_values(point_object.get_coordinates_ref());

                return *this;

            }

            friend std::ostream&    operator<< ( std::ostream& outputStream , const point& point_object )
            {

                outputStream << "point(";

                for ( int coordinateKey = 0 ; coordinateKey < dimension ; coordinateKey++ )
                {

                    outputStream << point_object.get_coordinate_value(coordinateKey);

                    if ( coordinateKey < dimension -1 )
                    {

                        outputStream << ",";

                    }

                }

                outputStream << ")";

                return outputStream;

            }

            type&					operator[] ( const int coordinateId )
            {

                this->validate_coordinate_id(coordinateId);

                return this->coordinates_object[coordinateId];

            }

            const type&				operator[] ( const int coordinateId ) const
            {

                this->validate_coordinate_id(coordinateId);

                return this->coordinates_object[coordinateId];

            }

                                    template <typename _type>
            bool					operator== ( const point<_type,dimension>& point_object ) const
            {

                for ( int key = 0 ; key < dimension ; key++ )
                {

                    if ( this->coordinates_object[key] != point_object[key] )
                    {

                        return false;

                    }

                }

                return true;

            }

                                    template <typename _type>
            bool					operator!= ( const point<_type,dimension>& point_object ) const
            {

                return ! ( *this == point_object );

            }

                                    template <typename _type>
            point					operator+ ( const point<_type,dimension>& point_object ) const
            {

                point pointResult = *this;

                for ( int key = 0 ; key < dimension ; key++ )
                {

                    pointResult[key] += point_object[key];

                }

                return pointResult;

            }

                                    template <typename _type>
            point					operator- ( const point<_type,dimension>& point_object ) const
            {

                return (*this)+(point_object*(-1));

            }

            point					operator* ( const float multiplier ) const
            {

                point pointResult = *this;

                for ( int key = 0 ; key < dimension ; key++ )
                {

                    pointResult[key] *= multiplier;

                }

                return pointResult;

            }

            point					operator/ ( const float multiplier ) const
            {

                return (*this)*(1/multiplier);

            }

            int						get_dimension ( void ) const
            {

                return dimension;

            }

            type					get_coordinate_value ( const int coordinateId ) const
            {

                this->validate_coordinate_id(coordinateId);

                return this->coordinates_object[coordinateId];

            }

            coordinates&			get_coordinates_ref ( void )
            {

                return this->coordinates_object;

            }

            const coordinates&	    get_coordinates_ref ( void ) const
            {

                return this->coordinates_object;

            }

                                    template <typename _type>
            float					get_distance_to ( const point<_type,dimension>& point_object ) const
            {

                float distanceSquared = 0;

                for ( int key = 0 ; key != dimension ; key++ )
                {

                    float coordinateA = this->coordinates_object[key];
                    float coordinateB = point_object.coordinates_object[key];

                    distanceSquared += ( coordinateB - coordinateA ) * ( coordinateB - coordinateA );

                }

                float distance = sqrt(distanceSquared);

                return distance;

            }

                                    template <typename _type>
            void					set_coordinates_values ( const _type& coordinatesValue )
            {

                /*

                    Set all coordinates_object values to `coordinatesValue`

                */

                this->coordinates_object.fill(coordinatesValue);

            }

            void					set_coordinates_values ( const coordinates_initializer_list& coordinates_object )
            {

                coordinates_initializer_list_itr coordinatesItr = coordinates_object.begin();
                int coordinateId = 0;

                for ( ; coordinatesItr != coordinates_object.end() ; coordinatesItr++ , coordinateId++ )
                {

                    this->coordinates_object[coordinateId] = *coordinatesItr;

                }

            }

                                    template <typename _type>
            void					set_coordinates_values ( const std::array<_type,dimension>& coordinates_object )
            {

                for ( int key = 0 ; key < dimension ; key++ )
                {

                    this->coordinates_object[key] = coordinates_object[key];

                }

            }

            void					validate_dimension_match ( const coordinates_initializer_list& coordinates_object ) const
            {

                if ( coordinates_object.size() != dimension )
                {

                    //throw ExcDimensionMismatch();
                    throw -1;

                }

            }

                                    template <typename _type , int _dimension>
            void					validate_dimension_match ( const point<_type,_dimension>& ) const
            {

                if ( dimension != _dimension )
                {

                    //throw ExcDimensionMismatch();
                    throw -1;

                }

            }

            void					validate_coordinate_id ( const int coordinateId ) const
            {

                if ( coordinateId >= 0 && dimension <= coordinateId )
                {

                    //throw ExcDimensionMismatch();
                    throw -1;

                }

            }

            void					validate_dimension ( void ) const
            {

                /*

                    Throws an `ExcIllegalDimension` Exceptioneption if the dimension of the point_object is illegal

                */

                if ( dimension <= 0 )
                {

                    //throw ExcInvalidDimension();
                    throw -1;

                }

            }

        protected:

            coordinates				coordinates_object;

    };

    typedef point<int,2> point_i2;

    typedef point<int,3> point_i3;

    typedef point<float,2> point_f2;

    typedef point<float,3> point_f3;

}

// Include implementation file
#include "point.tpp"

#endif  //  _STD_POINT_HPP_
