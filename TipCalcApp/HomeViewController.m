//
//  HomeViewController.m
//  TipCalcApp
//
//  Created by Alex Stephen on 10/26/12.
//
//

#import "HomeViewController.h"

@interface HomeViewController ()


@end

@implementation HomeViewController
@synthesize startButton = startButton_;
@synthesize instructionsButton = instructionsButton_;


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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)startButtonPressed:(id)sender{
    UIViewController *tipCalcAppViewController = [[UIViewController alloc] initWithNibName:@"TipCalcAppViewController" bundle:nil];
    [self presentViewController:tipCalcAppViewController animated:YES completion:nil];
    
}
 

-(IBAction)instructionsButtonPressed:(id)sender{
    UIViewController *instructionsViewController = [[UIViewController alloc] initWithNibName:@"InstructionsViewController" bundle:nil];
    [self presentViewController:instructionsViewController animated:YES completion:nil];
    
}
 

-(void) dealloc{
   // [startButton_ release];
   // [instructionsButton_ release];
    [super dealloc];
}
@end
