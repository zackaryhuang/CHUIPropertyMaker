//
//  CHLabelPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHLabelPropertyMaker : CHViewPropertyMaker

/// 文字
@property (nonatomic, copy, readonly) CHLabelPropertyMaker *(^text)(NSString *text);

/// 文字
@property (nonatomic, copy, readonly) CHLabelPropertyMaker *(^attributedText)(NSAttributedString *text);

/// 字体
@property (nonatomic, copy, readonly) CHLabelPropertyMaker *(^font)(UIFont *font);

/// 颜色
@property (nonatomic, copy, readonly) CHLabelPropertyMaker *(^textColor)(UIColor *textColor);

/// 对齐方式
@property (nonatomic, copy, readonly) CHLabelPropertyMaker *(^textAlignment)(NSTextAlignment textAlignment);

/// 行数
@property (nonatomic, copy, readonly) CHLabelPropertyMaker *(^numberOfLines)(NSUInteger numberOfLines);

@end

NS_ASSUME_NONNULL_END
