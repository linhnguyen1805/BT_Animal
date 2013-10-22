//
//  Dog.h
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "Animal.h"
#import "MakeAnimalClimb.h"
#import "MakeAnimalThingking.h"
#import "MakeAnimalSound.h"

@interface Dog : Animal <MakeAnimalThingking, MakeAnimalSound>


@end
