//
//  BViewController.m
//  Conductor
//
//  Created by Draco Yam on 7/8/14.
//
//

#import "BViewController.h"

#import "AppDelegate.h"

#import "SegueToRight.h"

@interface BViewController ()

@end

@implementation BViewController

- (void) loadView {
  self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
  self.view.backgroundColor = [UIColor blueColor];
  
  [self performSelector:@selector(pop) withObject:nil afterDelay:3.0];
}

- (void) pop {
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  NSLog(@"Stack Count Before, %d", [appDelegate.conductor.ctrStack count]);
  [appDelegate.conductor popCtrWithSegue:[[SegueToRight alloc]init]];
  NSLog(@"Stack Count After, %d", [appDelegate.conductor.ctrStack count]);
}

@end
