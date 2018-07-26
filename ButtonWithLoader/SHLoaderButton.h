//
//  SHLoaderButton.h
//  ButtonWithLoader
//
//  Created by shourov datta on 7/25/18.
//  Copyright © 2018 shourov datta. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE @interface SHLoaderButton : UIButton

@property( nonatomic ) BOOL stopLoader;


/** Trailing constant of loader indicator due to button . Default is 8.
 */
@property (nonatomic) IBInspectable CGFloat trailingMarginOfLoader;

//typedef NS_ENUM(NSInteger, LabelStyle)
//{
//    LabelStyleContent = 0, //Default to content label
//    LabelStyleHeader,
//};
//
//
//@property LabelStyle labelStyle;
//@property (nonatomic, setter=setLabelAsInt:) IBInspectable NSInteger labelStyleLink;


/*
 * set loader indicator
 */
@property (nonatomic) IBInspectable UIColor *indicatorColor;


@end
