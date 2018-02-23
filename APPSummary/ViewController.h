//
//  ViewController.h
//  APPSummary
//
//  Created by xubojoy on 2018/2/23.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource,UISearchControllerDelegate,UISearchResultsUpdating>
@property (nonatomic, strong) UITableView *tableView;
//@property (nonatomic, strong) UISearchController *searchController;


@end

