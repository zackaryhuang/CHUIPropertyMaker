//
//  CHLabelPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHLabelPropertyMaker.h"

@implementation CHLabelPropertyMaker

- (CHLabelPropertyMaker * _Nonnull (^)(NSString * _Nonnull))text {
    return ^CHLabelPropertyMaker *(NSString *text) {
        [(UILabel *)self.view setText:text];
        return self;
    };
}


- (CHLabelPropertyMaker * _Nonnull (^)(NSAttributedString * _Nonnull))attributedText {
    return ^CHLabelPropertyMaker *(NSAttributedString *attributedText) {
        [(UILabel *)self.view setAttributedText:attributedText];
        return self;
    };
}

- (CHLabelPropertyMaker * _Nonnull (^)(UIFont * _Nonnull))font {
    return ^CHLabelPropertyMaker *(UIFont *font) {
        [(UILabel *)self.view setFont:font];
        return self;
    };
}

- (CHLabelPropertyMaker * _Nonnull (^)(UIColor * _Nonnull))textColor {
    return ^CHLabelPropertyMaker *(UIColor *textColor) {
        [(UILabel *)self.view setTextColor:textColor];
        return self;
    };
}

- (CHLabelPropertyMaker * _Nonnull (^)(NSTextAlignment))textAlignment {
    return ^CHLabelPropertyMaker *(NSTextAlignment textAlignment) {
        [(UILabel *)self.view setTextAlignment:textAlignment];
        return self;
    };
}

- (CHLabelPropertyMaker * _Nonnull (^)(NSUInteger))numberOfLines {
    return ^CHLabelPropertyMaker *(NSUInteger numberOfLines) {
        [(UILabel *)self.view setNumberOfLines:numberOfLines];
        return self;
    };
}
@end
