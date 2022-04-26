//
//  HomeViewController.m
//  GBLibraryShopRN
//
//  Created by Hubei CA on 2022/4/26.
//

#import "HomeViewController.h"
#import <FYUtil/FYUtil.h>
#import <React/RCTRootView.h>

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [[[[UIButton buttonFyTitle:@"Test Action" color:UIColorFromRGB(0x16cd6c)] addToFySuperView:self.view] layoutFyView:^(UIButton * _Nonnull button) {
            button.fy_centerX = APP_SCR_W * 0.5f;
            button.fy_cornerRadius = 2.0f;
            button.fy_borderWidth = 1.0f;
            button.fy_borderColor = UIColorFromRGB(0xcd16c6);
            button.fy_centerY = APP_SCR_H * 0.5f;
    }] addTarget:self action:@selector(buttonClicked:) forControlEvents:(UIControlEventTouchUpInside)];
}


-(void)buttonClicked:(id)sender{
    NSLog(@"High Score Button Pressed");
    NSURL *jsCodeLocation = [NSURL URLWithString:@"http://localhost:8081/index.bundle?platform=ios"];

    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL: jsCodeLocation moduleName: @"GBLibraryShopRN" initialProperties:
     @{@"scores": @[@{@"name": @"Alex", @"value": @"42"}, @{@"name": @"Joel", @"value": @"10"}]} launchOptions: nil];
    BaseViewController *vc = [[BaseViewController alloc] init];
    vc.view = rootView;
    [self presentViewController:vc animated:YES completion:nil];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
