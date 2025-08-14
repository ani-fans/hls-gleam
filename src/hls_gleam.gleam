import hls_gleam/video_element.{type VideoElement}

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
