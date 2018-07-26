//
//  ViewController.m
//  ButtonWithLoader
//
//  Created by shourov datta on 7/25/18.
//  Copyright © 2018 shourov datta. All rights reserved.
//

#import "ViewController.h"
#import "SHLoaderButton.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btnoutlet;
@property (weak, nonatomic) IBOutlet SHLoaderButton *btnActionLoader;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnAction:(id)sender {
    
    //[self.btnoutlet setSelected:YES];
    self.btnoutlet.highlighted = YES;
    self.btnoutlet.titleLabel.alpha = .5;
    
}
- (IBAction)btnActionStopLoading:(id)sender {
    self.btnActionLoader.stopLoader = YES;
    
}


@end
