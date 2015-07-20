//
//  VCGradeDetail.m
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCGradeDetail.h"

@interface VCGradeDetail ()

@end

@implementation VCGradeDetail

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
    review.text = [infor valueForKey:@"review_grade"];
    accuracy.text = [infor valueForKey:@"accuracy_grade"];
    latePenalty.text = [infor valueForKey:@"review_late_penalty"];
    helpfulness.text = [infor valueForKey:@"helpfulness_grade"];
    writing.text =[infor valueForKey:@"writing_grade"];
    writingLate.text = [infor valueForKey:@"writing_late_penalty"];
    task.text = [infor valueForKey:@"task_grade"];
    reviewTask.text = [infor valueForKey:@"review_task"];
    backEval.text = [infor valueForKey:@"backeval_task"];
    
    firstWeight.text =[infor valueForKey:@"first_part_score"];
    secondWeight.text = [infor valueForKey:@"second_part_score"];
    thirdWeight.text = [infor valueForKey:@"third_part_score"];
    
    totalScore.text = [infor valueForKey:@"total_score"];

    
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
