//
//  CHCollectionViewPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "CHScrollViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHCollectionViewPropertyMaker : CHScrollViewPropertyMaker

@property (nonatomic, copy, readonly) CHCollectionViewPropertyMaker *(^collectionViewLayout)(UICollectionViewLayout *collectionViewLayout);

@property (nonatomic, copy, readonly) CHCollectionViewPropertyMaker *(^dataSource)(id <UICollectionViewDataSource> dataSource);

@property (nonatomic, copy, readonly) CHCollectionViewPropertyMaker *(^delegate)(id <UICollectionViewDelegate> delegate);

@end

NS_ASSUME_NONNULL_END
