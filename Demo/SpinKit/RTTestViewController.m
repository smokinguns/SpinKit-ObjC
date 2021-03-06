//
//  RTTestViewController.m
//  SpinKit
//
//  Created by Ramon Torres on 1/1/14.
//  Copyright (c) 2014 Ramon Torres. All rights reserved.
//

#import "RTTestViewController.h"
#import "RTSpinKitView.h"

@interface RTTestViewController ()

@end

@implementation RTTestViewController

-(void)insertSpinner:(RTSpinKitView*)spinner
             atIndex:(NSInteger)index
     backgroundColor:(UIColor*)backgroundColor
               label:(NSString *)labelString
{
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = CGRectGetWidth(screenBounds);
    
    UIView *panel = [[UIView alloc] initWithFrame:CGRectOffset(screenBounds, screenWidth * index, 0.0)];
    panel.backgroundColor = backgroundColor;
    
    spinner.center = CGPointMake(CGRectGetMidX(screenBounds), CGRectGetMidY(screenBounds));
    [spinner startAnimating];
    
    [panel addSubview:spinner];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 50.0, screenWidth, 30.0)];
    label.text = labelString;
    label.font = [UIFont systemFontOfSize:25.0];
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    [panel addSubview:label];
    
    UIScrollView *scrollView = (UIScrollView*)self.view;
    [scrollView addSubview:panel];
}

-(void)loadView {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    scrollView.pagingEnabled = YES;
    scrollView.alwaysBounceVertical = NO;
    scrollView.alwaysBounceHorizontal = YES;
    scrollView.backgroundColor = [UIColor darkGrayColor];
    self.view = scrollView;

    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStylePlane color:[UIColor whiteColor]]
                atIndex:0
        backgroundColor:[UIColor colorWithRed:0.827 green:0.329 blue:0 alpha:1.0]
                  label:@"Plane"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleBounce color:[UIColor whiteColor]]
                atIndex:1
        backgroundColor:[UIColor colorWithRed:0.173 green:0.243 blue:0.314 alpha:1.0]
                  label:@"Bounce"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleWave color:[UIColor whiteColor]]
                atIndex:2
        backgroundColor:[UIColor colorWithRed:0.102 green:0.737 blue:0.612 alpha:1.0]
                  label:@"Wave"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleWanderingCubes color:[UIColor whiteColor]]
                atIndex:3
        backgroundColor:[UIColor colorWithRed:0.161 green:0.502 blue:0.725 alpha:1.0]
                  label:@"WanderingCubes"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStylePulse color:[UIColor whiteColor]]
                atIndex:4
        backgroundColor:[UIColor colorWithRed:0.498 green:0.549 blue:0.553 alpha:1.0]
                  label:@"Pulse"];

    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleCircleFlip color:[UIColor whiteColor]]
                atIndex:5
        backgroundColor:[UIColor colorWithWhite:0.200 alpha:1.000]
                  label:@"CircleFlip"];

    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleChasingDots color:[UIColor whiteColor]]
                atIndex:6
        backgroundColor:[UIColor colorWithRed:0.95 green:0.77 blue:0.06 alpha:1.0]
                  label:@"ChasingDots"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleThreeBounce color:[UIColor whiteColor]]
                atIndex:7
        backgroundColor:[UIColor colorWithRed:0.83 green:0.33 blue:0.0 alpha:1.0]
                  label:@"ThreeBounce"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleCircle color:[UIColor whiteColor]]
                atIndex:8
        backgroundColor:[UIColor colorWithRed:0.15 green:0.68 blue:0.38 alpha:1.0]
                  label:@"Circle"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyle9CubeGrid color:[UIColor whiteColor]]
                atIndex:9
        backgroundColor:[UIColor colorWithRed:0.68 green:0.15 blue:0.47 alpha:1.0]
                  label:@"9CubeGrid"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleWordPress color:[UIColor whiteColor]]
                atIndex:10
        backgroundColor:[UIColor colorWithRed:0.08 green:0.57 blue:0.86 alpha:1.0]
                  label:@"WordPress"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleFadingCircle color:[UIColor whiteColor]]
                atIndex:11
        backgroundColor:[UIColor colorWithRed:0.0 green:0.60 blue:0.24 alpha:1.0]
                  label:@"FadingCircle"];
    
    [self insertSpinner:[[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleFadingCircleAlt color:[UIColor whiteColor]]
                atIndex:12
        backgroundColor:[UIColor colorWithRed:0.60 green:0.0 blue:0.0 alpha:1.0]
                  label:@"FadingCircleAlt"];
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    scrollView.contentSize = CGSizeMake(13 * CGRectGetWidth(screenBounds), CGRectGetHeight(screenBounds));
}

-(UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
