//
//  DemoTabVC.m
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/11.
//

#import "DemoTabVC.h"
#import "WRNavigationBar.h"

@interface DemoTabVC ()

@end

@implementation DemoTabVC
- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.customNavBar wr_setBackgroundAlpha:1];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.customNavBar.title = @"Two";
    self.tableView.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
//    [self sette
}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
//    [self.customNavBar wr_setBackgroundAlpha:1];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = @"2";
    cell.textLabel.font = [UIFont systemFontOfSize:15];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"didSelectRowAtIndexPath");
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}
@end
