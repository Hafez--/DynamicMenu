//
//  ViewController.h
//  DynamicDemo
//
//  Created by Armin Rassadi on 9/17/14.
//  Copyright (c) 2014 idek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "menuAnimationComponent.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) menuAnimationComponent *menuComponent;


- (void)showMenu:(UIGestureRecognizer *)gestureRecognizer;

@end
