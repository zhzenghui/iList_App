//
//  ZHViewController.m
//  iList_App
//
//  Created by zeng hui on 1/8/14.
//  Copyright (c) 2014 zeng hui. All rights reserved.
//

#import "ZHViewController.h"
#import "CostViewController.h"


@interface ZHViewController ()

@end

@implementation ZHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)openViewController:(id)sender {
    UIButton *button = (UIButton *)sender;
    UIViewController *vc;
    switch (button.tag) {
            case KCostTag:
            vc = [[CostViewController alloc] initWithNibName:@"CostViewController" bundle:nil];
            break;
            
        default:
            break;
    }
    
    [self.navigationController pushViewController:vc animated:YES];
    
}
@end
