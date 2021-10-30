//
//  UIImageView+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "UIImageView+PropertyMaker.h"

@implementation UIImageView (PropertyMaker)

- (void)ch_makeImageViewProperties:(void (NS_NOESCAPE ^)(CHImageViewPropertyMaker * _Nonnull))properties {
    CHImageViewPropertyMaker *maker = [[CHImageViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)ch_makeImageViewProperties:(void (NS_NOESCAPE ^)(CHImageViewPropertyMaker * _Nonnull))properties
                   constrains:(void (NS_NOESCAPE ^)(MASConstraintMaker * _Nonnull))constrains {
    CHImageViewPropertyMaker *maker = [[CHImageViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}

@end
