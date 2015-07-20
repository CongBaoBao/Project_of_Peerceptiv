//
//  VDSignIn.m
//  Peerceptiv
//
//  Created by JX on 14-12-8.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VDSignIn.h"

@interface VDSignIn ()

@end

@implementation VDSignIn

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)signIn:(id)sender {
    
    [self postMessage:nameText.text withPassword:passwordText.text];
    [nameText resignFirstResponder];
    
    nameText.text = nil;
    passwordText.text = nil;
    
    [self start];
    
    if (pseudoNameDB == nil) {
        NSLog(@"wrong username or password");
        [self performSegueWithIdentifier:@"fail" sender:self];
    }else if (pseudoNameDB != nil){
        NSLog(@"correct ");
        [self performSegueWithIdentifier:@"success" sender:self];
    }
    
    NSLog(@"Bread point in sender");
    
    
}

- (void) postMessage:(NSString*) name withPassword: (NSString*) password{

    if (name != nil && password != nil) {
         postString = [NSMutableString stringWithString:kPostURL];
        [postString appendString:[NSString stringWithFormat:@"?%@=%@", kName, name]];
        [postString appendString:[NSString stringWithFormat:@"&%@=%@", kPassword, password]];
        [postString setString:[postString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
        
        NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:postString]];
        
        [request setHTTPMethod:@"POST"];
        
        postConnection = [[NSURLConnection alloc] initWithRequest:request delegate:self startImmediately:YES];
    }
}

-(void) start {
    NSURL *url = [NSURL URLWithString:postString];
    // NSData* data = [str dataUsingEncoding:NSUTF8StringEncoding];
    NSData* data = [NSData dataWithContentsOfURL:url];
    
    [self getData:data];
    
    //NSError *error;
    
    //json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
}

-(void) getData: (NSData *) data {
    NSError *error;
    
    json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    if (json.count != nil) {
        NSDictionary *infor = [json objectAtIndex:0];
        pseudoNameDB = [infor valueForKey:@"pseudonym"];
    }

}
@end
