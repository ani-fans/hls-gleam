import hls_gleam/video_element.{type VideoElement}
import hls_gleam/event.{type Event,event_to_string}

pub type Hls {
  Hls
}

@external(javascript, "./hls-ffi.mjs", "newHls")
pub fn new() -> Hls

@external(javascript, "./hls-ffi.mjs", "isSupported")
pub fn is_supported() -> Bool

@external(javascript, "./hls-ffi.mjs", "loadSource")
pub fn load_source(hls: Hls, src: String) -> Nil

@external(javascript, "./hls-ffi.mjs", "attachMedia")
pub fn attach_media(hls: Hls, media: VideoElement(a)) -> Nil

pub fn on(hls: Hls, event: Event, handler: fn() -> Nil) -> Nil {
  on_ffi(hls, event_to_string(event), handler)
}

@external(javascript, "./hls-ffi.mjs", "on")
fn on_ffi(hls: Hls, event: String, handler: fn() -> Nil) -> Nil
