//
//  VCReviewDoc.h
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VCReviewDoc : UIViewController{
    
    IBOutlet UILabel *sliderGrade;
    IBOutlet UISlider *slider;
    
}
- (IBAction)submit:(id)sender;
- (IBAction)sliderChange:(id)sender;



@end
