import lustre/attribute
import lustre/element/html.{video}
import lustre/element

pub type Element(a) = element.Element(a) 
pub type Attribute(a) = attribute.Attribute(a)

pub type VideoElement(a) {
  VideoElement(Element(a))
}

pub fn new(attributes: List(Attribute(a)), inners: List(Element(a))) -> VideoElement(a) {
  VideoElement(video(attributes, inners))
}
