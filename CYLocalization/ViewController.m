//
//  ViewController.m
//  CYLocalization
//
//  Created by 百事&可乐 on 2019/7/4.
//  Copyright © 2019 百事&可乐. All rights reserved.
//

#import "ViewController.h"
#define SCREEN_W [[UIScreen mainScreen] bounds].size.width
#define SCREEN_H [[UIScreen mainScreen] bounds].size.height
#define Localized(key)  [[NSBundle bundleWithPath:[[NSBundle mainBundle] pathForResource:[NSString stringWithFormat:@"%@",[[NSUserDefaults standardUserDefaults] objectForKey:@"appLanguage"]] ofType:@"lproj"]] localizedStringForKey:(key) value:nil table:@"Localizable"]
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UILabel *title = [[UILabel alloc]init];
    title.frame = CGRectMake(10, 70, SCREEN_W-20, 30);
    title.text = NSLocalizedString(@"country_name", nil);//第二个参数可以注释 也可传nil
//    title.text = Localized(@"country_name");
    [self.view addSubview:title];
    
    UIImageView *pic = [[UIImageView alloc]init];
    pic.frame = CGRectMake(10, 120, SCREEN_W-20, 200);
    pic.contentMode = UIViewContentModeScaleAspectFit;
    pic.image = [UIImage imageNamed:NSLocalizedString(@"national_flag", nil)];
//    pic.image = [UIImage imageNamed:Localized(@"national_flag")];
    [self.view addSubview:pic];
    
    UILabel *forceTitle = [[UILabel alloc]init];
    forceTitle.frame = CGRectMake(10, 340, SCREEN_W-20, 30);
    forceTitle.text = Localized(@"force_language");
    [self.view addSubview:forceTitle];
}


@end
