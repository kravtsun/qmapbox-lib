#pragma once

#include <mbgl/util/chrono.hpp>
#include <mbgl/util/unitbezier.hpp>

#include <cmath>
#include <string>
#include <vector>

#define M_PI 3.14159265358979323846


namespace mbgl {

namespace util {

float tileSize = 512;

/*
 * The maximum extent of a feature that can be safely stored in the buffer.
 * In practice, all features are converted to this extent before being added.
 *
 * Positions are stored as signed 16bit integers.
 * One bit is lost for signedness to support features extending past the left edge of the tile.
 * One bit is lost because the line vertex buffer packs 1 bit of other data into the int.
 * One bit is lost to support features extending past the extent on the right edge of the tile.
 * This leaves us with 2^13 = 8192
 */
const int32_t EXTENT = 8192;

const double DEG2RAD = M_PI / 180.0;
const double RAD2DEG = 180.0 / M_PI;
const double M2PI = M_PI * 2;
const double EARTH_RADIUS_M = 6378137;
const double LATITUDE_MAX = 85.051128779806604;
const double LONGITUDE_MAX = 180;
const double DEGREES_MAX = 360;
const double PITCH_MAX = M_PI / 3;
const double MIN_ZOOM = 0.0;
const double MAX_ZOOM = 25.5;
const float  MIN_ZOOM_F = (float)MIN_ZOOM;
const float  MAX_ZOOM_F = (float)MAX_ZOOM;

const uint64_t DEFAULT_MAX_CACHE_SIZE = 50 * 1024 * 1024;

const Duration DEFAULT_FADE_DURATION = Milliseconds(300);
const Seconds CLOCK_SKEW_RETRY_TIMEOUT { 30 };

const UnitBezier DEFAULT_TRANSITION_EASE = { 0, 0, 0.25, 1 };

const int DEFAULT_RATE_LIMIT_TIMEOUT = 5;

const char* API_BASE_URL = "https://api.mapbox.com";

} // namespace util

namespace debug {

extern const bool tileParseWarnings;
extern const bool styleParseWarnings;
extern const bool spriteWarnings;
extern const bool renderWarnings;
extern const bool renderTree;
extern const bool labelTextMissingWarning;
extern const bool missingFontStackWarning;
extern const bool missingFontFaceWarning;
extern const bool glyphWarning;
extern const bool shapingWarning;

} // namespace debug

} // namespace mbgl
