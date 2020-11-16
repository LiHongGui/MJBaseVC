//
//  MJBaseVC.h
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/13.
//

#import <UIKit/UIKit.h>
#import "WRCustomNavigationBar.h"

NS_ASSUME_NONNULL_BEGIN

@interface MJBaseVC : UIViewController
@property (nonatomic, strong) WRCustomNavigationBar *customNavBar;

@end

NS_ASSUME_NONNULL_END
