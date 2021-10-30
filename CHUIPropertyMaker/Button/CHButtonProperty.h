//
//  CHButtonProperty.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/26.
//

#import "CHViewProperty.h"
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CHButtonProperty : CHViewProperty

- (instancetype)initWithView:(id)view
                       title:(NSString *)title;

- (instancetype)initWithView:(id)view
                       image:(UIImage *)image;

- (instancetype)initWithView:(id)view
                  titleColor:(UIColor *)titleColor;

- (instancetype)initWithView:(id)view
             attributedTitle:(NSAttributedString *)attributedTitle;

@property (nonatomic, copy, readonly) CHButtonProperty *(^forState)(UIControlState state);

@end

@interface CHButtonActionProperty : NSObject

- (instancetype)initWithView:(id)view
                      action:(SEL)action;

@property (nonatomic, copy, readonly) CHButtonActionProperty *(^forEvent)(UIControlEvents event);

@property (nonatomic, copy, readonly) CHButtonActionProperty *(^withTarget)(id withTarget);

@end
NS_ASSUME_NONNULL_END
