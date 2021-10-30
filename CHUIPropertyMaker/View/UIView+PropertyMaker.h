//
//  UIView+PropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
#import "CHViewPropertyMaker.h"
#import "Masonry.h"

@interface UIView (PropertyMaker)

- (void)ch_makeProperties:(void(^)(CHViewPropertyMaker *make))properties;

- (void)ch_makeProperties:(void(^)(CHViewPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains;

@end
