//
//  ToDoObject+CoreDataProperties.m
//  20170201 EveryDo Again
//
//  Created by Minhung Ling on 2017-02-01.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "ToDoObject+CoreDataProperties.h"

@implementation ToDoObject (CoreDataProperties)

+ (NSFetchRequest<ToDoObject *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"ToDoObject"];
}

@dynamic name;
@dynamic toDoDescription;
@dynamic priority;
@dynamic complete;

@end
