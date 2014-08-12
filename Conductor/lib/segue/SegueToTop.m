//
//  SegueToTop.m
//  Conductor
//
//  Created by Draco Yam on 8/12/14.
//
//

#import "SegueToTop.h"

@implementation SegueToTop

- (void) perform {
  [self prePerform];
  
  // Layout subview layers
  [self.root.view bringSubviewToFront:self.fromCtr.view];
  
  // Add to root.view if not added
  [self.toCtr.view removeFromSuperview];
  if (!self.toCtr.view.superview) {
    [self.root.view insertSubview:self.toCtr.view belowSubview:self.fromCtr.view];
  }
  
  // Set view position for both to and from controller.view
  self.fromCtr.view.frame = CGRectMake(0, 0, self.fromCtr.view.frame.size.width, self.fromCtr.view.frame.size.height);
  self.toCtr.view.frame = CGRectMake(0, 0, self.toCtr.view.frame.size.width, self.toCtr.view.frame.size.height);
  
  // Set both to be unhidden
  self.fromCtr.view.alpha = 1;
  self.toCtr.view.alpha = 1;
  
  [UIView animateWithDuration: 0.3
                        delay: 0.0
                      options: self.animationOpt
                   animations:^{
                     self.fromCtr.view.frame = CGRectMake(0, -self.fromCtr.view.frame.size.height, self.fromCtr.view.frame.size.width, self.fromCtr.view.frame.size.height);
                     self.toCtr.view.frame = CGRectMake(0, 0, self.toCtr.view.frame.size.width, self.toCtr.view.frame.size.height);
                   }
                   completion:^(BOOL finsihed){
                     [self postPerform];
                   }];
  
  [self postPerform];
}

@end
