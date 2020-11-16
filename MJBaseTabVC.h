//
//  MJBaseTabVC.h
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/11.
//

#import <UIKit/UIKit.h>
#import "MJBaseVC.h"
NS_ASSUME_NONNULL_BEGIN
@class MJBaseTabVC;
@protocol MJBaseTabVCDelegate <NSObject>
-(void)MJBaseTabVC:(MJBaseTabVC *)MJBaseTabVC didSelectRowAtIndexPath:(NSIndexPath *)indexPath objC:(NSObject *)objC;

@end
@interface MJBaseTabVC : MJBaseVC
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) CGFloat colorOffset;
@property(nonatomic,weak) id<MJBaseTabVCDelegate>delegate;
@end

NS_ASSUME_NONNULL_END
