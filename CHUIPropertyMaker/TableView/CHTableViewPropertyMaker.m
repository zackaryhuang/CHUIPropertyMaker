//
//  CHTableViewPropertyMaker.m
//  CHUIPropertyMaker
//
//  Created by Peter Huang on 2021/6/23.
//

#import "CHTableViewPropertyMaker.h"
@implementation CHTableViewPropertyMaker
@synthesize delegate = _delegate;

- (CHTableViewPropertyMaker * _Nonnull (^)(id<UITableViewDelegate> _Nonnull))delegate {
    return ^CHTableViewPropertyMaker *(id<UITableViewDelegate> delegate) {
        [(UITableView *)self.view setDelegate:delegate];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(id<UITableViewDataSource> _Nonnull))dataSource {
    return ^CHTableViewPropertyMaker *(id<UITableViewDataSource> dataSource) {
        [(UITableView *)self.view setDataSource:dataSource];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(CGFloat))rowHeight {
    return ^CHTableViewPropertyMaker *(CGFloat rowHeight) {
        [(UITableView *)self.view setRowHeight:rowHeight];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(CGFloat))sectionHeaderHeight {
    return ^CHTableViewPropertyMaker *(CGFloat sectionHeaderHeight) {
        [(UITableView *)self.view setSectionHeaderHeight:sectionHeaderHeight];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(CGFloat))sectionFooterHeight {
    return ^CHTableViewPropertyMaker *(CGFloat sectionFooterHeight) {
        [(UITableView *)self.view setSectionFooterHeight:sectionFooterHeight];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(CGFloat))estimatedRowHeight {
    return ^CHTableViewPropertyMaker *(CGFloat estimatedRowHeight) {
        [(UITableView *)self.view setEstimatedRowHeight:estimatedRowHeight];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(CGFloat))estimatedSectionHeaderHeight {
    return ^CHTableViewPropertyMaker *(CGFloat estimatedSectionHeaderHeight) {
        [(UITableView *)self.view setEstimatedSectionHeaderHeight:estimatedSectionHeaderHeight];
        return self;
    };
}

- (CHTableViewPropertyMaker * _Nonnull (^)(CGFloat))estimatedSectionFooterHeight {
    return ^CHTableViewPropertyMaker *(CGFloat estimatedSectionFooterHeight) {
        [(UITableView *)self.view setEstimatedSectionFooterHeight:estimatedSectionFooterHeight];
        return self;
    };
}
@end
