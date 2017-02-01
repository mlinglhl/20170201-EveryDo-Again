//
//  ToDoObject+CoreDataProperties.h
//  20170201 EveryDo Again
//
//  Created by Minhung Ling on 2017-02-01.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//  This file was automatically generated and should not be edited.
//

#import "ToDoObject+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface ToDoObject (CoreDataProperties)

+ (NSFetchRequest<ToDoObject *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, copy) NSString *toDoDescription;
@property (nonatomic) int16_t priority;
@property (nonatomic) BOOL complete;

@end

NS_ASSUME_NONNULL_END
