//
//  ird.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Bird.h"

@implementation Bird

- (void) flight
{
    NSLog(@"Bird can flight far");
}

- (id) init: (NSString *) name{
    
    self = [super init:name];
    self.typeAnimal = @"Bird";
    return self;
}

@end
