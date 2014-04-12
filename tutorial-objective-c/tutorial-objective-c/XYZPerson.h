//
//  XYZPerson.h
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "GoodBeaviour.h"
#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject <GoodBeaviour>

@property NSString  *firstName;
@property NSString  *secondName;
@property NSNumber  *age;
@property NSString  *sex;

+(id) personWithName:(NSString*)name
             surname:(NSString*)surname;


-(id) init;
-(id) initWithName:(NSString*)name
           surname:(NSString*)surname;

-(NSString*) getSayHello;
@end
