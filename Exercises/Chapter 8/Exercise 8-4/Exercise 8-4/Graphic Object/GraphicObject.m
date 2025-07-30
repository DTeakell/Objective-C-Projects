//
//  GraphicObject.m
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import "GraphicObject.h"

@implementation GraphicObject

@synthesize fillColor, lineColor;
@synthesize isFilled;

- (void)toggleFill {
    if (!isFilled) {
        isFilled = YES;
    } else {
        isFilled = NO;
    }
}

@end
