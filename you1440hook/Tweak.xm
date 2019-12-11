%ctor {
  NSLog(@"[YLYHOOK] Initialized");
}

%hook YTIPlayerResponse
- (bool)isPlayableInBackground {
    NSLog (@"[YLYHOOK]%s:%d %s ", __FILE__, __LINE__, __FUNCTION__);
    return 1;
}

- (bool)isMonetized {
    NSLog (@"[YLYHOOK]%s:%d %s ", __FILE__, __LINE__, __FUNCTION__);
    return 0;
}
%end

%hook YTSingleVideoMediaData
- (bool)isPlayableInBackground {
    NSLog (@"[YLYHOOK]%s:%d %s ", __FILE__, __LINE__, __FUNCTION__);
    return 1;
}
%end

%hook YTPlaybackData
- (bool)isPlayableInBackground {
    NSLog (@"[YLYHOOK]%s:%d %s ", __FILE__, __LINE__, __FUNCTION__);
    return 1;
}
%end

%hook YTSingleVideoController
- (bool)isCurrentlyBackgroundable {
    NSLog (@"[YLYHOOK]%s:%d %s ", __FILE__, __LINE__, __FUNCTION__);
    return 1;
}
%end

%hook YTLocalPlaybackController
- (bool)isPlaybackBackgroundable {
    NSLog (@"[YLYHOOK]%s:%d %s ", __FILE__, __LINE__, __FUNCTION__);
    return 1;
}
%end