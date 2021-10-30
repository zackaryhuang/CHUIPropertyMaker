//
//  CHButtonPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHViewPropertyMaker.h"
#import "CHButtonProperty.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHButtonPropertyMaker : CHViewPropertyMaker

/// 添加点击事件处理
@property (nonatomic, copy, readonly) CHButtonActionProperty *(^action)(SEL selector);

/// 根据 state 设置文字颜色
@property (nonatomic, copy, readonly) CHButtonProperty *(^titleColor)(UIColor *titleColor);

/// 根据 state 设置文案
@property (nonatomic, copy, readonly) CHButtonProperty *(^title)(NSString *title);

/// 根据 state 设置图片
@property (nonatomic, copy, readonly) CHButtonProperty *(^image)(UIImage *image);

/// 根据 state 设置图片
@property (nonatomic, copy, readonly) CHButtonProperty *(^attributedTitle)(NSAttributedString *attributedTitle);

@end

NS_ASSUME_NONNULL_END
