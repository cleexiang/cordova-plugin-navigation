//
//  CDVNavigation.h
//  HelloCordova
//
//  Created by LiXiang on 2017/6/22.
//
//

#import <Cordova/CDVPlugin.h>

@interface CDVNavigation : CDVPlugin
    
/** 设置标题 */
- (void)setTitle:(CDVInvokedUrlCommand *)command;
/** 返回上一个界面 */
- (void)goBack:(CDVInvokedUrlCommand *)command;
/** 跳转到某个界面*/
- (void)redirect:(CDVInvokedUrlCommand *)command;

@end
