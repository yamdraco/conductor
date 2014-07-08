//
//  SegueToRight.m
//  cube
//
//  Created by Draco on 5/7/14.
//  Copyright (c) 2014 Draco. All rights reserved.
//

#import "SegueToRight.h"

@implementation SegueToRight

- (void) perform {
  [self prePerform];
  
  // Layout subview layers
  [self.root.view bringSubviewToFront:self.fromCtr.view];
  
  // Add to root.view if not added
  if (!self.toCtr.view.superview) {
    [self.root.view addSubview:self.toCtr.view];
  }
  
  // Set view position for both to and from controller.view
  self.fromCtr.view.frame = CGRectMake(0, 0, self.fromCtr.view.frame.size.width, self.fromCtr.view.frame.size.height);
  self.toCtr.view.frame = CGRectMake(-self.root.view.frame.size.width, 0, self.toCtr.view.frame.size.width, self.toCtr.view.frame.size.height);
  
  // Set both to be unhidden
  self.fromCtr.view.alpha = 1;
  self.toCtr.view.alpha = 1;
  
  [UIView animateWithDuration: 0.3
                        delay: 0.0
                      options: self.animationOpt
                   animations:^{
                                 self.fromCtr.view.frame = CGRectMake(self.root.view.frame.size.width, 0, self.fromCtr.view.frame.size.width, self.fromCtr.view.frame.size.height);
                                 self.toCtr.view.frame = CGRectMake(0, 0, self.toCtr.view.frame.size.width, self.toCtr.view.frame.size.height);
                               }
                   completion:^(BOOL finsihed){
                                 [self postPerform];
                               }];
  
  [self postPerform];
}

@end
