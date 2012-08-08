//
//  Person.h
//  BlogMachine
//
//  Created by Diana Zmuda on 8/8/12.
//  Copyright (c) 2012 Diana Zmuda. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Blog;
// in lieu of importing, we are just referencing that there is a class

@interface Person : NSObject

@property (strong) NSString *name;
@property (strong) NSDate *birthday;
@property (strong) NSMutableArray *blogs;

-(void)authorBlog:(Blog*)b;

-(NSArray*)displayBlogs;

@end
