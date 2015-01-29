//
//  ViewController.m
//  testCollectionView
//
//  Created by Vinay Raj Dunty on 03/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "ViewController.h"
#import "MyCollectionViewCell.h"

@interface ViewController ()<UICollectionViewDataSource, UICollectionViewDelegate>
{
    int totalCount;
    int currentCount;
}
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    totalCount = 500;
    currentCount = 10;
    
  //  self.collectionView.pagingEnabled = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return currentCount;
}

-(void)fetchMore
{
    currentCount += 20;
    [self.collectionView reloadData];
}


-(MyCollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    if( indexPath.row == currentCount-1 )
    {
        [self fetchMore];
    }
    
    MyCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    cell.lbl.text = [@"Lbl-" stringByAppendingString: [NSString stringWithFormat:@"%ld", (long)indexPath.row]];
    [cell setUp];
    
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return self.view.frame.size;
}

@end
