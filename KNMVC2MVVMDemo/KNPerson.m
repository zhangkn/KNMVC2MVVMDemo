//
//  KNPerson.m
//  KNMVC2MVVMDemo
//
//  Created by devzkn on 20/07/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "KNPerson.h"

@implementation KNPerson

- (instancetype)initWithSalutation:(NSString *)salutation firstName:(NSString *)firstName lastName:(NSString *)lastName birthdate:(NSDate *)birthdate{
    self = [super init];
    if (self) {
        _salutation = salutation;
        _firstName = firstName;
        _lastName = lastName;
        _birthdate = birthdate;
    }
    
    return self;
}

@end

