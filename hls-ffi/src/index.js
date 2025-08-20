import Hls from "hls.js"

export function newHls() {
  return new Hls()
}

export function isSupported() {
  return Hls.isSupported()
}

export function loadSource(hls, src) {
  hls.loadSource(src)
}

export function attachMedia(hls, videoDOMElement) {
  hls.attachMedia(videoDOMElement)
}

export function on(hls, events, fn) {
  hls.on(events, fn)
}

export function videoPlay(video) {
  video.play()
}

export function getById(id) {
  return document.getElementById(id)
}
