//
//  VCAssign.m
//  Peerceptiv
//
//  Created by JX on 14-12-9.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCAssign.h"
#import "AppDelegate.h"

@interface VCAssign ()

@end

@implementation VCAssign

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *ad = (AppDelegate *) [[UIApplication sharedApplication] delegate];
    
    if (ad.assignStatus == 0){
        assignDescription.enabled = YES;
        reviewOtherDoc.enabled = NO;
    }else if(ad.assignStatus == 1){
        assignDescription.enabled = NO;
        reviewOtherDoc.enabled = YES;
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
