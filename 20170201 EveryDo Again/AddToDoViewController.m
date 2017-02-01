//
//  AddToDoViewController.m
//  20170201 EveryDo Again
//
//  Created by Minhung Ling on 2017-02-01.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "AddToDoViewController.h"
#import "AppDelegate.h"

@interface AddToDoViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextView;
@property (weak, nonatomic) IBOutlet UILabel *priorityLabel;
@property (weak, nonatomic) IBOutlet UIStepper *priorityStepper;

@end

@implementation AddToDoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    if (self.todo) {
        self.titleTextField.text = self.todo.name;
        self.descriptionTextView.text = self.todo.toDoDescription;
        self.priorityLabel.text = @(self.todo.priority).stringValue;
        self.priorityStepper.value = self.todo.priority;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)changePriority:(UIStepper *)sender {
    self.priorityLabel.text = @(sender.value).stringValue;
    
}
- (IBAction)saveButton:(UIButton *)sender {
    AppDelegate *delegate = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    if (!self.todo) {
    NSManagedObjectContext *context = delegate.persistentContainer.viewContext;
    self.todo = [[ToDoObject alloc] initWithContext:context];
    }
    self.todo.name = self.titleTextField.text;
    self.todo.toDoDescription = self.descriptionTextView.text;
    self.todo.priority = self.priorityLabel.text.intValue;
    [delegate saveContext];
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
