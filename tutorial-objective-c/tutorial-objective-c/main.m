//
//  main.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "XYZPerson.h"
#import "NSString+PersonUtility.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // insert code here...
        NSString *sayHelloStr = nil;
        XYZPerson *person = [[XYZPerson alloc] init];
        person.firstName = @"Claudio";
        person.secondName = @"Bisegni";
        
        sayHelloStr = [person getSayHello];
        NSLog(@"%@", sayHelloStr);
        
        XYZPerson *secondPerson = [XYZPerson personWithName:@"Claudio"
                                                    surname:@"Bisegni"];
        
        //previously allocated NSString will be automatically deallocated by ARC
        sayHelloStr = [secondPerson getSayHello];
        NSLog(@"%@", sayHelloStr);
        
        //here is the magic for of the categories 
        NSLog(@"%@", [sayHelloStr addFolkAttention]);
    }
    return 0;
}

