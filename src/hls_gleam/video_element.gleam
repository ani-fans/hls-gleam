import lustre/attribute
import lustre/element

pub type Element(a) =
  element.Element(a)

pub type Attribute(a) =
  attribute.Attribute(a)

pub type VideoElement(a) {
  VideoElement(Element(a))
}

@external(javascript, "../hls-ffi.mjs", "getById")
pub fn get_by_id(id: String) -> VideoElement(a)

@external(javascript, "../hls-ffi.mjs", "videoPlay")
pub fn play(elm: VideoElement(a)) -> Nil
