//
//  VCGradeDetail.h
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGETUrl @"http://localhost:8888/InteractiveSystemDesign/grade_getdata.php"

@interface VCGradeDetail : UIViewController{
    
    IBOutlet UILabel *review;
    IBOutlet UILabel *accuracy;

    IBOutlet UILabel *latePenalty;
    IBOutlet UILabel *helpfulness;
    
    IBOutlet UILabel *writing;
    IBOutlet UILabel *writingLate;
    
    IBOutlet UILabel *task;
    IBOutlet UILabel *reviewTask;
    IBOutlet UILabel *backEval;
    
    IBOutlet UILabel *firstWeight;
    IBOutlet UILabel *secondWeight;
    IBOutlet UILabel *thirdWeight;
    
    
    IBOutlet UILabel *totalScore;
    
    NSMutableArray *json;
    NSDictionary *infor;
    
    
    NSString *reviewDB;
    NSString *accuracyDB;
    
    NSString *latePenaltyDB;
    NSString *helpfulnessDB;
    
    NSString *writingDB;
    NSString *writingLateDB;
    
    NSString *taskDB;
    NSString *reviewTaskDB;
    NSString *backEvalDB;
    
    
    
}

@end
