//
//  ViewController.m
//  YouTubePlayer
//
//  Created by James Volmert on 4/16/17.
//  Copyright © 2017 James Volmert. All rights reserved.
//

#import "ViewController.h"
#import "HTTPService.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [[HTTPService instance] getTutorials];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
