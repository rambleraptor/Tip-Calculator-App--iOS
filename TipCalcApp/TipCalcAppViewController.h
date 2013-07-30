//
//  TipCalcAppViewController.h
//  TipCalcApp
//
//  Created by Alex Stephen on 8/27/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
// 
#import <UIKit/UIKit.h>

@interface TipCalcAppViewController : UIViewController{
    UILabel* tipView_;
    UILabel* tenPercentLabel_;
    UILabel* fivePercentLabel_;
    UILabel* totalTipLabel;
    UILabel* counter;
    UITextField* tenPercent_;
    UITextField* fivePercent_;
    UITextField* totalTip_;
    NSNumber* tipAmount_;
    int counterAmount;
    
    UIButton* doneButton_;
}
@property (nonatomic, retain) IBOutlet UILabel *tipView; 
@property (nonatomic, retain) IBOutlet UILabel *tenPercentLabel;
@property (nonatomic, retain) IBOutlet UILabel *fivePercentLabel;
@property (nonatomic, retain) IBOutlet UILabel *totalTipLabel;
@property (nonatomic, retain) IBOutlet UILabel *counter;
@property (nonatomic, retain) IBOutlet UITextField *tenPercent;
@property (nonatomic, retain) IBOutlet UITextField *fivePercent;
@property (nonatomic, retain) IBOutlet UITextField *totalTip;
@property (nonatomic, retain) IBOutlet UIButton *doneButton;

-(IBAction)doneButtonPressed:(id)sender;
-(void)createTip;
-(void)counterHide;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
-(IBAction)backButtonPressed:(id)sender;

@end
