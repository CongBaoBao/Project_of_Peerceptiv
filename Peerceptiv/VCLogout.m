//
//  VCLogout.m
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCLogout.h"
#import "AppDelegate.h"

@interface VCLogout ()

@end

@implementation VCLogout

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

- (IBAction)logout:(id)sender {
    abort();
    }
@end
