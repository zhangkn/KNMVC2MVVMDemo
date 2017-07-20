//
//  KNKNPersonViewModel.h
//  KNMVC2MVVMDemo
//
//  Created by devzkn on 20/07/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KNPerson.h"


/**
 引入一个 viewModel ，将 PersonViewController 中的展示逻辑抽取到这个 PersonViewModel
 
 
 逻辑：
 将 Person 中的属性进行一定的转换后，赋值给相应的 view 进行展示
 */
@interface KNPersonViewModel : NSObject

- (instancetype)initWithPerson:(KNPerson *)person;

@property (nonatomic, strong, readonly) KNPerson *person;
@property (nonatomic, copy, readonly) NSString *nameText;
@property (nonatomic, copy, readonly) NSString *birthdateText;



@end
