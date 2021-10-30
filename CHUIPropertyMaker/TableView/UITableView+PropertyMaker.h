//
//  UITableView+PropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "CHTableViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (PropertyMaker)

- (void)ch_makeTableViewProperties:(void(NS_NOESCAPE ^)(CHTableViewPropertyMaker *make))properties;

/// 创建 ScrollView
/// @param properties 样式
/// @param constrains 约束
- (void)ch_makeTableViewProperties:(void(NS_NOESCAPE ^)(CHTableViewPropertyMaker *make))properties
                      constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end

NS_ASSUME_NONNULL_END
