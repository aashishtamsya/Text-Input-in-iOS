//
//  ViewController.m
//  ATTextInput
//
//  Created by Aashish Tamsya on 09/09/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // Getting dynamic screen height & width
    screenWidth = [[UIScreen mainScreen]bounds].size.width;
    screenHeight = [[UIScreen mainScreen]bounds].size.height;

    // Setting textfield width
    textFieldWidth = screenWidth - (3*kHorizontalPadding) - kAllUIElementHeight;
    
    // Setting x origin coordinate of log button
    logButtonXCoordinate = textFieldWidth + (2*kHorizontalPadding);
    
    // Setting y origin coordinate of display label
    displayLabelYCoordinate = kVerticalPadding + kAllUIElementHeight + 100;
    
    
    // Adding texfield to screen
    myTextField = [[UITextField alloc]initWithFrame:CGRectMake(kHorizontalPadding, 100, textFieldWidth, kAllUIElementHeight)];
    [myTextField setBorderStyle:UITextBorderStyleBezel];
    myTextField.delegate = self;
    [self.view addSubview:myTextField];
    
    // Adding log button to screen
    UIButton *logButton = [[UIButton alloc]initWithFrame:CGRectMake(logButtonXCoordinate, 100, kAllUIElementHeight, kAllUIElementHeight)];
    logButton.backgroundColor = [UIColor redColor];
    [logButton setTitle:@"LOG" forState:UIControlStateNormal];
    logButton.layer.cornerRadius = kAllUIElementHeight/2;
    [logButton addTarget:self action:@selector(handleLog) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:logButton];
    
    // Adding display label to screen
    displayLabel = [[UILabel alloc]initWithFrame:CGRectMake(kHorizontalPadding, displayLabelYCoordinate, screenWidth - (2*kHorizontalPadding), kAllUIElementHeight)];
    displayLabel.backgroundColor = [UIColor yellowColor];
    displayLabel.textColor = [UIColor blackColor];
    displayLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:displayLabel];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Action on log button tap
-(void)handleLog {
    
    [self displayContent:myTextField.text];
    
}

// Method to display content from textfield to display label
-(void) displayContent:(NSString *)content {
    
    if (content.length > 0) {
        displayLabel.text = content;
    }
    else {
        displayLabel.text = @"Please Enter Value.";
    }
    
}

// Method confirmed through UITextFieldDelegate protocol to push keyboard back on tapping return button
-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    // Calling method to display content on tapping on return button
    [self displayContent:textField.text];
    // Method to resign keyboard from screen
    [textField resignFirstResponder];
    return YES;
}


@end
