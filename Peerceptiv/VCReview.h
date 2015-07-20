//
//  VCReview.h
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGETUrl @"http://localhost:8888/InteractiveSystemDesign/course_getdocumentdata.php"

@interface VCReview : UIViewController{
    
    IBOutlet UITextView *docToBeReviewd;
    IBOutlet UITextView *docReviewed;
    IBOutlet UIButton *requestDoc;
    IBOutlet UIButton *reviewComplete;
    
    NSMutableArray *json;
    NSDictionary *infor;
    
    NSString *docID;
}
- (IBAction)requestNewDoc:(id)sender;
- (IBAction)reviewComplete:(id)sender;


@end
