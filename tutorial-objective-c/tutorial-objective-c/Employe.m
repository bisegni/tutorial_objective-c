//
//  Employe.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 13/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "Employe.h"

@implementation Employe

-(id) init {
    if(self = [super init]) {
        
    }
    return self;
}

-(id) initWithName:(NSString*)name
           surname:(NSString*)surname {
    if(self = [super initWithName:name
                          surname:surname]) {
        
    }
    return self;
}

-(NSString*) contractInfo {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setLocale:[[NSLocale alloc] initWithLocaleIdentifier:@"it_IT"]];
    
    return [NSString stringWithFormat:@"%@\n@Level:%d, Since:%@ to:%@",
            [self getSayHello],
            self.level,
            [dateFormatter stringFromDate:self.contractStartDate],
            [dateFormatter stringFromDate:self.contractEndDate]];
}
@end
