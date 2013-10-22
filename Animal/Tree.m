//
//  Tree.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Tree.h"

@implementation Tree

- (id) init: (NSString *)name
{
    if (self = [super init])
    {
        _name = name;
    }
    
    return self;
}

- (NSString *) description
{
    return _name;
}

@end
