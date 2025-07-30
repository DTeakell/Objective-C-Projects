//
//  GraphicObject.h
//  Exercise 8-4
//
//  Created by Dillon Teakell on 7/30/25.
//

#import <Foundation/Foundation.h>

/// A class representing a graphic object, with colors being 32-bit integers
@interface GraphicObject : NSObject

@property int fillColor, lineColor;
@property BOOL isFilled;

/// Toggles the `isFilled` boolean to enable or disable the receiver's fill color.
- (void) toggleFill;

@end
