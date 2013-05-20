//
//  main.m
//  SublimeProxy
//
//  Created by Tim Keating on 5/18/13.
//  Copyright (c) 2013 Tim Keating. All rights reserved.
//

#import "AppDelegate.h"

int main(int argc, char *argv[])
{
    AppDelegate * delegate = [[AppDelegate alloc] init];
    
    NSApplication * application = [NSApplication sharedApplication];
    [application setDelegate:delegate];
    [NSApp run];
}
