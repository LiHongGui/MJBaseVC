//
//  MJBaseCollectionVC.h
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/16.
//

#import <UIKit/UIKit.h>
#import "WRCustomNavigationBar.h"

NS_ASSUME_NONNULL_BEGIN

@interface MJBaseCollectionVC : UIViewController
@property (nonatomic, strong) WRCustomNavigationBar *customNavBar;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, assign) CGFloat colorOffset;
@end

NS_ASSUME_NONNULL_END
