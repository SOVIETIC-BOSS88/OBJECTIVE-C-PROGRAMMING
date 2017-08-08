//
//  main.m:
//  nl
//
//  Created by SUREN HARUTYUNYAN on 22/04/14.
//  Copyright (c) 2014 big nerd ranch. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[])
{

    @autoreleasepool
        {
            
            Foo *foo = [Foo new];
            foo.holder = [Holder new];
        }
    {
            NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                              encoding:NSUTF8StringEncoding
                                                                error:NULL];
            
            NSString *regularWords = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                               encoding:NSUTF8StringEncoding
                                                                  error:NULL];
            
            
            NSArray *words = [regularWords componentsSeparatedByString:@"\n"];
            NSArray *names = [nameString componentsSeparatedByString:@"\n"];
            
            NSMutableArray *commonall = [NSMutableArray array];
            [commonall addObjectsFromArray:words];
            [commonall removeObjectsInArray:names];
            
            
            for (NSString *w in commonall)
            {
                for (NSString *n in names)
                {
                    if ([w caseInsensitiveCompare:n] == NSOrderedSame)
                    {
                        NSLog(@"Name:%@ = word:%@", n, w);
                    }
                }
            }
            
        }

    
    
       return 0;
}
