pub type Hls {
  Hls
}

@external(javascript, "./hls-ffi.mjs", "newHls")
pub fn new() -> Hls
