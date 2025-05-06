//
//  Rectangle.m
//  Exercise-4-7
//
//  Created by Dillon Teakell on 5/6/25.
//
//
//  Rectangle Implementation File
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"

@implementation Rectangle

- (void) setWidth: (int) newWidth {
    width = newWidth;
}

- (void) setHeight: (int) newHeight {
    height = newHeight;
}

- (int) width {
    return width;
}

- (int) height {
    return height;
}

- (int) area {
    return width * height;
}

- (int) perimeter {
    return 2 * ([self width] + [self height]);
}

- (void) printAll {
    NSLog(@"Width:      %d", [self width]);
    NSLog(@"Height:     %d", [self height]);
    NSLog(@"Area:       %d", [self area]);
    NSLog(@"Perimeter:  %d", [self perimeter]);
}

@end
