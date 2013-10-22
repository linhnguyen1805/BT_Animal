//
//  Animal.h
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 * Define enumerated type
 *
 * Sex type of animal
 */
typedef enum{
    female,
    male,
    undefined
} SexEnum ;

@interface Animal : NSObject
{
    SexEnum _sex;
//    NSString * _name; 
}

@property (nonatomic, retain) NSString *nameAnimal;
@property (nonatomic, retain) NSString *typeAnimal;

- (id) init: (NSString *) name;// Contructor
- (void) run;
- (void) sleep;
- (BOOL) die;
- (void) sound;
@end
