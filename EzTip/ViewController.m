//
//  ViewController.m
//  EzTip
//
//  Created by karpark on 10/20/15.
//
//

#import "ViewController.h"
#import "DollarViewController.h"


#define THEME_COLOR 0xff4826
#define RED ((THEME_COLOR >> 16) & 0x000000ff)
#define GREEN ((THEME_COLOR >> 8) & 0x000000ff)
#define BLUE (THEME_COLOR & 0x000000ff)

static const float fWidthOfMoneyView = 120.0f;
static const float fHeightOfMoneyView = 100.0f;

@interface ViewController (){
    DollarViewController *_dollarViewController;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGFloat r = (CGFloat)RED/255.0f;
    CGFloat g = (CGFloat)GREEN/255.0f;
    CGFloat b = (CGFloat)BLUE/255.0f;
    
    CGRect rect = [[self view]frame];
    
    CGFloat fLeft = (rect.size.width - fWidthOfMoneyView) / 2.0f;
    CGFloat fTop = 100.0f;
    
    
    UIColor *theColor = [UIColor colorWithRed:r green:g blue:b alpha:1.0f];
    
    // Better to do this in xib. doing this programatically doesn't scale.
    // But this seems to get things going for now.
    
    [self.view setBackgroundColor:theColor];
    
    CGRect frame = CGRectMake(fLeft, fTop, fWidthOfMoneyView, fHeightOfMoneyView);
    _dollarViewController = [[DollarViewController alloc] initWithFrame:frame withColor:theColor];
    [self.view addSubview:_dollarViewController.view];
    
    //[self. becomeFirstResponder];
    [_dollarViewController bringNumericKeyboard];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
