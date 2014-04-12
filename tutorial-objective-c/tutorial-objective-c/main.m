//
//  main.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "XYZPerson.h"
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        // insert code here...
        
        XYZPerson *person = [[XYZPerson alloc] init];
        person.firstName = @"Claudio";
        person.secondName = @"Bisegni";
        
        [person sayHello];
        
        
        XYZPerson *secondPerson = [XYZPerson personWithName:@"Claudio"
                                                    surname:@"Bisegni"];
        [secondPerson sayHello];
    }
    return 0;
}

