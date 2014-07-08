//
//  Conductor.h
//  cube
//
//  Created by Draco on 5/7/14.
//  Copyright (c) 2014 Draco. All rights reserved.
//

#import <Foundation/Foundation.h>

// Segue
#import "ConductorSegue.h"

@interface Conductor : NSObject

@property (nonatomic, strong) UIViewController *rootCtr;
@property (nonatomic, strong) NSMutableArray *ctrStack;

#pragma mark -
#pragma mark Stack controls
/**
 * Push viewController to the stack
 * @param vctr, viewController to push to stack
 */
- (void) push:(UIViewController*)vctr;


/**
 * Push viewController to the stack and append a key with it so that you can remove together
 * @param vctr, viewController to push to stack
 * @param key, key to recognize each controller or a collection of controller
 */
- (void) push:(UIViewController*)vctr withKey:(NSString*)key;


/**
 * Pop the last controller from the stack and remove from stack
 * @return last viewController from stack
 */
- (UIViewController*) pop;


/**
 * Get the last controller from the stack without remove from stack
 * @return last viewController from stack
 */
- (UIViewController*) last;

#pragma mark -
#pragma mark Transitions
/**
 * Add Ctr to stack and perform animation with segue (key is tagged as @"")
 * @param ctr, viewController to add to manager
 * @param segue, defining transition
 */
- (void) addCtr:(UIViewController*)ctr withSegue:(ConductorSegue*)segue;


/**
 * Add Ctr to stack and perform animation with segue (key of controller is also tag)
 * @param ctr, viewController to add to manager
 * @param key, the key to tag the controller
 * @param segue, defining transition
 */
- (void) addCtr:(UIViewController*)ctr withKey:(NSString*)key withSegue:(ConductorSegue*)segue;


/**
 * Return to last controller
 * @param segue, defining transition
 */
- (void) popCtrWithSegue:(ConductorSegue*)segue;

@end
