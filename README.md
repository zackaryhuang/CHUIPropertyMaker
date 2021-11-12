# CHUIPropertyMaker
---
基于链式语法的 UI 属性生成器

## 使用

在 `podfile` 中添加
`pod 'CHUIPropertyMaker'`
执行
`pod install`

```objc
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
    make.image([UIImage imageNamed:@"btn_star"]).forState(UIControlStateNormal);
    make.image([UIImage imageNamed:@"btn_starred"]).forState(UIControlStateSelected);
    make.action(@selector(star:)).withTarget(self).forEvent(UIControlEventTouchUpInside);
    make.superView(self.view);
} constrains:^(MASConstraintMaker *make) {
    make.top.equalTo(view.mas_bottom).offset(5);
    make.width.height.equalTo(@30);
    make.centerX.equalTo(view);
}];

UIImageView *imgView = [[UIImageView alloc] init];
[imgView ch_makeImageViewProperties:^(CHImageViewPropertyMaker *make) {
    make.image([UIImage imageNamed:@"btn_star"]);
    make.backgroundColor(UIColor.cyanColor);
    make.superView(self.view);
} constrains:^(MASConstraintMaker *make) {
    make.top.equalTo(btn.mas_bottom).offset(6);
    make.width.height.equalTo(@30);
    make.centerX.equalTo(view);
}];
```

## 依赖
`Masonry`

## ChangeLog

* 20211102
初始提交
