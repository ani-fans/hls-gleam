import hls_gleam/event.{type Event, event_to_string}
import hls_gleam/video_element.{type VideoElement}

pub type Hls {
  Hls
}

@external(javascript, "./hls-ffi.mjs", "newHls")
pub fn new() -> Hls

@external(javascript, "./hls-ffi.mjs", "isSupported")
pub fn is_supported() -> Bool

pub fn load_source(hls: Hls, src: String) -> Hls {
  load_source_ffi(hls, src)
  hls
}

@external(javascript, "./hls-ffi.mjs", "loadSource")
fn load_source_ffi(hls: Hls, src: String) -> Nil

pub fn attach_media(hls: Hls, media: VideoElement(a)) -> Hls {
  attach_media_ffi(hls, media)
  hls
}

@external(javascript, "./hls-ffi.mjs", "attachMedia")
fn attach_media_ffi(hls: Hls, media: VideoElement(a)) -> Nil

pub fn on(hls: Hls, event: Event, handler: fn() -> Nil) -> Hls {
  on_ffi(hls, event_to_string(event), handler)
  hls
}

@external(javascript, "./hls-ffi.mjs", "on")
fn on_ffi(hls: Hls, event: String, handler: fn() -> Nil) -> Nil
