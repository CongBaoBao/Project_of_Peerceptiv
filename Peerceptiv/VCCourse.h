//
//  VCCourse.h
//  Peerceptiv
//
//  Created by JX on 14-12-8.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGETUrl @"http://localhost:8888/InteractiveSystemDesign/getcoursedata.php"

@interface VCCourse : UIViewController{

    IBOutlet UILabel *courseName;
    IBOutlet UILabel *assignId;
    IBOutlet UILabel *assignDueDay;
    IBOutlet UILabel *reviewDueDay;
    
    IBOutlet UIButton *go;
    
    
    NSMutableArray *json;
    NSDictionary *infor;
    NSString *coursNameDB;
    NSString *assignIDDB;
    NSString *assignDueDayDB;
    NSString *reviewDueDayDB;
    

}

@end
