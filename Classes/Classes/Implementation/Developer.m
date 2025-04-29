//
//  Developer.m
//  Classes
//
//  Created by Dillon Teakell on 4/29/25.
//
//  Developer Class Implementation
//
//
/*
    This is the implementation part of the class. This is where you will add logic to the interface.
    
 */

#import "Developer.h"
@implementation Developer

// Initializes the class with data you input when called
- (id) initWithName:(NSString *)devName
               type:(NSString *)devType
                age:(int)devAge
  yearsOfExperience:(int)devYears {
        self = [super init]; // Initializes a base NSObject
        if (self) {
            name = devName;
            type = devType;
            age = devAge;
            yearsOfExperience = devYears;
    }
    return self;
}


- (void)setName:(NSString *)newName {
    name = newName;
}

- (void)setType:(NSString *)newType {
    type = newType;
}

- (void)setName:(NSString *)newName andType:(NSString *)newType {
    name = newName;
    type = newType;
}

- (void) setAge:(int)newAge {
    age = newAge;
}

- (void)setYearsOfExperience:(int)newYearsOfExperience {
    yearsOfExperience = newYearsOfExperience;
}

- (void)incrementAge {
    age++;
}

- (void)incrementYearsOfExperience {
    yearsOfExperience++;
}

- (void)printSummary {
    NSLog(@"Developer Summary:\n");
    NSLog(@"Name: %@", name);
    NSLog(@"Type: %@", type);
    NSLog(@"Age: %i", age);
    NSLog(@"Years of Experience: %i", yearsOfExperience);
}

@end
