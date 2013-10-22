//
//  Animal.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Animal.h"

@implementation Animal

@synthesize nameAnimal;
@synthesize typeAnimal;

- (id) init: (NSString *) name
{
    if (self = [super init])  //cách viết tắt
    {
        self.nameAnimal = name;
    }
    return self;
}

- (void) run
{
    NSLog(@"Animals can run on the ground");
}

- (void) sleep
{
    NSLog(@"The most animals sleep at night");
}

- (BOOL) die
{
    return YES;
}

- (void) sound{
    
}
@end
