//
//  MakeAnimalClimb.h
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MakeAnimalClimb <NSObject>

- (void) climb: (id) object; //Trèo lên một vật thể

@optional  //Không bắt buốc
- (void) crawl ; //bò
- (void) crouch;

@end
