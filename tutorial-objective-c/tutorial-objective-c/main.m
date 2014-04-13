//
//  main.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "XYZPerson.h"
#import "Employe.h"
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
        
        askToGoodPerson(person);
        askToGoodPerson(secondPerson);
        
        Employe *employe = [[Employe alloc] initWithName:@"Emanuele"
                                                 surname:@"Turella"];
        employe.level = 5;
        employe.contractStartDate = [NSDate dateWithTimeIntervalSince1970:1104537600];
        employe.contractEndDate = [[NSDate alloc] init];
        NSLog(@"%@", [employe contractInfo]);
    }
    return 0;
}

void askToGoodPerson(id<GoodBeaviour> goodPerson) {
    NSLog(@"what is your age? %@", [goodPerson whatIsYourAge]);
    NSLog(@"what si your sex? %@", [goodPerson whatIsYourSex]);
}