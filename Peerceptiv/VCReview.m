//
//  VCReview.m
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCReview.h"
#import "AppDelegate.h"

@interface VCReview ()

@end

@implementation VCReview

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    docToBeReviewd.text = [NSString stringWithFormat:@"%d", ad.DocRemained];
    docReviewed.text = [NSString stringWithFormat:@"%d", ad.DocReviewed];
    
    if (ad.DocReviewed < ad.totalDocForReview) {
        requestDoc.enabled = YES;
        reviewComplete.enabled = NO;
    }else if(ad.DocReviewed == ad.totalDocForReview){
        requestDoc.enabled = NO;
        reviewComplete.enabled = YES;
    }
    
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

- (IBAction)requestNewDoc:(id)sender {
    [self start];
}

- (IBAction)reviewComplete:(id)sender {
    
    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    ad.finishAssign = YES;
}

-(void) start {
    NSURL *url = [NSURL URLWithString:kGETUrl];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    [self getData:data];
}

-(void) getData: (NSData *) data {
    NSError *error;
    
    AppDelegate *ad =(AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    
    for (int i=0; i<3; i++) {
        infor = [json objectAtIndex:i];
        //docID = [infor valueForKey:@"document_id"];
        if (i == 0) {
            ad.doc1 = [infor valueForKey:@"text"];
        }else if(i == 1) { ad.doc2 = [infor valueForKey:@"text"];}
         else if(i == 2) { ad.doc3 = [infor valueForKey:@"text"];}
        
    }

    
    NSLog(@"break point in the end of getData");
    
    
}

@end
