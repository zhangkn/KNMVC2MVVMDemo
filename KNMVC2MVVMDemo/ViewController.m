//
//  ViewController.m
//  KNMVC2MVVMDemo
//
//  Created by devzkn on 20/07/2017.
//  Copyright © 2017 hisun. All rights reserved.
//

#import "ViewController.h"
#import "KNPersonViewModel.h"
@interface ViewController ()

@property (nonatomic,strong) KNPerson *model;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self dataSource];
    [self testMVC];
}

- (void)dataSource{
    
    self.model = [[KNPerson alloc]initWithSalutation:@"kevin" firstName:@"kn" lastName:@"zhang" birthdate:[NSDate date]];
    
}


/**
 将 Person 中的属性进行一定的转换后，赋值给相应的 view 进行展示
 */
-(void) testMVC{
    if (self.model.salutation.length > 0) {
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@ %@", self.model.salutation, self.model.firstName, self.model.lastName];
    } else {
        self.nameLabel.text = [NSString stringWithFormat:@"%@ %@", self.model.firstName, self.model.lastName];
    }
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE MMMM d, yyyy"];
    self.birthdateLabel.text = [dateFormatter stringFromDate:self.model.birthdate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
