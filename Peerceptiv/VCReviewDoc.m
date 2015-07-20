//
//  VCReviewDoc.m
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCReviewDoc.h"
#import "AppDelegate.h"

@interface VCReviewDoc ()

@end

@implementation VCReviewDoc

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)submit:(id)sender {
    
    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    ad.DocReviewed++;
    ad.DocRemained--;
    
}
- (IBAction)sliderChange:(id)sender {
    
    float valueFloat= slider.value;
    //int valueInt = (int) valueFloat;
    sliderGrade.text = [NSString stringWithFormat:@"%.1f", valueFloat];
    
}
@end
