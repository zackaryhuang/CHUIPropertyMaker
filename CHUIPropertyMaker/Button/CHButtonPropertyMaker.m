//
//  CHButtonPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHButtonPropertyMaker.h"

@implementation CHButtonPropertyMaker

- (CHButtonActionProperty * _Nonnull (^)(SEL _Nonnull))action {
    return ^CHButtonActionProperty *(SEL action) {
        CHButtonActionProperty *buttonActionProperty = [[CHButtonActionProperty alloc] initWithView:self.view action:action];
        return buttonActionProperty;
    };
}

- (CHButtonProperty * _Nonnull (^)(UIColor * _Nonnull))titleColor {
    return ^CHButtonProperty *(UIColor *titleColor){
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                                    titleColor:titleColor];
        return buttonStyle;
    };
}

- (CHButtonProperty * _Nonnull (^)(NSString * _Nonnull))title {
    return ^CHButtonProperty *(NSString *title){
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                                         title:title];
        return buttonStyle;
    };
}

- (CHButtonProperty * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^CHButtonProperty *(UIImage *image) {
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                                         image:image];
        return buttonStyle;
    };
}

- (CHButtonProperty * _Nonnull (^)(NSAttributedString * _Nonnull))attributedTitle {
    return ^CHButtonProperty *(NSAttributedString *attributedTitle) {
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                               attributedTitle:attributedTitle];
        return buttonStyle;
    };
}
@end
