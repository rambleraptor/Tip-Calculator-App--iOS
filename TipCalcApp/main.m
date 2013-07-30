//
//  main.m
//  TipCalcApp
//
//  Created by Alex Stephen on 8/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//
/*
#import <UIKit/UIKit.h>

int main(int argc, char *argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
*/
#import <UIKit/UIKit.h>
#import "TipCalcAppAppDelegate.h"

int main(int argc, char *argv[]) {
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([TipCalcAppAppDelegate class]));
    }
}