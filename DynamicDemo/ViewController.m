//
//  ViewController.m
//  DynamicDemo
//
//  Created by Armin Rassadi on 9/17/14.
//  Copyright (c) 2014 idek. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UISwipeGestureRecognizer *showMenuGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(showMenu:)];
    

    // for set Swip gesture
    showMenuGesture.direction = UISwipeGestureRecognizerDirectionDown;


    
    [self.view addGestureRecognizer:showMenuGesture];
    
    CGRect desiredMenuFrame = CGRectMake(0.0, 20.0, self.view.frame.size.width, 150.0);

    self.menuComponent = [[menuAnimationComponent alloc] initMenuWithFrame:desiredMenuFrame
                                                       targetView:self.view
                                                        direction:menuDirectionUpToDown
                                                          options:@[@"Download", @"Upload", @"E-mail", @"Settings", @"About"]
                                                     optionImages:@[@"download", @"upload", @"email", @"settings", @"info"]];
    [self.menuComponent setElasticity:0.1];
}

- (void)showMenu:(UIGestureRecognizer *)gestureRecognizer {
    [self.menuComponent showMenuWithSelectionHandler:^(NSInteger selectedOptionIndex) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"UIKit Dynamics Menu"
                                                        message:[NSString stringWithFormat:@"You selected option #%d", selectedOptionIndex + 1]
                                                       delegate:nil
                                              cancelButtonTitle:nil
                                              otherButtonTitles:@"Okay", nil];
        [alert show];
    }];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
