//
//  AppDelegate.m
//  SublimeProxy
//
//  Created by Tim Keating on 5/18/13.
//  Copyright (c) 2013 Tim Keating. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [[NSAppleEventManager sharedAppleEventManager]
     setEventHandler:self andSelector:@selector(handleAppleEvent:withReplyEvent:)
     forEventClass:'aevt' andEventID:'odoc'];
}

- (void)handleAppleEvent:(NSAppleEventDescriptor *)event withReplyEvent:(NSAppleEventDescriptor *)replyEvent
{
    NSLog(@"Event descriptor: %@", [event description]);
    NSUInteger options = NSURLBookmarkResolutionWithoutMounting | NSURLBookmarkResolutionWithoutUI;
    NSURL * url = [NSURL URLByResolvingBookmarkData:[event data] options:options relativeToURL:nil bookmarkDataIsStale:NULL error:NULL];
}

@end
