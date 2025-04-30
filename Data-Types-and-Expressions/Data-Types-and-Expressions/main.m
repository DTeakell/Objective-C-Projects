//
//  main.m
//  Data-Types-and-Expressions
//
//  Created by Dillon Teakell on 4/30/25.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int int_value = 20;
    float float_value = 3.1459;
    char char_value = 'C';
    double double_value = 32.45e+12;
    
    // Print Values
    NSLog(@"Integer: %i", int_value);
    NSLog(@"Float: %f", float_value);
    NSLog(@"Char: %c", char_value);
    NSLog(@"Double: %f", double_value);
    
    [pool drain];
    return 0;
}
