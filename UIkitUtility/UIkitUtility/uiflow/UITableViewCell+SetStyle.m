//
//  UITableViewCell+SetSelectBackgound.m
//  MobileToken-Kingsoft-Clearlock
//
//  Created by Manchung.Ho on 5/8/14.
//  Copyright (c) 2014 com.yoo-e. All rights reserved.
//

#import "UITableViewCell+SetStyle.h"

// 怎么说呢……等待重构

@implementation UITableViewCell (SetSelectedStyle)

-(void)addSeparaLineAtBottomWithCellHeight:(CGFloat)height {
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                height-1,
                                                                self.bounds.size.width,
                                                                1)];
    [lineView setBackgroundColor:[UIColor grayColor]];
    [self addSubview:lineView];
}
-(void)setSelectedBackgroundWithHeight:(CGFloat)height color:(UIColor *)color{
    UIView * bgView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                               0,
                                                               self.bounds.size.width,
                                                               height)];
    [bgView setBackgroundColor:color];
    [self.selectedBackgroundView addSubview:bgView];
}
-(void)addSelectedBottomLineWithHeight:(CGFloat)height {
    UIView *lineView = [[UIView alloc] initWithFrame:CGRectMake(0,
                                                                height,
                                                                self.bounds.size.width,
                                                                1)];
    [lineView setBackgroundColor:[UIColor whiteColor]];
    [self.selectedBackgroundView addSubview:lineView];
}
-(void)setBackgroundImageWithHeight:(CGFloat)height image:(UIImage *)image {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,
                                                                           0,
                                                                           self.bounds.size.width,
                                                                           height)];
    [imageView setImage:image];
    self.backgroundView = imageView;
}
-(void)setSelectedBackgroundImageWithHeight:(CGFloat)height image:(UIImage *)image {
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0,
                                                                           0,
                                                                           self.bounds.size.width,
                                                                           height)];
    [imageView setImage:image];
    self.selectedBackgroundView = imageView;
}

-(void)setSelectedBackgroundColorWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath color:(UIColor*)color {
    CGRect cellRect = [tableView rectForRowAtIndexPath:indexPath];
    [self setSelectedBackgroundWithHeight:cellRect.size.height color:color];
}
-(void)addSelectedBottomLineWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath {
    CGRect cellRect = [tableView rectForRowAtIndexPath:indexPath];
    [self addSelectedBottomLineWithHeight:cellRect.size.height];
}
-(void)addSeparaLineAtBottomWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath {
    CGRect cellRect = [tableView rectForRowAtIndexPath:indexPath];
    [self addSeparaLineAtBottomWithCellHeight:cellRect.size.height];
}
-(void)setBackgroundImageWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath image:(UIImage*)image{
    CGRect cellRect = [tableView rectForRowAtIndexPath:indexPath];
    [self setBackgroundImageWithHeight:cellRect.size.height image:image];
}
-(void)setSelectedBackgroundImageWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath image:(UIImage*)image{
    CGRect cellRect = [tableView rectForRowAtIndexPath:indexPath];
    [self setSelectedBackgroundImageWithHeight:cellRect.size.height image:image];
}


@end
