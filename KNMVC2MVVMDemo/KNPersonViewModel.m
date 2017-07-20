//
//  KNPersonViewModel.m
//  KNMVC2MVVMDemo
//
//  Created by devzkn on 20/07/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "KNPersonViewModel.h"

@implementation KNPersonViewModel


- (instancetype)initWithPerson:(KNPerson *)person {
    self = [super init];
    if (self) {
        _person = person;
        
        if (person.salutation.length > 0) {
            _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.person.salutation, self.person.firstName, self.person.lastName];
        } else {
            _nameText = [NSString stringWithFormat:@"%@ %@", self.person.firstName, self.person.lastName];
        }
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
        _birthdateText = [dateFormatter stringFromDate:person.birthdate];
    }
    return self;
}


@end
