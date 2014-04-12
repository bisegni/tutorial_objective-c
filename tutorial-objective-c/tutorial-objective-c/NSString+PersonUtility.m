//
//  NSString+PersonUtility.m
//  tutorial-objective-c
//
//  Created by Claudio Bisegni on 12/04/14.
//  Copyright (c) 2014 Claudio Bisegni. All rights reserved.
//

#import "NSString+PersonUtility.h"

@implementation NSString (PersonUtility)
- (NSString *)addFolkAttention {
    return [NSString stringWithFormat:@"%@, %@", @"Hey folk", self];
}
@end
