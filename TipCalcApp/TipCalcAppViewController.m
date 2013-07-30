//
//  TipCalcAppViewController.m
//  TipCalcApp
//
//  Created by Alex Stephen on 8/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "TipCalcAppViewController.h"

@implementation TipCalcAppViewController

@synthesize tipView = tipView_;
@synthesize tenPercent = tenPercent_;
@synthesize fivePercent = fivePercent_;
@synthesize totalTip = totalTip_;
@synthesize tenPercentLabel = tenPercentLabel_;
@synthesize fivePercentLabel = fivePercentLabel_;
@synthesize totalTipLabel = totalTipLabel;
@synthesize doneButton = doneButton_;
@synthesize counter = counter;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle





- (void)viewDidLoad
{
    counterAmount = 0;
    [self createTip];
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"Texture.png"]];
    
    //Get Label to equal counter
}



- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark -
#pragma mark Actions
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

- (void)createTip
{
    // Create Number Formatter so tip is formatted correctly
    NSNumberFormatter* tipFormat = [[NSNumberFormatter alloc] init];
    [tipFormat setMinimumFractionDigits:2];
    [tipFormat setMaximumFractionDigits:2];
    
    // Get random number to represent tip (number is 2 decimal points long between 1-100)
    tipAmount_ = [NSNumber numberWithDouble:((arc4random() % 10000) + 100) / (double)100];
    tipView_.text = [tipFormat stringFromNumber:tipAmount_];
    
    [self.view endEditing:YES];
    counter.text = [NSString stringWithFormat:@"%d",counterAmount];
    if(counterAmount > 0){
        [counter setHidden:NO];
    }
    else {
        [counter setHidden:YES];
    }
    
    fivePercent_.text = nil;
    tenPercent_.text = nil;
    totalTip_.text = nil;
    
}

-(IBAction)doneButtonPressed:(id)sender {
    
    // Create floats of all three Textfield values
    double tenPercentValue = tenPercent_.text.doubleValue;
    double fivePercentValue = fivePercent_.text.doubleValue;
    double totalValue = totalTip_.text.doubleValue;
    double correctValue = [tipView_.text doubleValue];
    bool correct1, correct2;
    
    NSLog(@"%f", correctValue);
    NSLog(@"%f", ceil(0.10 * correctValue));
    NSLog(@"%f", floor(0.10 * correctValue));
    NSLog(@"%f", tenPercentValue);
    NSLog(@"%f", fivePercentValue);
    NSLog(@"%f", totalValue);
    NSLog(@"%f", fivePercentValue + tenPercentValue);
          
    
    
     
    
    // Check if all three conditions are true
    if ((tenPercentValue == floor(10 * correctValue) / 100) || (tenPercentValue == ceil(10 * correctValue) /100)) {
        tenPercent_.backgroundColor = [UIColor greenColor];
        tenPercentLabel_.textColor = [UIColor greenColor];
        correct1 = TRUE;
    }
    else {
        tenPercent_.backgroundColor = [UIColor redColor];
        tenPercentLabel_.textColor = [UIColor redColor];
        correct1 = FALSE;
    }
    
    if((fivePercentValue == floor(5 * correctValue) / 100) || (ceil(5 * correctValue) / 100)) {
        fivePercent_.backgroundColor = [UIColor greenColor];
        fivePercentLabel_.textColor = [UIColor greenColor];
        correct2 = TRUE;
    }
    else {
        tenPercent_.backgroundColor = [UIColor redColor];
        tenPercentLabel_.textColor = [UIColor redColor];
        correct2 = FALSE;
    }

    if((tenPercentValue + fivePercentValue == totalValue) && (correct1 && correct2) ) {
        NSLog(@"Correct");
        NSLog(@"%d", correct1);
        NSLog(@"%d", correct2);
        totalTip_.backgroundColor = [UIColor greenColor];
        totalTipLabel.textColor = [UIColor greenColor];
        counterAmount++;
        NSLog(@"Counter Amount");
        NSLog(@"%d", counterAmount);
        [self createTip];
    }
    else {
        NSLog(@"%@\n", (tenPercentValue + fivePercentValue == totalValue ? @"YES" : @"NO"));
        NSLog(@"Wrong");
        NSLog(@"%d", correct1);
        NSLog(@"%d", correct2);
        totalTip_.backgroundColor = [UIColor redColor];
        totalTipLabel.textColor = [UIColor redColor];
    }
}

-(void) dealloc {
    // [tipView_ release];
    [tenPercent_ release];
    [fivePercent_ release];
    [totalTip_ release];
    [totalTipLabel release];
    // [tipAmount_ release];
    [counter release];
    [doneButton_ release];
    
    [super dealloc];
}

@end
