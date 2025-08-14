import lustre/attribute
import lustre/element
import lustre/element/html.{video}

pub type Element(a) =
  element.Element(a)

pub type Attribute(a) =
  attribute.Attribute(a)

pub type VideoElement(a) {
  VideoElement(Element(a))
}

pub fn new(
  attributes: List(Attribute(a)),
  inners: List(Element(a)),
) -> VideoElement(a) {
  VideoElement(video(attributes, inners))
}

@external(javascript, "../hls-ffi.mjs", "videoPlay")
pub fn play(elm: VideoElement(a)) -> Nil
