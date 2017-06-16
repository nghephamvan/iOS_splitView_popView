//
//  DetailViewController.h
//  iOS_splitView_popView
//
//  Created by TMA103 on 6/16/17.
//  Copyright © 2017 TMA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

