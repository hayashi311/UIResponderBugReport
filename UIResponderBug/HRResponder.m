//
// Created by hayashi311 on 12/24/15.
// Copyright (c) 2015 hayashi311. All rights reserved.
//

#import "HRResponder.h"
#import "HRInputAccessoryView.h"


@implementation HRResponder {
    HRInputAccessoryView *_accessoryView;
}

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (UIResponder *)nextResponder {
    return self.parentResponder;
}

- (__kindof UIView *)inputAccessoryView {
    if (!_accessoryView) {
        _accessoryView = [[HRInputAccessoryView alloc] init];
    }
    return _accessoryView;
}

@end