//
//  AppDelegate.m
//  TrackMix
//
//  Created by James Robertson on 6/3/13.
//  Copyright (c) 2013 James Robertson. All rights reserved.
//
#import "AppDelegate.h"
#import "Track.h"

@implementation AppDelegate

@synthesize textField = _textField;
@synthesize slider = _slider;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    Track *aTrack = [[Track alloc] init];
    [aTrack setVolume:5];
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    [self.track setVolume:0.0];
    [self updateUserInterface];
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
}

- (void)updateUserInterface {
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end