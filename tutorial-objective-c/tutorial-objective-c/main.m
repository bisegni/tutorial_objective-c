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

void askToGoodPerson(id<GoodBeaviour> goodPerson);
int main(int argc, const char * argv[]) {

    @autoreleasepool {
        // insert code here...
        NSString *sayHelloStr = nil;
        __block XYZPerson *person = [[XYZPerson alloc] init];
        person.firstName = @"Claudio";
        person.secondName = @"Bisegni";
        
        sayHelloStr = [person getSayHello];
        NSLog(@"%@", sayHelloStr);
        
        __block XYZPerson *secondPerson = [XYZPerson personWithName:@"Claudio"
                                                            surname:@"Bisegni"];
        
        //previously allocated NSString will be automatically deallocated by ARC
        sayHelloStr = [secondPerson getSayHello];
        NSLog(@"%@", sayHelloStr);
        
        //here is the magic for of the categories 
        NSLog(@"%@", [sayHelloStr addFolkAttention]);
        
        //use of portocoll
        secondPerson.age = 41;
        secondPerson.sex = @"Male";
        
        
        
        dispatch_queue_t queue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
        dispatch_group_t group = dispatch_group_create();
        dispatch_group_async(group, queue, ^{
            for (int idx = 0; idx < 5; idx++) {
                person.age++;
                askToGoodPerson(person);
                sleep(1);
            }

        });
        
        dispatch_group_async(group, queue, ^{
            for (int idx = 0; idx < 5; idx++) {
                secondPerson.age++;
                askToGoodPerson(secondPerson);
                sleep(1);
            }
        });
        //waith for termination
        dispatch_group_wait(group, DISPATCH_TIME_FOREVER);
        askToGoodPerson(person);
        askToGoodPerson(secondPerson);
    }
    return 0;
}

void askToGoodPerson(id<GoodBeaviour> goodPerson) {
    NSLog(@"what is your age? %@", [goodPerson whatIsYourAge]);
    NSLog(@"what si your sex? %@", [goodPerson whatIsYourSex]);
}