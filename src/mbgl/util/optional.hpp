#pragma once
#include <utility>

namespace mbgl {

template<typename T>
class optional {
public:
    optional()
    {}

    optional(const T& x)
        : p_(x, true)
    {}

    T &operator *() {
        return x_;
    }

    const T &operator *() const {
        return p_.first;
    }

    operator bool() const {
        return p_.second;
    }

private:
    std::pair<T, bool> p_;
};

} // namespace mbgl
