//
//  MasterViewController.h
//  iOS_splitView_popView
//
//  Created by TMA103 on 6/16/17.
//  Copyright © 2017 TMA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MasterDetailDelegate.h"

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property (weak, nonatomic) id <MasterDetailDelegate> deletgate;

@end

