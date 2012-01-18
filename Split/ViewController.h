//
//  ViewController.h
//  Split
//
//  Created by Jeffrey Rosenbluth on 12/5/11.
//  Copyright (c) 2011 Applause Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UIStepper *splitStep;
@property (weak, nonatomic) IBOutlet UIStepper *distStep;
@property (weak, nonatomic) IBOutlet UIStepper *timeStep;
@property (weak, nonatomic) IBOutlet UITextField *distField;
@property (weak, nonatomic) IBOutlet UITextField *splitField;
@property (weak, nonatomic) IBOutlet UITextField *timeField;
@property (weak, nonatomic) IBOutlet UIImageView *background;
@property (weak, nonatomic) IBOutlet UIButton *splitButton;
@property (weak, nonatomic) IBOutlet UIButton *distButton;
@property (weak, nonatomic) IBOutlet UIButton *timeButton;
@property (weak, nonatomic) IBOutlet UILabel *enter;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *splitControls;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *distControls;
@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *timeControls;
@property (nonatomic, strong) IBOutlet UIView *nibView;

- (IBAction)splitCalc:(id)sender;
- (IBAction)distCalc:(id)sender;
- (IBAction)timeCalc:(id)sender;
- (IBAction)splitStepChanged:(id)sender;
- (IBAction)distStepChanged:(id)sender;
- (IBAction)timeStepChanged:(id)sender;
- (IBAction)done:(id)sender;

@end
