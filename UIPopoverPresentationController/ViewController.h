//
//  ViewController.h
//  UIPopoverPresentationController
//
//  Created by Mahaboobsab Nadaf on 24/09/16.
//  Copyright © 2016 com.NeoRays. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PopoverViewController.h"

@interface ViewController : UIViewController<UIPopoverPresentationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *button;

@property (strong, nonatomic) PopoverViewController *buttonPopVC;
@property (strong, nonatomic) PopoverViewController *itemPopVC;
@property (strong, nonatomic) NSString *currentPop;
- (IBAction)clickMe:(id)sender;

- (IBAction)optionsButton:(id)sender;

@end

