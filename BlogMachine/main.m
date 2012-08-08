//
//  main.m
//  BlogMachine
//
//  Created by Diana Zmuda on 8/8/12.
//  Copyright (c) 2012 Diana Zmuda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Blog.h"
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Blog *b = [Blog new];
        b.title = @"first post";
        b.date = [NSDate date];
        b.body = @"stuff in the post";
        
        Blog *b2 = [Blog new];
        b2.title = @"second post";
        b2.date = [NSDate date];
        b2.body = @"more sexy stuff in the post";
        
        Person *p = [Person new];
        p.name = @"guy";
        NSString *bday = @"1980-01-01";
        NSDateFormatter *df = [[NSDateFormatter alloc] init];
        [df setDateFormat:@"yyyy-MM-dd"];
        p.birthday = [df dateFromString:bday];
        
        //call authorBlog on a person, but give it a blog
        [p authorBlog:b];
        [p authorBlog:b2];
        
        //call displayBlogs on a person, don't need to give it anything
        NSArray *allBlogs = [p displayBlogs];
        NSLog(@"%@", allBlogs);
        
    }
    return 0;
}

