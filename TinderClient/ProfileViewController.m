//
//  ProfileViewController.m
//  TinderClient
//
//  Created by anjaneya kamat on 9/18/15.
//  Copyright (c) 2015 anjaneya kamat. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController
- (void)setImage:(UIImage *)image
{
    _image = image;
    [self updateImage];
}
- (void)updateImage
{
    self.imageView.image = self.image;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateImage];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)dismissProfileView:(id)sender {
    NSLog(@"dismissProfileView");
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
