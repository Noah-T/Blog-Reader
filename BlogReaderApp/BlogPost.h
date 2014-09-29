//
//  BlogPost.h
//  BlogReader
//
//  Created by Noah Teshu on 9/26/14.
//  Copyright (c) 2014 Noah Teshu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlogPost : NSObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *author;
@property (strong, nonatomic) NSString *thumbnail;
@property (strong ,nonatomic) NSString *date;
@property (strong, nonatomic) NSURL *url;

//designated initializer
- (id)initWithTitle:(NSString *)title;
+ (id)blogPostWithTitle:(NSString *)title;

-(NSURL *)thumbnailURL;
-(NSString *)formattedDate;


@end
