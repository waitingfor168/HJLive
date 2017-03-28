//
//  ViewController.m
//  HJLive
//
//  Created by whj on 2017/3/28.
//  Copyright © 2017年 whj. All rights reserved.
//

#import "ViewController.h"
#import "HJLiveViewController.h"
#import "HJPlayerViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //@"rtmp://live.hkstv.hk.lxdns.com:1935/live/stream153";
    self.textField.text = @"rtmp://192.168.100.8:1935/myapp/room";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {

    [self.textField resignFirstResponder];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    UIViewController *viewController= [segue destinationViewController];
    if ([segue.identifier isEqualToString:@"segueToLive"] || [segue.identifier isEqualToString:@"segueToPlayer"]) {
        if ([viewController respondsToSelector:@selector(setStreamUrl:)]) {
            [viewController setValue:self.textField.text forKey:@"streamUrl"];
        }
    }
}

#pragma mark - Action

- (IBAction)liveButtonAction:(id)sender {

}

- (IBAction)playerButtonAction:(id)sender {
    
}

@end
