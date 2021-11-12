//
//  UICollectionView+PropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "UICollectionView+PropertyMaker.h"

@implementation UICollectionView (PropertyMaker)

- (void)ch_makeCollectionViewProperties:(void (NS_NOESCAPE^)(CHCollectionViewPropertyMaker * _Nonnull))properties {
    CHCollectionViewPropertyMaker *maker = [[CHCollectionViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
}

- (void)ch_makeCollectionViewProperties:(void (NS_NOESCAPE^)(CHCollectionViewPropertyMaker * _Nonnull))properties
                            constrains:(void (NS_NOESCAPE^)(MASConstraintMaker * _Nonnull))constrains {
    CHCollectionViewPropertyMaker *maker = [[CHCollectionViewPropertyMaker alloc] initWithView:self];
    if (properties) {
        properties(maker);
    }
    if (constrains) {
        [self mas_makeConstraints:constrains];
    }
}

@end
