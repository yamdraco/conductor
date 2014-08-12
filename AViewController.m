//
//  AViewController.m
//  Conductor
//
//  Created by Draco Yam on 7/8/14.
//
//

#import "AViewController.h"

#import "BViewController.h"

#import "AppDelegate.h"

#import "SegueToLeft.h"
#import "SegueToDrop.h"
#import "SegueToTop.h"

#import "BViewController.h"

@interface AViewController ()

@end

@implementation AViewController

- (void) loadView {
  self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
  self.view.backgroundColor = [UIColor redColor];
  
  [self performSelector:@selector(switchToSecond) withObject:nil afterDelay:3.0];
}

- (void) switchToSecond {
  AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
  NSLog(@"Stack Count Before, %d", [appDelegate.conductor.ctrStack count]);
  [appDelegate.conductor addCtr:[[BViewController alloc]init] withKey:@"bControl" withSegue:[[SegueToTop alloc]init]];
  NSLog(@"Stack Count After, %d", [appDelegate.conductor.ctrStack count]);
}

@end
