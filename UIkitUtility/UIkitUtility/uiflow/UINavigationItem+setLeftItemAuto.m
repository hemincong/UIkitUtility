//
//  UINavigationController+setLeftItemAuto.m
//  MobileToken-Kingsoft-Clearlock
//
//  Created by Manchung.Ho on 5/7/14.
//  Copyright (c) 2014 com.yoo-e. All rights reserved.
//

#import "UINavigationItem+setLeftItemAuto.h"

@implementation UINavigationItem (setLeftItemAuto)

- (void)setNavigationItemWithTitle:(NSString*)title imageNamed:(NSString*)imageName target:(id)target action:(SEL)action {
    UIBarButtonItem *editButton = nil;
    UIFont *font = [UIFont systemFontOfSize:13];
    UIImage *image = [UIImage imageNamed:imageName];
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(2, 0, image.size.width, image.size.height)];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    button.titleLabel.font = font;
    [button setTitle:title forState:UIControlStateNormal];
    [button addTarget:target
               action:action
     forControlEvents:UIControlEventTouchUpInside];
    UIView *view = [[UIView alloc] initWithFrame:button.frame];
    [view addSubview:button];
    editButton = [[UIBarButtonItem alloc] initWithCustomView:view];
    self.leftBarButtonItem = editButton;
}

- (void)setNavigationItemLeftItemButtonEditingStyleWithTarget:(id)target action:(SEL)action {
    [self setNavigationItemWithTitle:@"" imageNamed:@"button_edit" target:target action:action];
}

- (void)setNavigationItemLeftItemButtonBackStyleWithTarget:(id)target action:(SEL)action {
    [self setNavigationItemWithTitle:@"" imageNamed:@"back_arrow" target:target action:action];
}

- (void)setNavigationItemLeftItemButtonOKStyleWithTarget:(id)target action:(SEL)action {
    [self setNavigationItemWithTitle:@"" imageNamed:@"button_ok" target:target action:action];
}

@end
