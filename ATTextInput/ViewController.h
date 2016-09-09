//
//  ViewController.h
//  ATTextInput
//
//  Created by Aashish Tamsya on 09/09/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//
#define kAllUIElementHeight 50.0
#define klogButtonWidth 100.0
#define kHorizontalPadding 20.0
#define kVerticalPadding 20.0

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    CGFloat screenWidth;
    CGFloat screenHeight;
    CGFloat textFieldWidth;
    CGFloat logButtonXCoordinate;
    CGFloat displayLabelYCoordinate;
    UILabel *displayLabel;
    UITextField *myTextField;
}

@end

