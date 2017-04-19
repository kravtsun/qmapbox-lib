#pragma once

#include <cstdint>
#include <array>

namespace mbgl {

class Size {
public:
    Size() = default;

    Size(const uint32_t width_, const uint32_t height_) : width(width_), height(height_) {
    }

    uint32_t area() const {
        return width * height;
    }

    bool isEmpty() const {
        return width == 0 || height == 0;
    }

    uint32_t width = 0;
    uint32_t height = 0;
};

inline bool operator==(const Size& a, const Size& b) {
    return a.width == b.width && a.height == b.height;
}

inline bool operator!=(const Size& a, const Size& b) {
    return !(a == b);
}

} // namespace mbgl
