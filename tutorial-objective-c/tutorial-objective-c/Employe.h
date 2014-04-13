//
//  Employe.h
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 13/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "XYZPerson.h"

@interface Employe : XYZPerson
@property int       level;
@property NSDate    *contractStartDate;
@property NSDate    *contractEndDate;

-(id) init;
-(id) initWithName:(NSString*)name
           surname:(NSString*)surname;

-(NSString*) contractInfo;
@end
