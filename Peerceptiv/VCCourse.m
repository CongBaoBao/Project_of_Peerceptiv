//
//  VCCourse.m
//  Peerceptiv
//
//  Created by JX on 14-12-8.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCCourse.h"
#import "AppDelegate.h"

@interface VCCourse ()

@end

@implementation VCCourse

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    if (ad.finishAssign == YES) {
        go.enabled = NO;
    }
    [self start];
    
    courseName.text = coursNameDB;
    assignId.text = assignIDDB;
    assignDueDay.text = assignDueDayDB;
    reviewDueDay.text = reviewDueDayDB;
    
    NSLog(@"check point after show lable");
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
    coursNameDB = [infor valueForKey:@"course_name"];
    assignIDDB = [infor valueForKey:@"assignment_name"];
    assignDueDayDB = [infor valueForKey:@"due_day"];
    reviewDueDayDB = [infor valueForKey:@"review_dueday"];
    
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
