//
//  HJLiveViewController.m
//  HJLive
//
//  Created by whj on 2017/3/28.
//  Copyright © 2017年 whj. All rights reserved.
//

#import "HJLiveViewController.h"
#import "LFLivePreview.h"

@interface HJLiveViewController ()

@property (weak, nonatomic) IBOutlet UIView *baseView;

@end

@implementation HJLiveViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    LFLivePreview *livePreview = [[LFLivePreview alloc] initWithFrame:self.view.bounds];
    livePreview.streamUrl = self.streamUrl;
    [self.baseView addSubview:livePreview];
}

- (IBAction)closeButtonAction:(id)sender {

    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}

@end
