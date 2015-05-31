//
//  ViewController.m
//  RentTheGown
//
//  Created by Billy Tobon on 2/15/15.
//  Copyright (c) 2015 Rent The Runway. All rights reserved.
//

#import "ViewController.h"
#import "RENTButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RENTButton *aButton = [RENTButton buttonWithSKU:@"DRESS001" title:@"Rent me!" completionBlock:^(BOOL completed){
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alright!" message:@"Your dress is on the way" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
    }];
    
    aButton.translatesAutoresizingMaskIntoConstraints = NO;
    
    
    [self.view addSubview:aButton];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aButton
                                                          attribute:NSLayoutAttributeBottom
                                                          relatedBy:NSLayoutRelationLessThanOrEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeBottom
                                                         multiplier:1.0
                                                           constant:-40.0]];
    

    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aButton
                                                          attribute:NSLayoutAttributeWidth
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:150.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:aButton
                                                          attribute:NSLayoutAttributeHeight
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:nil
                                                          attribute:NSLayoutAttributeNotAnAttribute
                                                         multiplier:1.0
                                                           constant:40.0]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
