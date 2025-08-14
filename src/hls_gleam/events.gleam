pub type Event {
  MediaAttaching
  MediaAttached
  MediaDetaching
  MediaDetached
  BufferReset
  BufferCodecs
  BufferCreated
  BufferAppending
  BufferAppended
  BufferEos
  BufferFlushing
  BufferFlushed
  ManifestLoading
  ManifestLoaded
  ManifestParsed
  LevelSwitching
  LevelSwitched
  LevelLoading
  LevelLoaded
  LevelUpdated
  LevelPtsUpdated
  AudioTracksUpdated
  AudioTrackSwitching
  AudioTrackSwitched
  AudioTrackLoading
  AudioTrackLoaded
  SubtitleTracksUpdated
  SubtitleTrackSwitch
  SubtitleTrackLoading
  SubtitleTrackLoaded
  SubtitleFragProccessed
  InitPtsFound
  FragLoading
  FragLoadProgress
  FragLoadEmergencyAborted
  FragLoaded
  FragDecrypted
  FragParsingInitSegment
  FragParsingUserdata
  FragParsingMetadata
  FragParsingData
  FragParsed
  FragBuffered
  FragChanged
  FpsDrop
  FpsDropLevelCapping
  Error
  Destroying
  KeyLoading
  KeyLoaded
  StreamStateTransition
}

pub fn event_to_string(event: Event) -> String {
  case event {
    MediaAttaching -> "hlsMediaAttaching"
    MediaAttached -> "hlsMediaAttached"
    MediaDetaching -> "hlsMediaDetaching"
    MediaDetached -> "hlsMediaDetached"
    BufferReset -> "hlsBufferReset"
    BufferCodecs -> "hlsBufferCodecs"
    BufferCreated -> "hlsBufferCreated"
    BufferAppending -> "hlsBufferAppending"
    BufferAppended -> "hlsBufferAppended"
    BufferEos -> "hlsBufferEos"
    BufferFlushing -> "hlsBufferFlushing"
    BufferFlushed -> "hlsBufferFlushed"
    ManifestLoading -> "hlsManifestLoading"
    ManifestLoaded -> "hlsManifestLoaded"
    ManifestParsed -> "hlsManifestParsed"
    LevelSwitching -> "hlsLevelSwitching"
    LevelSwitched -> "hlsLevelSwitched"
    LevelLoading -> "hlsLevelLoading"
    LevelLoaded -> "hlsLevelLoaded"
    LevelUpdated -> "hlsLevelUpdated"
    LevelPtsUpdated -> "hlsLevelPtsUpdated"
    AudioTracksUpdated -> "hlsAudioTracksUpdated"
    AudioTrackSwitching -> "hlsAudioTrackSwitching"
    AudioTrackSwitched -> "hlsAudioTrackSwitched"
    AudioTrackLoading -> "hlsAudioTrackLoading"
    AudioTrackLoaded -> "hlsAudioTrackLoaded"
    SubtitleTracksUpdated -> "hlsSubtitleTracksUpdated"
    SubtitleTrackSwitch -> "hlsSubtitleTrackSwitch"
    SubtitleTrackLoading -> "hlsSubtitleTrackLoading"
    SubtitleTrackLoaded -> "hlsSubtitleTrackLoaded"
    SubtitleFragProccessed -> "hlsSubtitleFragProcessed"
    InitPtsFound -> "hlsInitPtsFound"
    FragLoading -> "hlsFragLoading"
    FragLoadProgress -> "hlsFragLoadProgress"
    FragLoadEmergencyAborted -> "hlsFragLoadEmergencyAborted"
    FragLoaded -> "hlsFragLoaded"
    FragDecrypted -> "hlsFragDecrypted"
    FragParsingInitSegment -> "hlsFragParsingInitSegment"
    FragParsingUserdata -> "hlsFragParsingUserdata"
    FragParsingMetadata -> "hlsFragParsingMetadata"
    FragParsingData -> "hlsFragParsingData"
    FragParsed -> "hlsFragParsed"
    FragBuffered -> "hlsFragBuffered"
    FragChanged -> "hlsFragChanged"
    FpsDrop -> "hlsFpsDrop"
    FpsDropLevelCapping -> "hlsFpsDropLevelCapping"
    Error -> "hlsError"
    Destroying -> "hlsDestroying"
    KeyLoading -> "hlsKeyLoading"
    KeyLoaded -> "hlsKeyLoaded"
    StreamStateTransition -> "hlsStreamStateTransition"
  }
}
