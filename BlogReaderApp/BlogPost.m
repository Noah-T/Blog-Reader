//
//  BlogPost.m
//  BlogReader
//
//  Created by Noah Teshu on 9/26/14.
//  Copyright (c) 2014 Noah Teshu. All rights reserved.
//

#import "BlogPost.h"

@implementation BlogPost

- (id)initWithTitle:(NSString *)title
{
    self= [super init];
    if (self){
        self.title = title;
        self.author = nil;
        self.thumbnail = nil;
    }
    return self;
}

+ (id)blogPostWithTitle:(NSString *)title
{
    return [[self alloc]initWithTitle:title];
}

-(NSURL *)thumbnailURL
{
    
    return [NSURL URLWithString:self.thumbnail];
    
}

-(NSString *)formattedDate
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSDate *today = [NSDate date];
    NSDate *blogDate = [dateFormatter dateFromString:self.date];
    [dateFormatter setDateFormat:@"EE, MMM dd"];
    //the stumbling block here was trying to declare the interval as an object. think of it more as a primitive type (no pointers)
    NSTimeInterval timeDifference = [today timeIntervalSinceDate:blogDate];
    
    double difference = timeDifference/ 86400;
    
    long roundedVal = lroundf(difference);

    if (roundedVal == 0){
        NSString *finalString = @"Today";
        return finalString;
    }
    NSString *finalString = [NSString stringWithFormat:@"%lu days ago", roundedVal];
    
    return finalString;
    
}
@end
