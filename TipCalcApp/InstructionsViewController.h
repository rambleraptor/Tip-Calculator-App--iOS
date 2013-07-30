//
//  InstructionsViewController.h
//  TipCalcApp
//
//  Created by Alex Stephen on 10/28/12.
//
//

#import <UIKit/UIKit.h>

@interface InstructionsViewController : UIViewController{
    UIButton *startButton;
}
@property (nonatomic, retain) IBOutlet UIButton *startButton;

-(IBAction)startButtonPressed:(id)sender;
@end
