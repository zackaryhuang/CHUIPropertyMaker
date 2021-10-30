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
        [(UIButton *)self.view setTitleColor:titleColor forState:UIControlStateNormal];
        return buttonStyle;
    };
}

- (CHButtonProperty * _Nonnull (^)(NSString * _Nonnull))title {
    return ^CHButtonProperty *(NSString *title){
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                                         title:title];
        [(UIButton *)self.view setTitle:title forState:UIControlStateNormal];
        return buttonStyle;
    };
}

- (CHButtonProperty * _Nonnull (^)(UIImage * _Nonnull))image {
    return ^CHButtonProperty *(UIImage *image) {
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                                         image:image];
        [(UIButton *)self.view setImage:image forState:UIControlStateNormal];
        return buttonStyle;
    };
}

- (CHButtonProperty * _Nonnull (^)(NSAttributedString * _Nonnull))attributedTitle {
    return ^CHButtonProperty *(NSAttributedString *attributedTitle) {
        CHButtonProperty *buttonStyle = [[CHButtonProperty alloc] initWithView:self.view
                                                               attributedTitle:attributedTitle];
        [(UIButton *)self.view setAttributedTitle:attributedTitle forState:UIControlStateNormal];
        return buttonStyle;
    };
}
@end
