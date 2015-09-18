//
//  ProfileViewController.h
//  TinderClient
//
//  Created by anjaneya kamat on 9/18/15.
//  Copyright (c) 2015 anjaneya kamat. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProfileViewController : UIViewController<UIViewControllerTransitioningDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) UIImage *image;
@end
