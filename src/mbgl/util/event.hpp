#pragma once

#include <cstdint>

namespace mbgl {

enum class EventSeverity : uint8_t {
    Debug,
    Info,
    Warning,
    Error,
};

enum class Event : uint8_t {
    General,
    Setup,
    Shader,
    ParseStyle,
    ParseTile,
    Render,
    Style,
    Database,
    HttpRequest,
    Sprite,
    Image,
    OpenGL,
    JNI,
    Android,
    Crash,
    Glyph,
};

struct EventPermutation {
    const EventSeverity severity;
    const Event event;

    bool operator==(const EventPermutation &rhs) const {
        return severity == rhs.severity && event == rhs.event;
    }
};

const EventSeverity disabledEventSeverities[] = {
#ifndef NDEBUG
    EventSeverity(-1) // Avoid zero size array
#else
    EventSeverity::Debug
#endif
};

const Event disabledEvents[] = {
    Event(-1) // Avoid zero size array
};

const EventPermutation disabledEventPermutations[] = {
    { EventSeverity::Debug, Event::Shader }
};

} // namespace mbgl
