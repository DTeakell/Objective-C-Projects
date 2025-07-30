//
//  Circle.h
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import "GraphicObject.h"

NS_ASSUME_NONNULL_BEGIN

@interface Circle : GraphicObject

@property double diameter;

/// Calculates the radius of the receiver
- (double) calculateRadius;

/// Calculate the circumference of the receiver
- (double) calculateCircumference;


/// Calculates the area of the receiver
- (double) calculateArea;

/// Prints the calculated circumference and area of the receiver to the console
- (void) print;

@end

NS_ASSUME_NONNULL_END
