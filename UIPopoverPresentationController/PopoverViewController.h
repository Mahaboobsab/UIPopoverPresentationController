//
//  PopoverViewController.h
//  UIPopoverPresentationController
//
//  Created by Mahaboobsab Nadaf on 24/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopoverViewController.h"

@interface PopoverViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *colorArray;

@end
