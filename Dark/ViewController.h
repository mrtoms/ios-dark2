//
//  ViewController.h
//  Dark
//
//  Created by apple on 15/5/4.
//  Copyright (c) 2015年 HanHe. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^OnClick) (UIButton *);

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *ImageDark;

- (IBAction)btn_Click:(id)sender;

@property(nonatomic,copy) OnClick lock;

-(void) test : (void (^)()) TestBlock;

@end

