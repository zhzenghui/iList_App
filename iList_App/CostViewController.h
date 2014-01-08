//
//  CostViewController.h
//  iList_App
//
//  Created by zeng hui on 1/9/14.
//  Copyright (c) 2014 zeng hui. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CostViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property(nonatomic,retain) NSMutableArray *dataArray;

@end
