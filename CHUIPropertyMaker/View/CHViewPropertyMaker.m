//
//  CHViewPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/4/19.
//

#import "CHViewPropertyMaker.h"

@interface CHViewPropertyMaker()

@property (nonatomic, weak) UIView *view;

@end

@implementation CHViewPropertyMaker

- (instancetype)initWithView:(UIView *)view
{
    self = [super init];
    if (self) {
        self.view = view;
    }
    return self;
}


- (CHViewPropertyMaker * _Nonnull (^)(UIView * _Nonnull))superView {
    return ^CHViewPropertyMaker *(UIView *superView){
        if (superView) {
            [superView addSubview:self.view];
        }
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(UIColor * _Nonnull))backgroundColor {
    return ^CHViewPropertyMaker *(UIColor *backgroundColor) {
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(BOOL))userInteractionEnabled {
    return ^CHViewPropertyMaker *(BOOL enable) {
        self.view.userInteractionEnabled = enable;
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(CGFloat, CGFloat, CGFloat, CGFloat))frame {
    return ^CHViewPropertyMaker *(CGFloat x, CGFloat y, CGFloat width, CGFloat height) {
        self.view.frame = CGRectMake(x, y, width, height);
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(UIColor * _Nonnull, CGFloat, CGSize, CGFloat))shadow {
    return ^CHViewPropertyMaker *(UIColor *shadowColor, CGFloat shadowOpacity, CGSize shadowOffset, CGFloat shadowRadius) {
        self.view.layer.shadowColor = shadowColor.CGColor;
        self.view.layer.shadowOpacity = shadowOpacity;
        self.view.layer.shadowOffset = shadowOffset;
        self.view.layer.shadowRadius = shadowRadius;
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(id _Nonnull, SEL _Nonnull))tapGestureAction {
    return ^CHViewPropertyMaker *(id target, SEL selector) {
        if (target) {
            UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:target action:selector];
            [self.view addGestureRecognizer:tapGesture];
        }
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(id _Nonnull, SEL _Nonnull))longPressGestureAction {
    return ^CHViewPropertyMaker *(id target, SEL selector) {
        if (target) {
            UILongPressGestureRecognizer *tapGesture = [[UILongPressGestureRecognizer alloc] initWithTarget:target action:selector];
            [self.view addGestureRecognizer:tapGesture];
        }
        return self;
    };
}

- (CHViewPropertyMaker * _Nonnull (^)(CGFloat))cornerRadius {
    return ^CHViewPropertyMaker *(CGFloat cornerRadius) {
        if (cornerRadius > 0) {
            self.view.layer.cornerRadius = cornerRadius;
        }
        return self;
    };
}
@end
