//
//  UICollectionView+PropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import <UIKit/UIKit.h>
#import "CHCollectionViewPropertyMaker.h"
#import "Masonry.h"
NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (PropertyMaker)

- (void)ch_makeCollectionViewProperties:(void(NS_NOESCAPE ^)(CHCollectionViewPropertyMaker *make))properties;

/// 创建 ScrollView
/// @param properties 样式
/// @param constrains 约束
- (void)ch_makeCollectionViewProperties:(void(NS_NOESCAPE ^)(CHCollectionViewPropertyMaker *make))properties
                      constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end

NS_ASSUME_NONNULL_END
