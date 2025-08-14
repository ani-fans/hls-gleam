import Hls from "hls.js"

export function newHls() {
  return new Hls()
}

export function is_supported() {
  return Hls.isSupported()
}

export function loadSource(hls, src) {
  hls.loadSource(src)
}

export function attachMedia(hls, videoDOMElement) {
  hls.attachMedia(video)
}

export function on(hls, events, fn) {
  hls.on(events, fn)
}
