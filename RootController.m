//
//  RootController.m
//  Conductor
//
//  Created by Draco Yam on 7/8/14.
//
//

#import "RootController.h"

@interface RootController ()

@end

@implementation RootController

- (void) loadView {
  self.view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
  self.view.backgroundColor = [UIColor yellowColor];
}
@end
