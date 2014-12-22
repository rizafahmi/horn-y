//
//  KucingViewController.m
//  Horn-y
//
//  Created by AMPlified5 on 12/22/14.
//  Copyright (c) 2014 AMPlified5. All rights reserved.
//

#import "KucingViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface KucingViewController () {
    AVAudioPlayer *_audioPlayer;
}

@end

@implementation KucingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    NSString *path = [NSString stringWithFormat:@"%@/terompet.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
}
- (IBAction)kucingDipencet {
    [_audioPlayer play];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
