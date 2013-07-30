//
//  InstructionsViewController.m
//  TipCalcApp
//
//  Created by Alex Stephen on 10/28/12.
//
//

#import "InstructionsViewController.h"

@interface InstructionsViewController ()

@end

@implementation InstructionsViewController
@synthesize startButton;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) dealloc{
    [super dealloc];
}

-(IBAction)startButtonPressed:(id)sender{
    UIViewController *tipCalcAppViewController = [[UIViewController alloc] initWithNibName:@"TipCalcAppViewController" bundle:nil];
    [self presentViewController:tipCalcAppViewController animated:YES completion:nil];
    [tipCalcAppViewController release];
}

@end
