//
//  UILabel+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "UILabel+PropertyMaker.h"

@implementation UILabel (PropertyMaker)

- (void)ch_makeLabelStyles:(void(^)(CHLabelPropertyMaker *make))properties {
    CHLabelPropertyMaker *maker = [[CHLabelPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)ch_makeLabelProperties:(void(^)(CHLabelPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains {
    CHLabelPropertyMaker *maker = [[CHLabelPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}

@end
