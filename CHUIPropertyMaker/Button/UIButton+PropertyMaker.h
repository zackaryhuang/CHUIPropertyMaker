//
//  UIButton+PropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"
#import "CHButtonPropertyMaker.h"

@interface UIButton (PropertyMaker)

- (void)ch_makeButtonProperties:(void(^)(CHButtonPropertyMaker *make))properties;

- (void)ch_makeButtonProperties:(void(^)(CHButtonPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains;

@end
