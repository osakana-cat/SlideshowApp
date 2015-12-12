//
//  ViewController.m
//  SlideshowApp
//
//  Created by さき on 2015/12/08.
//  Copyright © 2015年 saki.yokota. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    
    UIImageView *aImageView;
    NSInteger countNumber;
    
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupBackground];
    [self setupButton];
    
}


-(void)setupBackground{
    aImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    aImageView.image = [UIImage imageNamed:@"flower0.png"];
    [self.view addSubview:aImageView];
}


-(void)setupButton{
    
    //①戻るボタンを作成する
    UIButton *Button1 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //サイズ・デザインとか
    Button1.frame = CGRectMake(0, 0, 120, 45);
    Button1.center = CGPointMake(160, 50);
    
    [Button1 setImage:[UIImage imageNamed:@"modoru_yajirusi.png"] forState:UIControlStateNormal];
    
    //押された時
[Button1 addTarget:self action:@selector(changeImageUsingIf1:) forControlEvents:UIControlEventTouchUpInside];
    
    //画面に貼り付ける
    [self.view addSubview:Button1];
    
    
    
    //②進むボタンを作成する
    UIButton *Button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    
    //サイズ・デザインとか
    Button2.frame = CGRectMake(0, 0, 120, 45);
    Button2.center = CGPointMake(160, 518);
    
   [Button2 setImage:[UIImage imageNamed:@"susumu_yajirusi.png"] forState:UIControlStateNormal];
    
    //押された時
[Button2 addTarget:self action:@selector(changeImageUsingIf2:) forControlEvents:UIControlEventTouchUpInside];
    
    //画面に貼り付ける
    [self.view addSubview:Button2];

}


//戻るボタンで呼び出されるメソッド  -(void)メソッド名:(id)sender
-(void)changeImageUsingIf1:(id)sender{
    countNumber--;
    
    
    if (countNumber < 0) {
        
        countNumber = 3;
    }
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"flower%ld.png",countNumber]];
}


//進むボタンで呼び出されるメソッド  -(void)メソッド名:(id)sender
-(void)changeImageUsingIf2:(id)sender{
    countNumber++;
    
    if (countNumber >= 4){
        
        countNumber = 0;
        
    }
    aImageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"flower%ld.png",countNumber]];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
