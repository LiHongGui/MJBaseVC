//
//  MJBaseVC.m
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/13.
//

#import "MJBaseVC.h"
@interface MJBaseVC ()

@end

@implementation MJBaseVC
- (WRCustomNavigationBar *)customNavBar
{
    if (_customNavBar == nil) {
        _customNavBar = [WRCustomNavigationBar CustomNavigationBar];
    }
    return _customNavBar;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.modalPresentationStyle = 0;
    self.view.backgroundColor = UIColor.whiteColor;
    self.navigationController.navigationBar.hidden = YES;
    [self setupNavBar];
}
- (void)setupNavBar
{
    [self.view addSubview:self.customNavBar];
    // 设置自定义导航栏背景图片
//    self.customNavBar.barBackgroundImage = [UIImage imageNamed:@"矩形 251"];
    //设置统一颜色
    self.customNavBar.barBackgroundColor = UIColor.blueColor;
    // 设置自定义导航栏标题颜色
    self.customNavBar.titleLabelColor = [UIColor whiteColor];

    if (self.navigationController.childViewControllers.count != 1) {
        //设置返回按钮
        [self.customNavBar wr_setLeftButtonWithTitle:@"<" titleColor:[UIColor whiteColor]];
//        [self.customNavBar wr_setLeftButtonWithImage:[UIImage imageNamed:@""]];
    }
    //设置title
    self.customNavBar.title =  @"";
}

@end
