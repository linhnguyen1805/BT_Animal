//
//  Dog.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Dog.h"

@implementation Dog

#pragma mark - Protocol

- (id) init: (NSString *) name{
    
    self = [super init:name];
    self.typeAnimal = @"Dog";
    return self;
}

- (void) hate
{
    NSLog(@"The dog usually hate the cat");
}

- (void) love
{
    NSLog(@"Dogs like people that love it.");
}

- (void) climb: (id) object //Trèo lên một vật thể
{
    NSLog(@"Cat: %@ climb %@", self, object);
}

- (void) sound
{
    NSLog(@"Sound: Gau Gau.....");
}

@end
