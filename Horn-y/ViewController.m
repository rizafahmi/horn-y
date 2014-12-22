//
//  ViewController.m
//  Horn-y
//
//  Created by AMPlified5 on 12/22/14.
//  Copyright (c) 2014 AMPlified5. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController () {
    AVAudioPlayer *_audioPlayer;
}


@end
bool flag;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [NSString stringWithFormat:@"%@/terompet.wav", [[NSBundle mainBundle] resourcePath]];
    NSURL *soundURL = [NSURL fileURLWithPath:path];
    
    _audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:soundURL error:nil];
    flag = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tombolDipencet {

}
- (IBAction)tombolDitekan {
    NSLog(@"touchdown");
    _audioPlayer.currentTime = 0;	
    [_audioPlayer play];
}
- (IBAction)tombolDilepas {
    NSLog(@"dilepas");
}
- (IBAction)tombolDitempel:(UIButton *)sender {
    NSLog(@"Tombol Ditempel");
    NSLog([sender isTracking] ? @"Yes" : @"NO");
    if ([sender isTracking]) {
        if (flag) {
            flag = NO;
            NSLog(@"Tombol Ditempel");
        }
    } else {
        flag = YES;
        NSLog(@"Tombol dilepas");
    }
}
- (IBAction)tombolDiexit:(UIButton *)sender {
    [_audioPlayer stop];
    
}

@end
