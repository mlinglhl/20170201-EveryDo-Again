//
//  DetailViewController.m
//  20170201 EveryDo Again
//
//  Created by Minhung Ling on 2017-02-01.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "DetailViewController.h"
#import "AddToDoViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = self.detailItem.name.description;
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


#pragma mark - Managing the detail item

- (void)setDetailItem:(ToDoObject *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        [self configureView];
    }
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString: @"AddToDoViewController"]) {
        AddToDoViewController *atdvc = segue.destinationViewController;
        atdvc.todo = self.detailItem;
    }
}


@end
