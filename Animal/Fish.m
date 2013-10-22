//
//  Fish.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Fish.h"

@implementation Fish


- (id) init: (NSString *) name{
    
    self = [super init:name];
    self.typeAnimal = @"Fish";
    return self;
}

@end
