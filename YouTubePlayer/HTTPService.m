//
//  HTTPService.m
//  YouTubePlayer
//
//  Created by James Volmert on 4/16/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import "HTTPService.h"
#define URL_BASE "http:/localhost:6060"
#define URL_TUTORIALS "/tutorials"

@implementation HTTPService

+(id) instance {
    static HTTPService *sharedInstance = nil;
    
    @synchronized (self) {
        if (sharedInstance == nil) {
            sharedInstance = [[self alloc] init];
        }
    }
    return sharedInstance;
}
-(void) getTutorials:(nullable onComplete)completionHandler
{
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%s%s", URL_BASE, URL_TUTORIALS]];
    
    NSURLSession *session = [NSURLSession sharedSession];
    
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (data != nil) {
            NSError *error;
            NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
            if (error == nil) {
                NSLog(@"json: %@", json.debugDescription);
            }
        } else {
            NSLog(@"Error: %2@",error.debugDescription);
        }
    }] resume];
    
    
    
    
    
}
@end
