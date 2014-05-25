//
//  UINavigationController+BackAction.m
//  MobileToken-Kingsoft-Clearlock
//
//  Created by Manchung.Ho on 5/7/14.
//  Copyright (c) 2014 com.yoo-e. All rights reserved.
//

#import "UIViewController+BackAction.h"

@implementation UIViewController (BackAction)

- (void)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
