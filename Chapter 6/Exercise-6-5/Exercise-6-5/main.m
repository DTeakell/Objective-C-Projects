//
//  main.m
//  Exercise-6-5
//
//  Created by Dillon Teakell on 6/17/25.
//
//
//  Get an integer and reverse it, even if it is negative
//
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    int input;
    
    // Get user input
    NSLog(@"Please enter an integer below:");
    scanf("%i", &input);
    
    // If it's negative, turn all negatives into positives, and add a negative sign to the end.
    if (input < 0) {
        while (input != 0) {
            int temp = input % 10;
            temp *= -1;
            printf("%i", temp);
            input /= 10;
        }
        printf("-");
        
    // If it's positive, proceed as normal
    } else {
        while (input != 0) {
            int temp = input % 10;
            printf("%i", temp);
            input /= 10;
        }
    }
    
    printf("\n");
    
    [pool drain];
    return 0;
}
