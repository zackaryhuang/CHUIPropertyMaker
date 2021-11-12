//
//  UILabel+PropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import <UIKit/UIKit.h>
#import "CHLabelPropertyMaker.h"
@import Masonry;

@interface UILabel (PropertyMaker)

- (void)ch_makeLabelStyles:(void(^)(CHLabelPropertyMaker *make))properties;

- (void)ch_makeLabelProperties:(void(^)(CHLabelPropertyMaker *make))properties constrains:(void(^)(MASConstraintMaker *make))constrains;

@end
