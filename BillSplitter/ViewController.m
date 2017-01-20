//
//  ViewController.m
//  BillSplitter
//
//  Created by Angie Linton on 2017-01-20.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billAmount;
@property (weak, nonatomic) IBOutlet UISlider *numberOfPeople;
@property (weak, nonatomic) IBOutlet UILabel *amountPerPerson;

@end

@implementation ViewController

- (IBAction)calculateSplitAmount:(UIButton *)sender {
    
    NSString *billAmount = self.billAmount.text;
    NSInteger billAmountAsInt = [billAmount intValue];
    NSLog(@"The total bill amount is %ld", (long)billAmountAsInt);
    
    float numberOfPeople = self.numberOfPeople.value;

    
    int amountPerPerson = billAmountAsInt / numberOfPeople;
    
    NSLog(@"Each person should pay %d", amountPerPerson);
    
    self.amountPerPerson.text = [NSString stringWithFormat:@"Each person should pay $%d.", amountPerPerson];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}





@end
