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

- (double) perimeter {
    return width * 4;
}

- (void)setOrigin:(XYPoint *)point {
    origin = point;
}

- (void) setWidth: (double)newWidth andHeight: (double)newHeight {
    width = newWidth;
    height = newHeight;
}

- (double) area {
    return width * height;
}

- (void) print {
    NSLog(@"Area: %.2f", [self area]);
    NSLog(@"Perimeter: %.2f", [self perimeter]);
    NSLog(@"Origin: %.2f, %.2f", origin.x, origin.y);
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

