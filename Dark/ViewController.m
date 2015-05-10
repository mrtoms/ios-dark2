//
//  ViewController.m
//  Dark
//
//  Created by apple on 15/5/4.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import "ViewController.h"

typedef void (^MyBlock) (int ,int);
//宏订义
#define M_WIDTH 5

@interface ViewController ()

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

-(void) test : (void (^)()) TestBlock{
   
    TestBlock();

}

- (IBAction)btn_Click:(id)sender {
    
//    [self test:^{
//        
//        NSLog(@"匿名block successfully");
//    }];
    
    //开始动画
    [UIView beginAnimations:nil context:nil];
    
    //动画间隔时间
    [UIView setAnimationDuration:1.0];
    
    //CGRect rect = [_ImageDark frame];
    CGPoint cP = _ImageDark.center;

    long tag = [sender tag];
    
    switch (tag) {
        case 0:
            cP.y -= M_WIDTH;
            //rect.origin.y -= M_WIDTH;
            break;
        case 1:
             //rect.origin.x -= M_WIDTH;
            cP.x -= M_WIDTH;
            break;
        case 2:
             //rect.origin.y += M_WIDTH;
            cP.y += M_WIDTH;
            break;
        case 3:
             //rect.origin.x += M_WIDTH;
            cP.x += M_WIDTH;
            break;
        case 4:
            _ImageDark.transform = CGAffineTransformScale(_ImageDark.transform,1.2, 1.2);
            break;
        case 5:
            _ImageDark.transform = CGAffineTransformScale(_ImageDark.transform, 0.8, 0.8);
            break;
            
            case 6:
            _ImageDark.transform = CGAffineTransformRotate(_ImageDark.transform,M_PI_4);
            break;
        case 7:
            _ImageDark.transform = CGAffineTransformRotate(_ImageDark.transform, M_PI_4 * -1);
            break;
            
        default:
            NSLog(@"no.......");
            break;
    }
    
    if(tag < 4)
    {
        //清空形变属性
        //_ImageDark.transform = CGAffineTransformIdentity;
        
        [_ImageDark setCenter:cP];
    }
    
    //动画效果结束
    [UIView commitAnimations];
}
@end
