//
//  ViewController.m
//  TinderClient
//
//  Created by anjaneya kamat on 9/18/15.
//  Copyright (c) 2015 anjaneya kamat. All rights reserved.
//

#import "ViewController.h"
#import "ProfileViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *panGestureView;

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property (nonatomic, assign) BOOL isPresenting;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.cardImageView.image = [UIImage imageNamed:@"ryan"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)onTapGesture:(id)sender {

    CGPoint location = [sender locationInView:self.view];
    NSLog(@"onTapGesture: %@", NSStringFromCGPoint(location));
    
    ProfileViewController *vc = [[ProfileViewController alloc] initWithNibName:nil bundle:nil];
    vc.image = self.cardImageView.image;
    
    [self presentViewController:vc animated:YES completion:nil];
    

}

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.5;
}

- (id)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source {
    self.isPresenting = YES;
    return self;
}

- (id)animationControllerForDismissedController:(UIViewController *)dismissed {
    self.isPresenting = NO;
    return self;
}



- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    NSLog(@"animateTransition");
    



}



@end
