//
//  XYPoint.m
//  Exercise 8-3
//
//  Created by Dillon Teakell on 7/29/25.
//

#import "XYPoint.h"


@implementation XYPoint

@synthesize x, y;

- (void) setCoordiantesX: (double) xValue andY: (double) yValue {
    x = xValue;
    y = yValue;
}

- (void) dealloc {
    [super dealloc];
}

@end
