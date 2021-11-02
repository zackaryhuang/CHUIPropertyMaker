//
//  CHViewPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHViewPropertyMaker : NSObject

@property (nonatomic, weak, readonly) UIView *view;

- (instancetype)initWithView:(UIView *)view;

/// 设置父控件
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^superView)(UIView *superView);

/// 是否响应交互
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^userInteractionEnabled)(BOOL enable);

/// 添加阴影
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^shadow)(UIColor *shadowColor, CGFloat shadowOpacity, CGSize shadowOffset, CGFloat shadowRadius);

/// 设置背景颜色
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^backgroundColor)(UIColor *backgroundColor);

/// 设置圆角
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^cornerRadius)(CGFloat cornerRadius);

@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^clipToBounds)(BOOL clipToBounds);

/// 添加点击手势事件
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^tapGestureAction)(id target, SEL selector);

/// 添加长按手势事件
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^longPressGestureAction)(id target, SEL selector);

/// 设置Frame
@property (nonatomic, copy, readonly) CHViewPropertyMaker *(^frame)(CGFloat x, CGFloat y, CGFloat width, CGFloat height);

@end

NS_ASSUME_NONNULL_END
