//
//  ChooseCityViewController.h
//  CommonComponent
//
//  Created by mac on 2017/8/3.
//  Copyright © 2017年 张煜超. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^DidCellBlock)(NSString * str);

@interface ChooseCityViewController : UIViewController

@property (nonatomic, copy) DidCellBlock block;

@end
