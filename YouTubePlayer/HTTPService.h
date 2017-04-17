//
//  HTTPService.h
//  YouTubePlayer
//
//  Created by James Volmert on 4/16/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import <Foundation/Foundation.h>


//  create a objective -c block that allows the passing of information to go around
typedef void (^onComplete)(NSDictionary *__nullable dataDict, NSError *__nullable error);


@interface HTTPService : NSObject

+(id) instance;
-(void) getTutorials:(nullable onComplete)completionHandler;

@end
