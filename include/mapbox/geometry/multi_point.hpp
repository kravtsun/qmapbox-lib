#pragma once

// mapbox
#include <mapbox/geometry/point.hpp>
// stl
#include <vector>

namespace mapbox {
namespace geometry {

template <typename T/*, template <typename...> class Cont = std::vector*/>
struct multi_point : std::vector<point<T>>
{
//    using Cont = std::vector;
    using coordinate_type = T;
    using point_type = point<T>;
    using container_type = std::vector<point_type>;
//    using container_type::container_type;
};

} // namespace geometry
} // namespace mapbox
