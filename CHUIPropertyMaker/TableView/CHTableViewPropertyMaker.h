//
//  CHTableViewPropertyMaker.h
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "CHScrollViewPropertyMaker.h"

NS_ASSUME_NONNULL_BEGIN

@interface CHTableViewPropertyMaker : CHScrollViewPropertyMaker

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^dataSource)(id <UITableViewDataSource> dataSource);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^delegate)(id <UITableViewDelegate> delegate);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^rowHeight)(CGFloat rowHeight);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^sectionFooterHeight)(CGFloat sectionFooterHeight);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^estimatedRowHeight)(CGFloat estimatedRowHeight);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);

@property (nonatomic, copy, readonly) CHTableViewPropertyMaker *(^estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);



@end

NS_ASSUME_NONNULL_END
