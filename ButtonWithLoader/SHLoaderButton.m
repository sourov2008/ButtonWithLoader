//
//  SHLoaderButton.m
//  ButtonWithLoader
//
//  Created by shourov datta on 7/25/18.
//  Copyright © 2018 shourov datta. All rights reserved.
//

#import "SHLoaderButton.h"

@implementation SHLoaderButton{
    
    UIColor *buttonTextColor;
}



- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) [self commonInit];
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super initWithCoder:coder];
    if (self) [self commonInit];
    return self;
}


-(void)setStopLoader :( BOOL) isStopped {
 // Will stop loading if found yes
    if (isStopped) {
        NSArray *subviews = self.subviews.copy;
        for (UIActivityIndicatorView *indicator in subviews) {
            
            if ([indicator isKindOfClass:[UIActivityIndicatorView class]]) {
                [indicator stopAnimating];
                
            }
        }
    }
    
    [self setTitleColor:buttonTextColor forState:UIControlStateNormal];



}


- (void)commonInit
{

    [self addTarget:self
               action:@selector(touchUpInside)
     forControlEvents:UIControlEventTouchUpInside];
    
    self.trailingMarginOfLoader = 8;
    self.indicatorColor = [UIColor grayColor];
    self.indicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    buttonTextColor = self.titleLabel.textColor;
    
    
//    float rightArrowHeight = 22;
//    float rightArrowWidth = 22;
//
//
//    // Commmont Init
//    //UIImageView *rightArrow =[[UIImageView alloc]initWithFrame:CGRectZero];
//    //rightArrow.image = [UIImage imageNamed:@"rightarrowhover"];
//
//    UILabel *rightArrow = [[UILabel alloc]initWithFrame:CGRectZero];
//    rightArrow.backgroundColor = [UIColor greenColor];
//
//
//    rightArrow.translatesAutoresizingMaskIntoConstraints = NO;
//    [rightArrow setContentMode:UIViewContentModeScaleAspectFit];
//    //[rightArrow sizeToFit];
//
//
//
//    // Height
//    [rightArrow addConstraint:[NSLayoutConstraint constraintWithItem:rightArrow attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:rightArrowHeight]];
//
//    //Width
//    [rightArrow addConstraint:[NSLayoutConstraint constraintWithItem:rightArrow attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:rightArrowWidth]];
//
//    // center
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:rightArrow attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:rightArrow attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
//
//    //[self addConstraint:[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:150]];
//
//   //  trainling
//    [self addConstraint:[NSLayoutConstraint constraintWithItem:rightArrow attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:self.frame.size.width - (rightArrowWidth + self.trailingMarginOfLoader)]];
//
//    [self addSubview:rightArrow];

    


}

-(void)touchUpInside{
    
    // If previous Loader found then delete it . It cause happens when user multiple tap on button
    NSArray *subviews = self.subviews.copy;
    for (UIView *view in subviews) {
        
        if ([view isKindOfClass:[UIActivityIndicatorView class]]) {
            [view removeFromSuperview];

        }
        
    }
 
   // Commmont Init
    UIActivityIndicatorView *indicator =[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:self.indicatorViewStyle];
    //indicator.frame = CGRectZero;
    //indicator.backgroundColor = [UIColor redColor];
    indicator.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:indicator];
    
    // Height
    [indicator addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:indicator.frame.size.height]];
    
    //Width
    [indicator addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:indicator.frame.size.width]];
    
    // leading
    [self addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    //[self addConstraint:[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:150]];
    
    // trainling
    [self addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:self.frame.size.width - (indicator.frame.size.height + self.trailingMarginOfLoader)]];
    
    
    indicator.color = self.indicatorColor;
    
    if (self.buttonTextColorWhenIdicatorStartAnimating) {
        
        [self setTitleColor:self.buttonTextColorWhenIdicatorStartAnimating forState:UIControlStateNormal];

        
    }
    //[self setTitleColor:[UIColor colorWithRed:205/255.f green:205/255.f blue:205/255.f alpha:1] forState:UIControlStateNormal];


    [indicator startAnimating];
    
    [self addSubview:indicator];
    
    

}



@end
