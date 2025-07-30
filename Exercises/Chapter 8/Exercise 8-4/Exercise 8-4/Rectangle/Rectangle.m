//
//  Rectangle.m
//  Exercise 8-3
//
//  Created by Dillon Teakell on 7/29/25.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle

@synthesize width, height;

- (XYPoint *)origin {
    return origin;
}

- (double) calculatePerimeter {
    return width * 4;
}

- (void)setOrigin:(XYPoint *)point {
    origin = point;
}

- (void) setWidth: (double)newWidth andHeight: (double)newHeight {
    width = newWidth;
    height = newHeight;
}

- (double) calculateArea {
    return width * height;
}

- (void) print {
    NSLog(@"Rectangle");
    NSLog(@"Area: %.2f", [self calculateArea]);
    NSLog(@"Perimeter: %.2f", [self calculatePerimeter]);
    NSLog(@"Origin: %.2f, %.2f\n", origin.x, origin.y);
    NSLog(@"\n");
}

- (XYPoint *) translate: (XYPoint *) vector {
    XYPoint *translation = [[XYPoint alloc] init];
    translation.x = origin.x + vector.x;
    translation.y = origin.y + vector.y;
    NSLog(@"Translation: X%.2f, Y%.2f", translation.x, translation.y);
    return [translation autorelease];
}

- (void) dealloc {
    [super dealloc];
}

@end

