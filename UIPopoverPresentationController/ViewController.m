//
//  ViewController.m
//  UIPopoverPresentationController
//
//  Created by Mahaboobsab Nadaf on 24/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tableDidSelected:) name:@"click" object:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickMe:(id)sender {
    
    self.buttonPopVC = [[PopoverViewController alloc] init];
    self.buttonPopVC.modalPresentationStyle = UIModalPresentationPopover;
    self.buttonPopVC.popoverPresentationController.sourceView = _button;  //（0，0）
    self.buttonPopVC.popoverPresentationController.sourceRect = _button.bounds;
    self.buttonPopVC.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;     self.buttonPopVC.popoverPresentationController.delegate = self;
    [self presentViewController:self.buttonPopVC animated:YES completion:nil];


    
}

- (IBAction)optionsButton:(id)sender {
    self.itemPopVC = [[PopoverViewController alloc] init];
    
    self.itemPopVC.modalPresentationStyle = UIModalPresentationPopover;
    
    self.itemPopVC.popoverPresentationController.barButtonItem = self.navigationItem.rightBarButtonItem;  //rect（0，0）
    
    self.itemPopVC.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionUnknown;
    
    self.itemPopVC.popoverPresentationController.delegate = self;
    
    [self presentViewController:self.itemPopVC animated:YES completion:nil];
}





//Popover table cell

- (void)tableDidSelected:(NSNotification *)notification {
    NSIndexPath *indexpath = (NSIndexPath *)notification.object;
    switch (indexpath.row) {
        case 0:
            self.view.backgroundColor = [UIColor greenColor];
            break;
        case 1:
            self.view.backgroundColor = [UIColor grayColor];
            break;
        case 2:
            self.view.backgroundColor = [UIColor blueColor];
            break;
        case 3:
            self.view.backgroundColor = [UIColor purpleColor];
            break;
        case 4:
            self.view.backgroundColor = [UIColor yellowColor];
            break;
    }
    if (self.buttonPopVC) {
        [self.buttonPopVC dismissViewControllerAnimated:YES completion:nil];
        self.buttonPopVC = nil;
        
    }else{
        [self.itemPopVC dismissViewControllerAnimated:YES completion:nil];
        self.itemPopVC = nil;
    }
}


- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller{
    return UIModalPresentationNone;
}

- (BOOL)popoverPresentationControllerShouldDismissPopover:(UIPopoverPresentationController *)popoverPresentationController{
    return NO;   
}

@end
