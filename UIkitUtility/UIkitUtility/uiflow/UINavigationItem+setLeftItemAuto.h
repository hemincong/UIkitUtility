//
//  UINavigationItem+setLeftItemAuto.h
//  MobileToken-Kingsoft-Clearlock
//
//  Created by Manchung.Ho on 5/7/14.
//  Copyright (c) 2014 com.yoo-e. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationItem (setLeftItemAuto)

- (void)setNavigationItemWithTitle:(NSString*)title imageNamed:(NSString*)imageName target:(id)target action:(SEL)action;

- (void)setNavigationItemLeftItemButtonEditingStyleWithTarget:(id)target action:(SEL)action;

- (void)setNavigationItemLeftItemButtonBackStyleWithTarget:(id)target action:(SEL)action;

- (void)setNavigationItemLeftItemButtonOKStyleWithTarget:(id)target action:(SEL)action;

@end
