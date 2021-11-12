//
//  CHScrollViewPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "CHViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHScrollViewPropertyMaker : CHViewPropertyMaker

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^delegate)(id<UIScrollViewDelegate> delegate);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^contentOffset)(CGPoint contentOffset);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^contentSize)(CGSize contentSize);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^contentInset)(UIEdgeInsets contentInset);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^bounces)(BOOL bounces);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^alwaysBounceVertical)(BOOL alwaysBounceVertical);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^pagingEnabled)(BOOL pagingEnabled);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^scrollEnabled)(BOOL scrollEnabled);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^indicatorStyle)(UIScrollViewIndicatorStyle indicatorStyle);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^verticalScrollIndicatorInsets)(UIEdgeInsets verticalScrollIndicatorInsets);

@property (nonatomic, copy, readonly) CHScrollViewPropertyMaker *(^horizontalScrollIndicatorInsets)(UIEdgeInsets horizontalScrollIndicatorInsets);
@end

NS_ASSUME_NONNULL_END
