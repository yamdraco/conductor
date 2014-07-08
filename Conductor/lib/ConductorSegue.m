//
//  ConductorSegue.m
//  cube
//
//  Created by Draco on 5/7/14.
//  Copyright (c) 2014 Draco. All rights reserved.
//

#import "ConductorSegue.h"

// Cocoa Extension
#import "UIViewController+Conductor.h"

@implementation ConductorSegue

@synthesize root, fromCtr, toCtr;
@synthesize duration, animationOpt, shouldRemove;

- (id) init {
  self = [super init];
  
  duration = 0.3;
  animationOpt = UIViewAnimationOptionCurveEaseOut;
  shouldRemove = NO;
  
  return self;
}

- (void) prePerform {
  if ([fromCtr respondsToSelector:@selector(ctrWillHide:)]) {
    [fromCtr ctrWillAppear:self];
  }
  if ([toCtr respondsToSelector:@selector(ctrWillAppear:)]) {
    [toCtr ctrWillAppear:self];
  }
}

- (void) perform {
  // Be overridden
}

- (void) postPerform {
  // TODO: Send Did Appear and disppear request
  if ([fromCtr respondsToSelector:@selector(ctrDidHidden:)]) {
    [fromCtr ctrDidHidden:self];
  }
  if ([toCtr respondsToSelector:@selector(ctrDidAppeared:)]) {
    [toCtr ctrDidAppeared:self];
  }
  if (shouldRemove) {
    [fromCtr.view removeFromSuperview];
  }
}

@end
