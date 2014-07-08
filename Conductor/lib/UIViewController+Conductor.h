//
//  UIViewController+Conductor.h
//  cube
//
//  Created by Draco on 5/7/14.
//  Copyright (c) 2014 Draco. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "ConductorSegue.h"

@interface UIViewController(Conductor)

/**
 * @optional
 * Callback for controller about to move into the scene
 * @param, contains transition information include from and to controller
 */
- (void) ctrWillAppear:(ConductorSegue*)segue;


/**
 * @Optional
 * Callback for controller that have moved into the scence
 * @param, contains transition information include from and to controller
 */
- (void) ctrDidAppeared:(ConductorSegue*)segue;


/**
 * @optional
 * Callback for controller that will move out of the scene
 * @param, contains transition information include from and to controller
 */
- (void) ctrWillHide:(ConductorSegue*)segue;


/**
 * @optional
 * Callback for controller that will moved out of the scene
 * @param, contains transition information include from and to controller
 */
- (void) ctrDidHidden:(ConductorSegue*)segue;


@end
