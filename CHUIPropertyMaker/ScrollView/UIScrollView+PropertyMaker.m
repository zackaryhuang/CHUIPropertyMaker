//
//  UIScrollView+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "UIScrollView+PropertyMaker.h"

@implementation UIScrollView (PropertyMaker)

- (void)ch_makeScrollViewProperties:(void (NS_NOESCAPE^)(CHScrollViewPropertyMaker * _Nonnull))properties {
    CHScrollViewPropertyMaker *maker = [[CHScrollViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)ch_makeScrollViewProperties:(void (NS_NOESCAPE^)(CHScrollViewPropertyMaker * _Nonnull))properties
                      constrains:(void (NS_NOESCAPE^)(MASConstraintMaker * _Nonnull))constrains {
    CHScrollViewPropertyMaker *maker = [[CHScrollViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}
@end
