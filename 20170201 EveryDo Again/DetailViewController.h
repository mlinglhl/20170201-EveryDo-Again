//
//  DetailViewController.h
//  20170201 EveryDo Again
//
//  Created by Minhung Ling on 2017-02-01.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "_0170201_EveryDo_Again+CoreDataModel.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) ToDoObject *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

