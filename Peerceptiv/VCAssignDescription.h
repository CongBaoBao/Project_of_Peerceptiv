//
//  VCAssignDescription.h
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCAssignDescription : UIViewController{


    
    
    IBOutlet UILabel *assignmentName;
    IBOutlet UITextView *textSubmission;
    IBOutlet UITextView *assignDescription;
    IBOutlet UITextView *shortDescription;
    
    
    NSMutableArray *json;
    NSDictionary *infor;
    NSString *assignmentNameDB;
    NSString *shortDescriptionDB;
    NSString *assignDescriptionDB;

}
- (IBAction)submit:(id)sender;

@end
