//
//  ViewController.m
//  CHUIPropertyMaker
//
//  Created by Mac on 2021/10/30.
//

#import "ViewController.h"
#import "UIView+PropertyMaker.h"
#import "UILabel+PropertyMaker.h"
#import "UIButton+PropertyMaker.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:UIColor.whiteColor];
    
    UIView *view = [[UIView alloc] init];
    [view ch_makeProperties:^(CHViewPropertyMaker *make) {
        make.superView(self.view);
        make.backgroundColor(UIColor.redColor);
        make.cornerRadius(10);
        make.clipToBounds(YES);
    } constrains:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.height.equalTo(@100);
    }];
    
    UILabel *label = [[UILabel alloc] init];
    [label ch_makeLabelProperties:^(CHLabelPropertyMaker *make) {
        make.text(@"this is a test label");
        make.textAlignment(NSTextAlignmentCenter);
        make.backgroundColor(UIColor.blueColor);
        make.font([UIFont systemFontOfSize:12]);
        make.textColor(UIColor.yellowColor);
        make.superView(view);
    } constrains:^(MASConstraintMaker *make) {
        make.center.equalTo(view);
    }];
    
    UIButton *btn = [[UIButton alloc] init];
    [btn ch_makeButtonProperties:^(CHButtonPropertyMaker *make) {
        make.title(@"this is a button");
        make.image([UIImage imageNamed:@"btn_star"]).forState(UIControlStateNormal);
        make.image([UIImage imageNamed:@"btn_starred"]).forState(UIControlStateSelected);
        make.action(@selector(star:)).withTarget(self).forEvent(UIControlEventTouchUpInside);
        make.superView(self.view);
    } constrains:^(MASConstraintMaker *make) {
        make.top.equalTo(view.mas_bottom).offset(5);
        make.width.height.equalTo(@30);
        make.centerX.equalTo(view);
    }];
}

- (void)star:(UIButton *)btn {
    [btn setSelected:!btn.isSelected];
}

@end
