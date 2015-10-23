//
//  DollarViewController.m
//  EzTip
//
//  Created by karpark on 10/22/15.
//
//

#import "DollarViewController.h"



@interface DollarViewController ()

@end

@implementation DollarViewController

- (instancetype) initWithFrame:(CGRect)frame withColor:(UIColor*)color {
    self = [super initWithNibName:@"DollarViewController" bundle:nil];
    UIImage *img = [UIImage imageNamed:@"dollar.png"];
    CGSize imgSize = [img size];
    [self.imgDollar setImage:img];
    CGRect rect = [self.lblAmount frame];
    
    rect.origin.x = imgSize.width;
    rect.origin.y = 0.0f + 10.0f;
    rect.size.width =  frame.size.width - imgSize.width;
    rect.size.height = frame.size.height;
    
    [self.lblAmount setAdjustsFontSizeToFitWidth:YES];
    [self.lblAmount setMinimumScaleFactor:2.0f];
    [self.lblAmount setFrame:rect];
    [self.lblAmount setText:@"0"];
    
    [self.view setFrame:frame];
    [self.view setBackgroundColor:color];
    return self;
}

- (void) bringNumericKeyboard
{
    // temporary workaround to bring numeric keyboard
    // It seems we are going to have write basic keypad view
    // in order to be show it on top of 'Next' button.
    
    [self.txtHidden becomeFirstResponder];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //[self.lblAmount setText:@"asdlkjfsldkfj"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


- (IBAction)numberEntered:(id)sender {
    UITextField* numField = (UITextField*) sender;
    [self.lblAmount setText:[numField text]];
    CGSize textSize = [[self.lblAmount text] sizeWithAttributes:@{NSFontAttributeName:[self.lblAmount font]}];
    textSize.width += 20; // account for $ image
    CGRect numfieldFrame = [numField frame];
    numfieldFrame.size.width + textSize.width;
    [numField setFrame:numfieldFrame];

    NSLog(@"%@", [numField text]);
    
}

@end
