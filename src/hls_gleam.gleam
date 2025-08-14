pub type Hls {
  Hls
}

@external(javascript, "./hls-ffi.mjs", "newHls")
pub fn new() -> Hls

@external(javascript, "./hls-ffi.mjs", "isSupported")
pub fn is_supported() -> Bool
