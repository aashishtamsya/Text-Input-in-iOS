//
//  ViewController.h
//  ATTextInput
//
//  Created by Aashish Tamsya on 09/09/16.
//  Copyright © 2016 Aashish Tamsya. All rights reserved.
//

// All constant values used in application
#define kAllUIElementHeight 50.0
#define klogButtonWidth 100.0
#define kHorizontalPadding 20.0
#define kVerticalPadding 20.0

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
{
    // Varible to store width of screen
    CGFloat screenWidth;
    // Varible to store height of screen
    CGFloat screenHeight;
    // Varible to store width of user input textfield
    CGFloat textFieldWidth;
    // Varible to store x coordinate for log button
    CGFloat logButtonXCoordinate;
    // Varible to store y coordinate for display label
    CGFloat displayLabelYCoordinate;

    UILabel *displayLabel;
    UITextField *myTextField;
}

@end

