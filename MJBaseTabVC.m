//
//  MJBaseTabVC.m
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/11.
//

#import "MJBaseTabVC.h"
#import "WRNavigationBar.h"
#import "DemoTabVC.h"
#import "ViewController.h"
@interface MJBaseTabVC ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation MJBaseTabVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.customNavBar wr_setBackgroundAlpha:self.colorOffset];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    if (@available(iOS 11.0, *)) {
        self.tableView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    [self.view insertSubview:self.customNavBar aboveSubview:self.tableView];
    self.customNavBar.title =  @"One";
    
    
}
-(BOOL)setterVC:(Class )setterClass {
    BOOL isVC = NO;
    for (UIViewController *vc in self.navigationController.viewControllers) {
        if ([vc isKindOfClass:setterClass]) {
            isVC = YES;
        }
    }
    return isVC;
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    CGFloat offsetY = scrollView.contentOffset.y;
    self.colorOffset = offsetY / [WRCustomNavigationBar navBarBottom];
    //图片
    [self.customNavBar wr_setBackgroundAlpha:self.colorOffset];
//    self.customNavBar.alpha = colorOffset;
}

#pragma mark - tableview delegate / dataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                                   reuseIdentifier:nil];
    
    cell.textLabel.text = @"MJBaseTabVC";
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    if ([self.delegate respondsToSelector:@selector(mjBaseTabVC:didSelectRowAtIndexPath:objC:)]) {
//        [self.delegate mjBaseTabVC:self didSelectRowAtIndexPath:indexPath objC:nil];
//    }
    DemoTabVC *vc = [[DemoTabVC alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - getter / setter
- (UITableView *)tableView
{
    if (_tableView == nil) {
        CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        _tableView = [[UITableView alloc] initWithFrame:frame
                                                  style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    return _tableView;
}


@end
