//
//  Rectangle.h
//  Exercise 8-3
//
//  Created by Dillon Teakell on 7/29/25.
//
#import "XYPoint.h"
#import "GraphicObject.h"
#import <Foundation/Foundation.h>

/// A class representing a Rectangle object, with floating-point values for width and height.
///
/// Provides methods for setting width and height, calculating area and perimeter, setting an origin point, and translation of vectors.
///
@interface Rectangle : GraphicObject {
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
- (double) calculateArea;

/// Returns the perimeter value of the receiver
- (double) calculatePerimeter;

/// Returns a vector translation of the receiver's origin value
- (XYPoint *) translate: (XYPoint *) vector;

/// Prints the area, perimeter, and origin of the receiver to the console
- (void) print;


@end
