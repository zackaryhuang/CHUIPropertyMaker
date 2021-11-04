//
//  UITableView+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "UITableView+PropertyMaker.h"

@implementation UITableView (PropertyMaker)
- (void)ch_makeTableViewProperties:(void (NS_NOESCAPE^)(CHTableViewPropertyMaker * _Nonnull))properties {
    CHTableViewPropertyMaker *maker = [[CHTableViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)ch_makeTableViewProperties:(void (NS_NOESCAPE^)(CHTableViewPropertyMaker * _Nonnull))properties
                      constrains:(void (NS_NOESCAPE^)(MASConstraintMaker * _Nonnull))constrains {
    CHTableViewPropertyMaker *maker = [[CHTableViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}
@end
