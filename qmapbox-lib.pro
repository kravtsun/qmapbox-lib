#-------------------------------------------------
#
# Project created by QtCreator 2017-04-18T11:36:50
#
#-------------------------------------------------

QT       += widgets network opengl sql

TARGET = qmapbox-lib
TEMPLATE = lib
CONFIG += staticlib

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

unix {
    target.path = /usr/lib
    INSTALLS += target
}

win32 {
    QMAKE_CXXFLAGS += /Od
}

INCLUDEPATH += $$PWD/qt/include $$PWD/qt/src \
               $$PWD/default \
               $$PWD/src $$PWD/include

#$$PWD/include include $$PWD/src $$PWD

HEADERS += \
    default/mbgl/storage/offline_database.hpp \
    default/mbgl/storage/offline_download.hpp \
    default/mbgl/util/default_thread_pool.hpp \
    default/mbgl/util/shared_thread_pool.hpp \
    qt/include/qmapbox.hpp \
    qt/include/qmapboxgl.hpp \
    qt/src/async_task_impl.hpp \
    qt/src/http_file_source.hpp \
    qt/src/http_request.hpp \
    qt/src/qmapboxgl_p.hpp \
    qt/src/run_loop_impl.hpp \
    qt/src/timer_impl.hpp \
    default/mbgl/storage/offline.hpp \
    default/mbgl/util/default_styles.hpp \
    include/mapbox/geometry/box.hpp \
    include/mapbox/geometry/envelope.hpp \
    include/mapbox/geometry/feature.hpp \
    include/mapbox/geometry/for_each_point.hpp \
    include/mapbox/geometry/geometry.hpp \
    include/mapbox/geometry/line_string.hpp \
    include/mapbox/geometry/multi_line_string.hpp \
    include/mapbox/geometry/multi_point.hpp \
    include/mapbox/geometry/multi_polygon.hpp \
    include/mapbox/geometry/point.hpp \
    include/mapbox/geometry/point_arithmetic.hpp \
    include/mapbox/geometry/polygon.hpp \
    include/mapbox/geometry.hpp \
    src/mbgl/actor/mailbox.hpp \
    src/mbgl/actor/scheduler.hpp \
    src/mbgl/map/mode.hpp \
    src/mbgl/map/transform_state.hpp \
    src/mbgl/math/clamp.hpp \
    src/mbgl/math/log2.hpp \
    src/mbgl/math/minmax.hpp \
    src/mbgl/math/wrap.hpp \
    src/mbgl/storage/asset_file_source.hpp \
    src/mbgl/storage/default_file_source.hpp \
    src/mbgl/storage/file_source.hpp \
    src/mbgl/storage/local_file_source.hpp \
    src/mbgl/storage/online_file_source.hpp \
    src/mbgl/storage/resource.hpp \
    src/mbgl/storage/response.hpp \
    src/mbgl/style/types.hpp \
    src/mbgl/tile/geojson_tile.hpp \
    src/mbgl/tile/geometry_tile.hpp \
    src/mbgl/tile/geometry_tile_data.hpp \
    src/mbgl/tile/geometry_tile_worker.hpp \
    src/mbgl/tile/raster_tile.hpp \
    src/mbgl/tile/raster_tile_worker.hpp \
    src/mbgl/tile/tile.hpp \
    src/mbgl/tile/tile_cache.hpp \
    src/mbgl/tile/tile_id.hpp \
    src/mbgl/tile/tile_loader.hpp \
    src/mbgl/tile/tile_loader_impl.hpp \
    src/mbgl/tile/tile_observer.hpp \
    src/mbgl/tile/vector_tile.hpp \
    src/mbgl/util/chrono.hpp \
    src/mbgl/util/constants.hpp \
    src/mbgl/util/enum.hpp \
    src/mbgl/util/event.hpp \
    src/mbgl/util/font_stack.hpp \
    src/mbgl/util/geo.hpp \
    src/mbgl/util/geometry.hpp \
    src/mbgl/util/logging.hpp \
    src/mbgl/util/mapbox.hpp \
    src/mbgl/util/noncopyable.hpp \
    src/mbgl/util/optional.hpp \
    src/mbgl/util/platform.hpp \
    src/mbgl/util/range.hpp \
    src/mbgl/util/string.hpp \
    src/mbgl/util/tile_coordinate.hpp \
    src/mbgl/util/tile_cover.hpp \
    src/mbgl/util/tileset.hpp \
    src/mbgl/util/traits.hpp \
    src/mbgl/util/unitbezier.hpp \
    src/mbgl/util/variant.hpp \

SOURCES += \
    default/mbgl/storage/offline.cpp \
    default/mbgl/storage/offline_database.cpp \
    default/mbgl/storage/offline_download.cpp \
    default/mbgl/util/default_thread_pool.cpp \
    default/mbgl/util/shared_thread_pool.cpp \
    default/asset_file_source.cpp \
    default/default_file_source.cpp \
    default/local_file_source.cpp \
    default/logging_stderr.cpp \
    default/online_file_source.cpp \
    default/thread.cpp \
    qt/src/async_task.cpp \
    qt/src/http_file_source.cpp \
    qt/src/http_request.cpp \
    qt/src/image.cpp \
    qt/src/qmapbox.cpp \
    qt/src/qmapboxgl.cpp \
    qt/src/run_loop.cpp \
    qt/src/sqlite3.cpp \
    qt/src/string_stdlib.cpp \
    qt/src/timer.cpp \
    qt/src/utf.cpp \
    default/mbgl/util/default_styles.cpp \
    src/mbgl/map/transform_state.cpp \
    src/mbgl/tile/geojson_tile.cpp \
    src/mbgl/tile/geometry_tile.cpp \
    src/mbgl/tile/geometry_tile_data.cpp \
    src/mbgl/tile/geometry_tile_worker.cpp \
    src/mbgl/tile/raster_tile.cpp \
    src/mbgl/tile/raster_tile_worker.cpp \
    src/mbgl/tile/tile.cpp \
    src/mbgl/tile/tile_cache.cpp \
    src/mbgl/tile/tile_id_io.cpp \
    src/mbgl/tile/vector_tile.cpp \
    src/mbgl/util/event.cpp \
    src/mbgl/util/font_stack.cpp \
    src/mbgl/util/mapbox.cpp \
    src/mbgl/util/tile_cover.cpp \
