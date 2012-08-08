//
//  Person.m
//  BlogMachine
//
//  Created by Diana Zmuda on 8/8/12.
//  Copyright (c) 2012 Diana Zmuda. All rights reserved.
//

// square brackets call a method - method call
//


#import "Person.h"
#import "Blog.h"
//here we needed to import blog here because we use its functions

@implementation Person

@synthesize name;
@synthesize birthday;
@synthesize blogs = _blogs;
    //_blogs is an instance variable

//getter method
-(NSMutableArray*)blogs {
    if(_blogs==nil)
        _blogs=[[NSMutableArray alloc]init];
                //could have been [NSMutableArray new]
    return _blogs;
}
//now your blogs is no longer nil

//setter method
-(void)setBlogs: (NSMutableArray*)blogs {
    _blogs = blogs;
}

-(void)authorBlog:(Blog*)b{
    [b setAuthor: name];
    // setting the blog's author as your name
    [[self blogs] addObject: b];
    // add the blog to your personal list of blogs
}

-(NSArray*)displayBlogs {
    NSMutableArray *blogTitles = [[NSMutableArray alloc]init];
    for (int i=0; i<[[self blogs] count]; i++) {
        NSString *blogTitle = [[[self blogs] objectAtIndex:i] title];
        // storing the blog title
        [blogTitles addObject: blogTitle];
        // adding the blog title to an array of your blog titles
    }
    return blogTitles;
}

@end
