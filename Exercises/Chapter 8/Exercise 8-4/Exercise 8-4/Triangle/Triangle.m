//
//  Triangle.m
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import "Triangle.h"

@implementation Triangle

@synthesize base, height, sideA, sideB;

- (double)calculateArea {
    return (base * height) / 2;
}

- (double) calculatePerimeter {
    return base + sideA + sideB;
}

- (void) print {
    NSLog(@"Triangle");
    NSLog(@"Area: %.2f", [self calculateArea]);
    NSLog(@"Perimeter: %.2f\n", [self calculatePerimeter]);
    NSLog(@"\n");
}

@end
