//
//  RootViewController.m
//  testCrash
//
//  Created by Bill Cheng on 13-8-31.
//  Copyright (c) 2013年 R3 Studio. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        label = [UILabel new];
        label.text = @"سمَـَّوُوُحخ ̷̴̐خ ̷̴̐خ ̷̴̐خ امارتيخ ̷̴̐خ ";
        label.frame = CGRectMake(0, 0, 20, 100);
        [self.view addSubview:label];
        
        UIWebView *webview = [UIWebView new];
        webview.frame =CGRectMake(100, 100, 100, 100);
        //[webview loadHTMLString:@"سمَـَّوُوُحخ ̷̴̐خ ̷̴̐خ ̷̴̐خ امارتيخ ̷̴̐خ " baseURL:nil];
        [self.view addSubview:webview];
        
        for (int i=0;i<7;i++){
            UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            btn.frame =CGRectMake(100, 105 + i * 30, 120, 20);
            [btn setTitle:[NSString stringWithFormat:@"%d", i] forState:UIControlStateNormal];
            btn.tag = i;
            [btn addTarget:self action:@selector(Test:) forControlEvents:UIControlEventTouchUpInside];
            [self.view addSubview:btn];
        }
    }
    return self;
}

- (void)Test:(UIButton*)btn
{
    switch (btn.tag) {
        case 0:{
            [UIView animateWithDuration:2 animations:^{
                label.frame = CGRectMake(0, 0, 30, 100);
            }];
            break;
        }
        case 1:{
            [UIView animateWithDuration:2 animations:^{
                label.frame = CGRectMake(0, 0, 40, 100);
            }];
            break;
        }
        case 2:{
            [UIView animateWithDuration:2 animations:^{
                label.frame = CGRectMake(0, 0, 50, 100);
            }];
            break;
        }
        case 3:{
            [UIView animateWithDuration:3 animations:^{
                label.frame = CGRectMake(0, 0, 60, 100);
            }];
            break;
        }
        case 4:{
            [UIView animateWithDuration:3 animations:^{
                label.frame = CGRectMake(0, 0, 70, 100);
            }];
            break;
        }
        case 5:{
            [UIView animateWithDuration:3 animations:^{
                label.frame = CGRectMake(0, 0, 80, 100);
            }];
            break;
        }
        case 6:{
            [UIView animateWithDuration:4 animations:^{
                label.frame = CGRectMake(0, 0, 90, 100);
            }];
            break;
        }
            
        default:
            break;
    }
}

- (void)viewDidAppear:(BOOL)animated
{
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

@end
