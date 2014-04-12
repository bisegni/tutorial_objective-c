//
//  XYZPerson.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

-(id) initWithName:(NSString*)name
           surname:(NSString*)surname {
    if(self = [super init]) {
        self.firstName = name;
        self.secondName = surname;
    }
    return self;
}

-(void) sayHello {
    NSLog(@"Hi, i'm %@ %@", self.firstName, self.secondName);
}

@end
