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
    double billAmountAsInt = [billAmount intValue];
    NSLog(@"The total bill amount is %ld", (long)billAmountAsInt);
    
    int numberOfPeople = self.numberOfPeople.value;
    int amountPerPerson = billAmountAsInt / numberOfPeople;
    
    NSString *totalPerPerson = [NSNumberFormatter localizedStringFromNumber:@(amountPerPerson) numberStyle:NSNumberFormatterCurrencyAccountingStyle];
    
    
    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
    f.numberStyle = NSNumberFormatterCurrencyAccountingStyle;
    NSString *s1 = [f stringFromNumber:@(amountPerPerson)];
    
    
    self.amountPerPerson.text = [NSString stringWithFormat:@"Each person should pay %@", s1];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}





@end
