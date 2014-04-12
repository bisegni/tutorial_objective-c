//
//  XYZPerson.h
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 06/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property NSString *firstName;
@property NSString *secondName;

+(id) personWithName:(NSString*)name
             surname:(NSString*)surname;

-(id) initWithName:(NSString*)name
           surname:(NSString*)surname;

-(void) sayHello;

@end
