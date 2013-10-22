//
//  Cat.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Cat.h"

@implementation Cat


#pragma mark - Protocol

- (id) init: (NSString *) name{
    
    self = [super init:name];
    self.typeAnimal = @"Cat";
    return self;
}

- (void) hate
{
    NSLog(@"The cat usually hate the mouse");
}

- (void) love
{
    NSLog(@"The cat likes girls, and eat fish.");
}

- (void) sound
{
     NSLog(@"Sound: Meo Meo ...");
}

- (void) climb: (id) object //Trèo lên một vật thể
{
    NSLog(@"Cat: %@ climb %@", self, object);
}

- (void) crouch
{
    NSLog(@"Cat can crouch");
}

@end
