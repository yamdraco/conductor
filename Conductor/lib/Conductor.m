//
//  Conductor.m
//  cube
//
//  Created by Draco on 5/7/14.
//  Copyright (c) 2014 Draco. All rights reserved.
//

#import "Conductor.h"

#import "ConductorSegue.h"

@implementation Conductor

@synthesize rootCtr, ctrStack;

- (id) init {
  self = [super init];
  ctrStack = [[NSMutableArray alloc]init];
  return self;
}

#pragma mark -
#pragma mark Stack controls
- (void) push:(UIViewController*)vctr {
  [self push:vctr withKey:@""];
}

- (void) push:(UIViewController*)vctr withKey:(NSString*)key {
  [ctrStack addObject:@{key:vctr}];
}

- (UIViewController*) pop {
  UIViewController *ctr = [self last];
  [ctrStack removeLastObject];
  return ctr;
}

- (UIViewController*) last {
  return ([ctrStack count] > 0) ? [[ctrStack lastObject] allValues][0] : nil;
}

#pragma mark -
#pragma mark Transitions
- (void) addCtr:(UIViewController*)ctr withSegue:(ConductorSegue*)segue {
  [self addCtr:ctr withKey:@"" withSegue:segue];
}

- (void) addCtr:(UIViewController*)ctr withKey:(NSString*)key withSegue:(ConductorSegue*)segue {
  segue.fromCtr = [self last];
  segue.toCtr = ctr;
  segue.root = rootCtr;
  [self push:ctr withKey:key];
  [segue perform];
}

- (void) popCtrWithSegue:(ConductorSegue*)segue {
  segue.fromCtr = [self pop];
  segue.toCtr = [self last];
  segue.root = rootCtr;
  [segue perform];
}



@end
