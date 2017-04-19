#include <mbgl/util/work_task.hpp>
#include <mbgl/util/work_task_impl.hpp>

#include <cassert>
#include <utility>

namespace mbgl {

template<typename Task>
struct WorkRequest {
    WorkRequest(Task task_);
    ~WorkRequest();

    Task task;
};

} // namespace mbgl
