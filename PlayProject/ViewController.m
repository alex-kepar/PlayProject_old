//
//  ViewController.m
//  PlayProject
//
//  Created by Oleksandr Kiporenko on 4/24/15.
//  Copyright (c) 2015 Oleksandr Kiporenko. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property UISearchBar *sb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(orientationChanged:)
                                                 name:UIDeviceOrientationDidChangeNotification
                                               object:nil];
    
    _sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 70, 320, 44)];
    [self.view addSubview:_sb];
    [_sb becomeFirstResponder];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)orientationChanged:(NSNotification *)notification
{
    [_sb removeFromSuperview];
    NSLog(@"*******************");
    _sb = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 70, 320, 44)];
    [self.view addSubview:_sb];
    [_sb becomeFirstResponder];
}

@end
