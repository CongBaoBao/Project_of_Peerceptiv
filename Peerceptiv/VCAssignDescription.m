//
//  VCAssignDescription.m
//  Peerceptiv
//
//  Created by JX on 14-12-10.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import "VCAssignDescription.h"
#import "AppDelegate.h"
#define kGETUrl @"http://localhost:8888/InteractiveSystemDesign/course_getassignmentdata.php"

@interface VCAssignDescription ()


@end

@implementation VCAssignDescription

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self start];
    
    assignmentName.text = assignmentNameDB;
    shortDescription.text = shortDescriptionDB;
    assignDescription.text = assignDescriptionDB;

    
    NSLog(@"check point after show lable");
}


-(void) start {
    NSURL *url = [NSURL URLWithString:kGETUrl];
    NSData *data = [NSData dataWithContentsOfURL:url];
    
    [self getData:data];
}

-(void) getData: (NSData *) data {
    NSError *error;
    
    json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    infor = [json objectAtIndex:0];
    assignmentNameDB = [infor valueForKey:@"assignment_name"];
    shortDescriptionDB = [infor valueForKey:@"short_description"];
    assignDescriptionDB = [infor valueForKey:@"assignment_description"];

    
    NSLog(@"break point in getData");
    
    
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

- (IBAction)submit:(id)sender {
    AppDelegate *ad = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    
    // assignment complete, set assignStatus = 1
    ad.assignStatus = 1;
    NSLog(@"ad.assignStatus: %d", ad.assignStatus);
}
@end
