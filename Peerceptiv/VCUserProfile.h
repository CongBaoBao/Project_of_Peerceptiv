//
//  VCUserProfile.h
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kGETUrl @"http://localhost:8888/InteractiveSystemDesign/profile_getdata.php"

@interface VCUserProfile : UIViewController{
    
    IBOutlet UITextField *firstName;

    IBOutlet UITextField *userName;
    IBOutlet UITextField *pseudoName;
    IBOutlet UITextField *lastName;

    NSMutableArray *json;
    NSDictionary *infor;

}

@end
