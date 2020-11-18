//
//  MJBaseCollectionVC.m
//  MJNaviBar
//
//  Created by MichaelLi on 2020/11/16.
//

#import "MJBaseCollectionVC.h"
#import "MJBaseCollectionXibCell.h"
#define kUIScreen [UIScreen mainScreen].bounds
#define kUIS_W [UIScreen mainScreen].bounds.size.width
#define kUIS_H [UIScreen mainScreen].bounds.size.height
@interface MJBaseCollectionVC ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end
static NSString *identifier = @"MJBaseCollectionXibCell";
@implementation MJBaseCollectionVC
-(UICollectionView *)collectionView
{
    if (!_collectionView) {
        UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc]init];
        flow.minimumLineSpacing = 0;
        flow.minimumInteritemSpacing  = 0;
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, kUIS_W, kUIS_H) collectionViewLayout:flow];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
    }
    return _collectionView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
//    [self.collectionView registerNib:[UINib nibWithNibName:@"MJBaseCollectionXibCell" bundle:nil] forCellWithReuseIdentifier:@""];
    [self registerNibStr:@"MJBaseCollectionXibCell" forCellWithReuseIdentifierStr:identifier];
    [self.view addSubview:self.collectionView];
}
-(void)registerNibStr:(NSString *)registerNibStr forCellWithReuseIdentifierStr:(NSString *)forCellWithReuseIdentifierStr
{
    [self.collectionView registerNib:[UINib nibWithNibName:registerNibStr bundle:nil] forCellWithReuseIdentifier:forCellWithReuseIdentifierStr];

}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 40;
}
//- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath;
//{
//    MJBaseCollectionXibCell *cell = [MJBaseCollectionXibCell ]
//}
@end
