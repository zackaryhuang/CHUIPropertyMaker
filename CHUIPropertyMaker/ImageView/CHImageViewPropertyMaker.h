//
//  CHImageViewPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHImageViewPropertyMaker : CHViewPropertyMaker

/// 图片
@property (nonatomic, copy, readonly) CHImageViewPropertyMaker *(^image)(UIImage *image);

@property (nonatomic, copy, readonly) CHImageViewPropertyMaker *(^animationImages)(NSArray<UIImage *> *animationImages);

@property (nonatomic, copy, readonly) CHImageViewPropertyMaker *(^animationDuration)(NSTimeInterval animationDuration);

@property (nonatomic, copy, readonly) CHImageViewPropertyMaker *(^animationRepeatCount)(NSInteger animationRepeatCount);
@end

NS_ASSUME_NONNULL_END
