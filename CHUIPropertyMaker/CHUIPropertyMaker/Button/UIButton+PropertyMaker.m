//
//  UIButton+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "UIButton+PropertyMaker.h"

@implementation UIButton (PropertyMaker)

- (void)ch_makeButtonProperties:(void (^)(CHButtonPropertyMaker *))properties {
    CHButtonPropertyMaker *maker = [[CHButtonPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)ch_makeButtonProperties:(void (^)(CHButtonPropertyMaker *))properties
                  constrains:(void (^)(MASConstraintMaker *))constrains {
    CHButtonPropertyMaker *maker = [[CHButtonPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}
@end
