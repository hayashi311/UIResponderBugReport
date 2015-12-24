//
//  ViewController.m
//  UIResponderBug
//
//  Created by hayashi311 on 12/24/15.
//  Copyright © 2015 hayashi311. All rights reserved.
//

#import "ViewController.h"
#import "HRInputViewController.h"
#import "HRResponder.h"

@interface ViewController ()
@property (readonly) HRResponder *responder;
@end

@implementation ViewController {
    HRInputViewController *_inputViewController;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _responder = [[HRResponder alloc] init];
    _responder.parentResponder = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];


    NSLog(@"inputView = %@", self.inputView);
    NSLog(@"inputViewController = %@", self.inputViewController);
    NSLog(@"inputAccessoryView = %@", self.inputAccessoryView);
    NSLog(@"inputAccessoryViewController = %@", self.inputAccessoryViewController);

    NSLog(@"============");

    NSLog(@"responder.inputView = %@", self.responder.inputView);
    NSLog(@"responder.inputViewController = %@", self.responder.inputViewController);
    NSLog(@"responder.inputAccessoryView = %@", self.responder.inputAccessoryView);
    NSLog(@"responder.inputAccessoryViewController = %@ <- This should be nil", self.responder.inputAccessoryViewController);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (UIInputViewController *)inputViewController {
    if (!_inputViewController) {
        _inputViewController = [[HRInputViewController alloc] init];
    }
    return _inputViewController;
}


@end
