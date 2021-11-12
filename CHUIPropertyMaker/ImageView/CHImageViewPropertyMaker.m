//
//  CHImageViewPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHImageViewPropertyMaker.h"

@implementation CHImageViewPropertyMaker

- (CHImageViewPropertyMaker * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^CHImageViewPropertyMaker *(UIImage *image) {
        [(UIImageView *)self.view setImage:image];
        return self;
    };
}

- (CHImageViewPropertyMaker * _Nonnull (^)(NSArray<UIImage *> * _Nonnull))animationImages {
    return ^CHImageViewPropertyMaker *(NSArray<UIImage *> *animationImages) {
        [(UIImageView *)self.view setAnimationImages:animationImages];
        return self;
    };
}

- (CHImageViewPropertyMaker * _Nonnull (^)(NSTimeInterval))animationDuration {
    return ^CHImageViewPropertyMaker *(NSTimeInterval animationDuration) {
        [(UIImageView *)self.view setAnimationDuration:animationDuration];
        return self;
    };
}

- (CHImageViewPropertyMaker * _Nonnull (^)(NSInteger))animationRepeatCount {
    return ^CHImageViewPropertyMaker *(NSInteger animationRepeatCount) {
        [(UIImageView *)self.view setAnimationRepeatCount:animationRepeatCount];
        return self;
    };
}
@end
