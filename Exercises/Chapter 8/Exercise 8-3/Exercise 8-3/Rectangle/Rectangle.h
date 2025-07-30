//
//  Rectangle.h
//  Exercise 8-3
//
//  Created by Dillon Teakell on 7/29/25.
//
#import "XYPoint.h"
#import <Foundation/Foundation.h>

@interface Rectangle : NSObject {
    double width, height;
    XYPoint *origin;
}

@property double width, height;

/// Returns the origin of the receiver
- (XYPoint *) origin;

/// Sets the origin of the receiver
- (void) setOrigin: (XYPoint *) point;

/// Sets the width and height values of the receiver
- (void) setWidth: (double) newWidth andHeight: (double) newHeight;

/// Returns the area value of the receiver
- (double) area;

/// Returns the perimeter value of the receiver
- (double) perimeter;

/// Returns a vector translation of the receiver's origin value
- (XYPoint *) translate: (XYPoint *) vector;

- (void) print;


@end
