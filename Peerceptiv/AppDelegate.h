//
//  AppDelegate.h
//  Peerceptiv
//
//  Created by JX on 14-12-3.
//  Copyright (c) 2014年 Pitt. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>{
    
    //declare golbal variable
    int totalDocForReview;
    int DocReviewd;
    int DocRemained;
    
    int assignStatus;
    int reviewStatus;
    
    BOOL finishAssign;
    
    NSMutableString *doc1;
    NSMutableString *doc2;
    NSMutableString *doc3;

}

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic) int totalDocForReview;
@property (nonatomic) int DocReviewed;
@property (nonatomic) int DocRemained;
@property (nonatomic) int assignStatus;
@property (nonatomic) int reviewStatus;
@property (nonatomic) BOOL finishAssign;
@property (strong, nonatomic) NSMutableString *doc1;
@property (strong, nonatomic) NSMutableString *doc2;
@property (strong, nonatomic) NSMutableString *doc3;


@end
