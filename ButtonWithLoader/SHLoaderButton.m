//
//  SHLoaderButton.m
//  ButtonWithLoader
//
//  Created by shourov datta on 7/25/18.
//  Copyright © 2018 shourov datta. All rights reserved.
//

#import "SHLoaderButton.h"

@implementation SHLoaderButton



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


}





- (void)commonInit
{

    [self addTarget:self
               action:@selector(touchUpInside)
     forControlEvents:UIControlEventTouchUpInside];


}

-(void)touchUpInside{
    
    // If previous Loader found then delete it . It cause happens when user multiple tap on button
    NSArray *subviews = self.subviews.copy;
    for (UIView *view in subviews) {
        
        if ([view isKindOfClass:[UIActivityIndicatorView class]]) {
            [view removeFromSuperview];

        }
        
    }
    
 
    UIActivityIndicatorView *indicator =[[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray];
    indicator.frame = CGRectZero;
    //indicator.backgroundColor = [UIColor redColor];
    indicator.translatesAutoresizingMaskIntoConstraints = NO;
    [self addSubview:indicator];
    
    [indicator addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:30]];
    
    [indicator addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:0 multiplier:1 constant:30]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterY multiplier:1 constant:0]];
    
    //[self addConstraint:[NSLayoutConstraint constraintWithItem:redView attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeCenterX multiplier:1 constant:150]];
    
    [self addConstraint:[NSLayoutConstraint constraintWithItem:indicator attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:self attribute:NSLayoutAttributeLeft multiplier:1 constant:343]];
    
    [indicator startAnimating];
    
    [self addSubview:indicator];
    
}



@end
