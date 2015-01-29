//
//  MyCollectionViewCell.m
//  testCollectionView
//
//  Created by Vinay Raj Dunty on 03/12/14.
//  Copyright (c) 2014 MyTectra. All rights reserved.
//

#import "MyCollectionViewCell.h"

@implementation MyCollectionViewCell

-(void)awakeFromNib
{
    NSLog(@"Log : Awaken from nib");
    

    
}

-(void)setUp
{
    UIView *view = [[UIView alloc]initWithFrame:self.frame];
    view.backgroundColor = [UIColor grayColor];
    self.backgroundView = view;
}

-(instancetype)init
{
    NSLog(@"Log : Init called");
    

    
    return self;
}

@end
