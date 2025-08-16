import gleam/io
import gleam/option.{type Option, None, Some}
import gleam/string
import lustre/attribute
import lustre/dev/query
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

pub fn get_by_id(container: Element(a), id: String) -> Option(VideoElement(a)) {
  case query.find(container, query.element(query.id(id))) {
    Ok(elm) -> Some(VideoElement(elm))
    Error(Nil) -> None
  }
}

@external(javascript, "../hls-ffi.mjs", "videoPlay")
pub fn play(elm: VideoElement(a)) -> Nil
