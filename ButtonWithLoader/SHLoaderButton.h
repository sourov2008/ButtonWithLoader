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

/*
 * set loader indicator color
 */
@property (nonatomic, strong) IBInspectable UIColor *indicatorColor;


/*
 * set ButtonText Color after touch inside
 */

@property (nonatomic, strong) IBInspectable UIColor *buttonTextColorWhenIdicatorStartAnimating;


/*
 * set loader indicator view style 
 */
@property (nonatomic)  UIActivityIndicatorViewStyle indicatorViewStyle;



@end
