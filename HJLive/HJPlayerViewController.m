//
//  HJPlayerViewController.m
//  HJLive
//
//  Created by whj on 2017/3/28.
//  Copyright © 2017年 whj. All rights reserved.
//

#import "HJPlayerViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface HJPlayerViewController ()

@property (weak, nonatomic) IBOutlet UIView *baseView;

@property (nonatomic, strong) IJKFFMoviePlayerController *player;

@end

@implementation HJPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 拉流地址
    NSURL *url = [NSURL URLWithString:self.streamUrl];
    
    // 创建IJKFFMoviePlayerController：专门用来直播，传入拉流地址就好了
    self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:url withOptions:nil];
    
    // 准备播放
    [self.player prepareToPlay];
    
    self.player.view.frame = [UIScreen mainScreen].bounds;
    [self.baseView addSubview:self.player.view];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    // 界面消失，一定要记得停止播放
    [_player pause];
    [_player stop];
    [_player shutdown];
}

- (IBAction)closeButtonAction:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
