//
//  CHScrollViewPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "CHScrollViewPropertyMaker.h"

@implementation CHScrollViewPropertyMaker

- (CHScrollViewPropertyMaker * _Nonnull (^)(id<UIScrollViewDelegate> _Nonnull))delegate {
    return ^CHScrollViewPropertyMaker *(id<UIScrollViewDelegate> delegate) {
        [(UIScrollView *)self.view setDelegate:delegate];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(CGPoint))contentOffset {
    return ^CHScrollViewPropertyMaker *(CGPoint contentOffset) {
        [(UIScrollView *)self.view setContentOffset:contentOffset];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(CGSize))contentSize {
    return ^CHScrollViewPropertyMaker *(CGSize contentSize) {
        [(UIScrollView *)self.view setContentSize:contentSize];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(UIEdgeInsets))contentInset {
    return ^CHScrollViewPropertyMaker *(UIEdgeInsets contentInset) {
        [(UIScrollView *)self.view setContentInset:contentInset];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))bounces {
    return ^CHScrollViewPropertyMaker *(BOOL bounces) {
        [(UIScrollView *)self.view setBounces:bounces];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))alwaysBounceVertical {
    return ^CHScrollViewPropertyMaker *(BOOL alwaysBounceVertical) {
        [(UIScrollView *)self.view setAlwaysBounceVertical:alwaysBounceVertical];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))alwaysBounceHorizontal {
    return ^CHScrollViewPropertyMaker *(BOOL alwaysBounceHorizontal) {
        [(UIScrollView *)self.view setAlwaysBounceHorizontal:alwaysBounceHorizontal];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))pagingEnabled {
    return ^CHScrollViewPropertyMaker *(BOOL pagingEnabled) {
        [(UIScrollView *)self.view setPagingEnabled:pagingEnabled];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))scrollEnabled {
    return ^CHScrollViewPropertyMaker *(BOOL scrollEnabled) {
        [(UIScrollView *)self.view setScrollEnabled:scrollEnabled];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))showsVerticalScrollIndicator {
    return ^CHScrollViewPropertyMaker *(BOOL showsVerticalScrollIndicator) {
        [(UIScrollView *)self.view setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(BOOL))showsHorizontalScrollIndicator {
    return ^CHScrollViewPropertyMaker *(BOOL showsHorizontalScrollIndicator) {
        [(UIScrollView *)self.view setShowsVerticalScrollIndicator:showsHorizontalScrollIndicator];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(UIScrollViewIndicatorStyle))indicatorStyle {
    return ^CHScrollViewPropertyMaker *(UIScrollViewIndicatorStyle indicatorStyle) {
        [(UIScrollView *)self.view setIndicatorStyle:indicatorStyle];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(UIEdgeInsets))verticalScrollIndicatorInsets {
    return ^CHScrollViewPropertyMaker *(UIEdgeInsets verticalScrollIndicatorInsets) {
        [(UIScrollView *)self.view setVerticalScrollIndicatorInsets:verticalScrollIndicatorInsets];
        return self;
    };
}

- (CHScrollViewPropertyMaker * _Nonnull (^)(UIEdgeInsets))horizontalScrollIndicatorInsets {
    return ^CHScrollViewPropertyMaker *(UIEdgeInsets horizontalScrollIndicatorInsets) {
        [(UIScrollView *)self.view setHorizontalScrollIndicatorInsets:horizontalScrollIndicatorInsets];
        return self;
    };
}
@end
