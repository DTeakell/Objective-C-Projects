//
//  Triangle.h
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import "GraphicObject.h"

NS_ASSUME_NONNULL_BEGIN

/// A class representing a triangle, with floating-point numbers as base, height, and two sides.
@interface Triangle : GraphicObject

@property double base, height, sideA, sideB;

/// Calculates the area of the receiver
- (double) calculateArea;

/// Calculates the perimeter of the receiver
- (double) calculatePerimeter;

/// Prints the calculated area and perimeter of the receiver to the console
- (void) print;

@end

NS_ASSUME_NONNULL_END
