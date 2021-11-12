//
//  UIImageView+PropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
@import Masonry;
#import "CHImageViewPropertyMaker.h"

@interface UIImageView (PropertyMaker)

- (void)ch_makeImageViewProperties:(void(NS_NOESCAPE ^)(CHImageViewPropertyMaker *make))properties;

- (void)ch_makeImageViewProperties:(void(NS_NOESCAPE ^)(CHImageViewPropertyMaker *make))properties constrains:(void(NS_NOESCAPE ^)(MASConstraintMaker *make))constrains;

@end
