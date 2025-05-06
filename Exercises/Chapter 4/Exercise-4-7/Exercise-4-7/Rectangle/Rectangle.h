//
//  Rectangle.h
//  Exercise-4-7
//
//  Created by Dillon Teakell on 5/6/25.
//
//
//  Rectangle Interface File
//

@interface Rectangle : NSObject {
    int width;
    int height;
}

// Sets the width of the rectangle
- (void) setWidth: (int) newWidth;

// Sets the height of the rectangle
- (void) setHeight: (int) newHeight;

// Returns the width
- (int) width;

// Returns the height
- (int) height;

// Calculates and returns the area
- (int) area;

// Calculates and returns the perimeter
- (int) perimeter;

// Prints the width, height, area, and perimeter
- (void) printAll;

@end
