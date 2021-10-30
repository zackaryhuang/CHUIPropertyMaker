//
//  UIView+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "UIView+PropertyMaker.h"

@implementation UIView (PropertyMaker)

- (void)ch_makeProperties:(void (^)(CHViewPropertyMaker *))properties {
//    UIView *view = [[UIView alloc] init];
    CHViewPropertyMaker *maker = [[CHViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
//    return view;
}

- (void)ch_makeProperties:(void (^)(CHViewPropertyMaker *))properties
            constrains:(void (^)(MASConstraintMaker *))constrains {
//    UIView *view = [[UIView alloc] init];
    CHViewPropertyMaker *maker = [[CHViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
//    return view;
}
@end
