//
//  Circle.m
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import "Circle.h"

@implementation Circle

@synthesize diameter;

- (double)calculateArea {
    double radius = [self calculateRadius];
    return 3.14 * (radius * radius);
}

- (double)calculateRadius {
    return diameter / 2;
}

- (void)print {
    NSLog(@"Circle");
    NSLog(@"Circumference: %.2f", [self calculateCircumference]);
    NSLog(@"Area: %.2f\n", [self calculateArea]);
    NSLog(@"\n");
}

- (double)calculateCircumference {
    return 3.14 * diameter;
}

@end
