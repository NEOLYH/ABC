//
//  HomeViewController.m
//  Lu_MVP
//
//  Created by apple on 2018/11/12.
//  Copyright © 2018 apple. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor brownColor];
    
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 200, 110)];
    button.center = self.view.center;
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];
    [button addTarget:self action:@selector(go) forControlEvents:UIControlEventTouchUpInside];
}

-(void)go{
    NSLog(@"456465456");
    NSString *customURL = @"Lu_MVP://push/HomeDetailViewController?userId=99999&age=18";
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:customURL]];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
