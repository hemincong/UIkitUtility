//
//  UITableViewCell+SetSelectBackgound.h
//  MobileToken-Kingsoft-Clearlock
//
//  Created by Manchung.Ho on 5/8/14.
//  Copyright (c) 2014 com.yoo-e. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (SetSelectedStyle)

-(void)addSeparaLineAtBottomWithCellHeight:(CGFloat)height;
-(void)addSeparaLineAtBottomWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath;

-(void)setSelectedBackgroundWithHeight:(CGFloat)height color:(UIColor *)color;
-(void)setSelectedBackgroundColorWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath color:(UIColor*)color;

-(void)addSelectedBottomLineWithHeight:(CGFloat)height;
-(void)addSelectedBottomLineWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath;

-(void)setBackgroundImageWithHeight:(CGFloat)height image:(UIImage *)image;
-(void)setBackgroundImageWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath image:(UIImage*)image;

-(void)setSelectedBackgroundImageWithHeight:(CGFloat)height image:(UIImage *)image;
-(void)setSelectedBackgroundImageWithTabelView:(UITableView*)tableView indexPath:(NSIndexPath*)indexPath image:(UIImage*)image;

@end
