//
//  DetailViewController.m
//  iOS_splitView_popView
//
//  Created by TMA103 on 6/16/17.
//  Copyright © 2017 TMA. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController
@synthesize webView, detailDescriptionLabel;
#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
        NSURL *url = [NSURL URLWithString:self.detailItem];
        [webView loadRequest: [NSURLRequest requestWithURL:url]];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) masterAction:(id)sender {
    NSLog(@"Action - %@", sender);
    [self setDetailItem:sender];
    NSURL *url = [NSURL URLWithString:sender];
    [webView loadRequest: [NSURLRequest requestWithURL:url]];
}
@end
