//
//  VCGradeInfor.h
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGETUrl @"http://localhost:8888/InteractiveSystemDesign/getcoursedata.php"

@interface VCGradeInfor : UIViewController{
    
    IBOutlet UILabel *courseName;
    IBOutlet UILabel *assignName;
    
    NSMutableArray *json;
    NSDictionary *infor;

}

@end
