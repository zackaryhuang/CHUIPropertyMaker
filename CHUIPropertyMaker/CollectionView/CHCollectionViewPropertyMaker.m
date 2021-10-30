//
//  CHCollectionViewPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "CHCollectionViewPropertyMaker.h"

@implementation CHCollectionViewPropertyMaker
@synthesize delegate = _delegate;

- (CHCollectionViewPropertyMaker * _Nonnull (^)(UICollectionViewLayout * _Nonnull))collectionViewLayout {
    return ^CHCollectionViewPropertyMaker *(UICollectionViewLayout *collectionViewLayout) {
        [(UICollectionView *)self.view setCollectionViewLayout:collectionViewLayout];
        return self;
    };
}

- (CHCollectionViewPropertyMaker * _Nonnull (^)(id<UICollectionViewDelegate> _Nonnull))delegate {
    return ^CHCollectionViewPropertyMaker *(id<UICollectionViewDelegate> delegate) {
        [(UICollectionView *)self.view setDelegate:delegate];
        return self;
    };
}

- (CHCollectionViewPropertyMaker * _Nonnull (^)(id<UICollectionViewDataSource> _Nonnull))dataSource {
    return ^CHCollectionViewPropertyMaker *(id<UICollectionViewDataSource> dataSource) {
        [(UICollectionView *)self.view setDataSource:dataSource];
        return self;
    };
}
@end
