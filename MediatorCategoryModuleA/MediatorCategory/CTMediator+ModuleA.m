//
//  CTMediator+ModuleA.m
//  MediatorCategoryModuleA
//
//  Created by Alfred Tsui on 2018/9/27.
//  Copyright © 2018年 WENLONG Inc. All rights reserved.
//

#import "CTMediator+ModuleA.h"

// #define Target_ModuleA @"ModuleABusiness"
NSString * const kTarget_ModuleA = @"ModuleABusiness";


@implementation CTMediator (ModuleA)

///调用A组件的Target_Action
- (UIViewController *)moduleAViewControllerWithTitle:(NSString*)title backgroundColor:(UIColor*)bgColor {
    NSMutableDictionary *param = [[NSMutableDictionary alloc] init];
    param[@"title"] = title;
    param[@"bgColor"] = bgColor;
    UIViewController *vc = [self performTarget:kTarget_ModuleA action:@"moduleAViewControllerWithTitle:backgroundColor:" params:param shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }else {
        //异常容错处理,例如，抛出一个错误提示的VC 
        return [[UIViewController alloc]init];
    }
}


@end
