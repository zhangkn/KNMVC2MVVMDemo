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

@property (nonatomic,strong) KNPersonViewModel *viewModel;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthdateLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self dataSource];
//    [self testMVC];
    [self testMVVM];

}

- (void)dataSource{
    
    self.model = [[KNPerson alloc]initWithSalutation:@"kevin" firstName:@"kn" lastName:@"zhang" birthdate:[NSDate date]];
    self.viewModel = [[KNPersonViewModel alloc]initWithPerson:self.model];
    
}


/**
 将 ViewController 中的展示逻辑testMVC抽取到这个 PersonViewModel 中
 最终，ViewController 将会变得非常轻量级：
 */
- (void)testMVVM{
    self.nameLabel.text = self.viewModel.nameText;
    self.birthdateLabel.text = self.viewModel.birthdateText;
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
