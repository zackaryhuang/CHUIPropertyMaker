# CHUIPropertyMaker
---
A framework to declare UI elemet and set property for it with chain syntax grammar.

## Usage

In `podfile` add

`pod 'CHUIPropertyMaker'`

excute

`pod install`

import framework

`@import CHUIPropertyMaker`

## Example

```objc

#import "ViewController.h"
@import CHUIPropertyMaker;

@interface ViewController ()<HCDatePickerControllerDelegate>

@property (nonatomic, strong) UILabel *timeLabel;
@property (nonatomic, strong) NSDateFormatter *dateFormatter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 1. The way we used to declare an UI element like this.
    UIButton *btn = [[UIButton alloc] init];
    btn.center = CGPointMake(self.view.center.x, self.view.center.y + 50);
    [self.view addSubview:btn];
    [btn setTitle:@"Click Me!" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor whiteColor];
    btn.layer.cornerRadius = 20;
    btn.layer.shadowOffset = CGSizeMake(0, 1);
    btn.layer.shadowColor = [UIColor blackColor].CGColor;
    btn.layer.shadowOpacity = 0.1;
    btn.layer.shadowRadius = 1;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    // 2. A new way to declare UI element With CHUIPropertyMaker
    UIButton *newBtn = [[UIButton alloc] init];
    [newBtn ch_makeButtonProperties:^(CHButtonPropertyMaker *make) {
        make.title(@"Click Me").forState(UIControlStateNormal);
        make.titleColor(UIColor.blackColor).forState(UIControlStateNormal);
        make.cornerRadius(20);
        make.shadow(UIColor.blackColor, 0.1, CGSizeMake(0, 1), 1);
        make.superView(self.view);
        make.action(@selector(btnClick:)).withTarget(self).forEvent(UIControlEventTouchUpInside);
    } constrains:^(MASConstraintMaker *make) {
        make.width.equalTo(@100);
        make.height.equalTo(@40);
        make.top.equalTo(self.timeLabel.mas_bottom).offset(12);
        make.centerX.equalTo(self.view);
    }];
}

- (void)btnClick:(UIButton *)btn {
    // Button Click Action
}

```

## Dependency
`Masonry`

