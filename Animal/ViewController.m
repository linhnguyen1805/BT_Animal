//
//  ViewController.m
//  Animal
//
//  Created by linhnguyen on 10/10/13.
//  Copyright (c) 2013 viettel. All rights reserved.
//

#import "ViewController.h"
#import "Cat.h"
#import "Dog.h"
#import "Bird.h"
#import "Fish.h"
#import "Tree.h"
#import "MakeAnimalClimb.h"
#import "MakeAnimalFight.h"
#import "MakeAnimalThingking.h"

@interface ViewController ()

@end

@implementation ViewController

 NSMutableArray *animals;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    animals = [[NSMutableArray alloc] init];
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)createTheZoo:(id)sender {
    Dog *dog = [[Dog alloc] init:@"Milu"];
    Cat *cat = [[Cat alloc] init:@"Kitty"];
    Bird *bird = [[Bird alloc] init:@"Vang anh"];
    Fish *fish = [[Fish alloc] init:@"Fish"];
    
    [animals addObject:dog];
    [animals addObject:cat];
    [animals addObject:bird];
    [animals addObject:fish];
    NSLog(@"--------------Create The Zoo------------------");
    for (Animal *animal in animals) {
     
        NSLog(@" %@ : %@",animal.typeAnimal, animal.nameAnimal);
    }
}

- (IBAction)makeAnimalSounds:(id)sender {
     NSLog(@"--------------Make  Animals Sound------------------");
    for (Animal *animal in animals) {
        NSLog(@" %@ : %@",animal.typeAnimal, animal.nameAnimal);
        [animal sound];
    }
}

- (IBAction)makeAnimalMoves:(id)sender {
    NSLog(@"--------------Make  Animals Flight ------------------");
    Tree *tree = [[Tree alloc] init:@"Cay cau"];
    for (Animal *animal in animals) {
        
        if ([animal conformsToProtocol: NSProtocolFromString(@"MakeAnimalClimb")])
        {
            id<MakeAnimalClimb> moveAndClimbAnimal = (id<MakeAnimalClimb>) animal;
//            Tree *tree = [[Tree alloc] init:@"Banyan Tree"];
            [moveAndClimbAnimal climb:tree];
            
        }

    }
}

- (IBAction)makeAnimalFlight:(id)sender {
    
    for (Animal *animal in animals) {
        
        if ([animal conformsToProtocol: NSProtocolFromString(@"MakeAnimalFight")])
        {
            id<MakeAnimalFight> makeAnimalFight = (id<MakeAnimalFight>) animal;
            //            Tree *tree = [[Tree alloc] init:@"Banyan Tree"];
            [makeAnimalFight flight];
            
        }
        
    }

}
- (IBAction)makeAnimalThink:(id)sender {
   
    NSLog(@"--------------Make  Animals Think ------------------");
    for (Animal *animal in animals) {
        
        if ([animal conformsToProtocol: NSProtocolFromString(@"MakeAnimalThingking")])
        {
            id<MakeAnimalThingking> makeAnimalThink = (id<MakeAnimalThingking>) animal;
            //            Tree *tree = [[Tree alloc] init:@"Banyan Tree"];
            [makeAnimalThink hate];
            [makeAnimalThink love];
            
        }
        
    }

}

@end
