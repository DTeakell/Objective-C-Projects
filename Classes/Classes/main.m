//
//  main.m
//  Classes
//
//  Created by Dillon Teakell on 4/28/25.
//
//  Create class and display output
//
//
#import <Foundation/Foundation.h>
#import "Developer.h"

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    Developer *newDeveloper = [[Developer alloc] initWithName:@"Dillon"
                                                         type:@"iOS Developer"
                                                          age:23
                                            yearsOfExperience:0];
    NSLog(@"Developer Allocated\n");
    
    [newDeveloper printSummary];
    [newDeveloper release];
    
    NSLog(@"Developer Deallocated\n");
    
    [pool drain];
    return 0;
}
