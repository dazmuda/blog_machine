//
//  Blog.h
//  BlogMachine
//
//  Created by Diana Zmuda on 8/8/12.
//  Copyright (c) 2012 Diana Zmuda. All rights reserved.
//

#import <Foundation/Foundation.h>

//@class Person;

@interface Blog : NSObject

@property (strong) NSString *title;
@property (strong) NSDate *date;
@property (strong) NSString *body;
@property (strong) NSString *author;

//-(void)setAuthorByPerson:(Person*)p;

@end
