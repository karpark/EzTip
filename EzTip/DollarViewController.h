//
//  DollarViewController.h
//  EzTip
//
//  Created by karpark on 10/22/15.
//
//

#import <UIKit/UIKit.h>

@interface DollarViewController : UIViewController
- (IBAction)numberEntered:(id)sender;

@property (weak, nonatomic) IBOutlet UIImageView *imgDollar;
@property (weak, nonatomic) IBOutlet UILabel *lblAmount;
- (instancetype) initWithFrame:(CGRect)frame withColor:(UIColor*)color;
- (void) bringNumericKeyboard;


@property (strong, nonatomic) IBOutlet UITextField *txtHidden;
@end
