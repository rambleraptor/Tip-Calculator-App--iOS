//
//  HomeViewController.h
//  TipCalcApp
//
//  Created by Alex Stephen on 10/26/12.
//
//

#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController{
     UIButton* startButton_;
     UIButton* instructionsButton_;
}

 @property(nonatomic,retain) IBOutlet UIButton *startButton;
 @property(nonatomic,retain) IBOutlet UIButton *instructionsButton;

-(IBAction)startButtonPressed:(id)sender;
-(IBAction)instructionsButtonPressed:(id)sender;

@end
