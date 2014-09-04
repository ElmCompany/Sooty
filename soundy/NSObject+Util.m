//
//  NSObject+Util.m
//  soundy
//
//  Created by Muhammad Hewedy on 9/4/14.
//  Copyright (c) 2014 Muhammad Hewedy. All rights reserved.
//

#import "NSObject+Util.h"
#import "AppDelegate.h"


@implementation NSObject (Util)

-(void)alert:(NSWindow*) window withMessage: (NSString*) msg
{
    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"Ok"];
    [alert setMessageText:@"Alert"];
    [alert setInformativeText:msg];
    [alert setAlertStyle:NSWarningAlertStyle];
    [alert beginSheetModalForWindow:window modalDelegate:self didEndSelector:nil contextInfo:nil];
}

-(void)alert:(NSString*) msg{
    NSWindow* window = [(AppDelegate *)[[NSApplication sharedApplication] delegate] window];
    [self alert:window withMessage:msg];
}

@end