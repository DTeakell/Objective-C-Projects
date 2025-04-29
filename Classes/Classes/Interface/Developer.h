//
//  Developer.h
//  Classes
//
//  Created by Dillon Teakell on 4/28/25.
//
//  Developer Class Interface
//
//
/* Writing a class is a two-step process:
 
 1. Create a blueprint (create the interface '.h (header)' file)
    - This is where you declare the class name, properties, and methods
 
 2. Create the implementation file .m ()
    - This is where you write your method definitions and how everything works
 
 */
//
//
#import <Foundation/Foundation.h>

@interface Developer : NSObject {
    
    // Instance variables
    NSString *name;
    NSString *type;
    int age;
    int yearsOfExperience;
}

// Functions will be on the outside of the definition
/* Functions can be marked with either a '-' or a '+'.
 
 '-': Instance Functions are functions unique to an instance of a class
 
 '+': Class functions are functions that are unique to the class itself
 
 */
- (id) initWithName: (NSString *)name
               type:(NSString *)type
                age:(int)age
  yearsOfExperience:(int)yearsOfExperience;

- (void) printSummary;
- (void) setName:(NSString *)name;
- (void) setType:(NSString *)type;
- (void) setAge:(int)age;
- (void) setYearsOfExperience:(int)yearsOfExperience;
- (void) incrementAge; // Increment the age of the developer by 1
- (void) incrementYearsOfExperience;
- (void) setName:(NSString *)name andType:(NSString *)type;

@end
