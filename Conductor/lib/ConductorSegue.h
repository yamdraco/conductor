//
//  ConductorSegue.h
//  cube
//
//  Created by Draco on 5/7/14.
//  Copyright (c) 2014 Draco. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConductorSegue : NSObject

@property (nonatomic, strong) UIViewController *root;
@property (nonatomic, strong) UIViewController *fromCtr;
@property (nonatomic, strong) UIViewController *toCtr;

@property (nonatomic, assign) float duration;
@property (nonatomic, assign) UIViewAnimationOptions animationOpt;

@property (nonatomic, assign) BOOL shouldRemove;

/**
 * Pre perform operation includes sends callback to view controller notifying from and to viewControllers
 * should always call [super prePerform]
 */
- (void) prePerform;


/**
 * Perform animation and validate if the process is okay, add necessary views to scene
 * should either call [self prePerform] or [super prePerform] AND [self postPerform] or [super postPerform]
 */
- (void) perform;


/**
 * Post perform operations includes sends callback to view controller notifying from and to viewControllers
 */
- (void) postPerform;

@end
