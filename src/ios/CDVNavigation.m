//
//  CDVNavigation.m
//  HelloCordova
//
//  Created by LiXiang on 2017/6/22.
//
//

#import "CDVNavigation.h"
#import <Cordova/CDVViewController.h>

@implementation CDVNavigation

- (void)setTitle:(CDVInvokedUrlCommand *)command {
    CDVPluginResult *result;
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
    
- (void)goBack:(CDVInvokedUrlCommand *)command {
    CDVPluginResult *result;
    [self.viewController.navigationController popViewControllerAnimated:YES];
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
    
- (void)redirect:(CDVInvokedUrlCommand *)command {
    CDVPluginResult *result;
    CDVViewController *vc = [[CDVViewController alloc] init];
    //获取需要跳转的界面地址
    NSString *pageUrl = [command.arguments objectAtIndex:0];
    NSLog(@"跳转到：%@", pageUrl);
    vc.startPage = pageUrl;
    [self.viewController.navigationController pushViewController:vc animated:YES];
    result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
    [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}
@end
