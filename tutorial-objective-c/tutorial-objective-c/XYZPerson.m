//
//  XYZPerson.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "XYZPerson.h"

@implementation XYZPerson

+(id) personWithName:(NSString*)name
             surname:(NSString*)surname {
    return [[XYZPerson alloc] initWithName:name
                                   surname:surname];
}

-(id) init {
    if(self = [super init]) {
        self.age = 0;
        self.sex = @"Male";
    }
    return self;
}

-(id) initWithName:(NSString*)name
           surname:(NSString*)surname {
    if(self = [super init]) {
        self.firstName = name;
        self.secondName = surname;
    }
    return self;
}

-(NSString*) getSayHello {
    return [NSString stringWithFormat:@"Hi, i'm %@ %@", self.firstName, self.secondName];
}


//-----------------protocol---------------
- (NSString*)whatIsYourAge {
    return [NSString stringWithFormat:@"My age is %ld", (long)[self.age integerValue]];
}

- (NSString*)whatIsYourSex {
     return [NSString stringWithFormat:@"I'm %@", self.sex];
}
@end
