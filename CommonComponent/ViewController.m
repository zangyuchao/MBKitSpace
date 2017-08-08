//
//  ViewController.m
//  CommonComponent
//
//  Created by mac on 2017/8/3.
//  Copyright © 2017年 张煜超. All rights reserved.
//

#import "ViewController.h"
#import "ChooseCityViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * chooseBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 200, 100, 100)];
    [chooseBtn setTitle:@"选择城市" forState:UIControlStateNormal];
    chooseBtn.backgroundColor  = [UIColor redColor];
    [chooseBtn addTarget:self action:@selector(didBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:chooseBtn];
    
}


-(void)didBtn
{
    ChooseCityViewController * vc = [[ChooseCityViewController alloc] init];
    vc.block = ^(NSString * str){
        NSLog(@"++++++++++++%@",str);
    };
    [self presentViewController:vc animated:YES completion:^{
        ;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
