//
//  VCGradeInfor.m
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCGradeInfor.h"

@interface VCGradeInfor ()

@end

@implementation VCGradeInfor

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self start];
}


-(void) start {
    NSURL *url = [NSURL URLWithString:kGETUrl];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    [self getData:data];
}

-(void) getData: (NSData *) data {
    NSError *error;
    
    json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    infor = [json objectAtIndex:0];
    courseName.text = [infor valueForKey:@"course_name"];
    assignName.text = [infor valueForKey:@"assignment_name"];

    
    NSLog(@"break point in the end of getData");
    
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
