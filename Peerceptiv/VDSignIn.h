//
//  VDSignIn.h
//  Peerceptiv
//
//  Created by JX on 14-12-8.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//  JX

#import <UIKit/UIKit.h>
#define kPostURL @"http://localhost:8888/InteractiveSystemDesign/sign_in.php"
#define kName @"email"
#define kPassword @"password"

@interface VDSignIn : UIViewController {

    IBOutlet UITextField *nameText;
    IBOutlet UITextField *passwordText;
    
    NSURLConnection *postConnection;
    NSMutableString *postString;
    
    NSMutableArray *json;
    
    NSString *pseudoNameDB;
}
- (IBAction)signIn:(id)sender;

@end
