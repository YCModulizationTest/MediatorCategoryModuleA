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
NSString * const kModuleAViewControllerWithParams = @"moduleAViewControllerWithParams";


@implementation CTMediator (ModuleA)

///调用A组件的Target_Action
- (UIViewController *)moduleAViewControllerWithTitle:(NSString*)title backgroundColor:(UIColor*)bgColor {
    NSMutableDictionary *param = [[NSMutableDictionary alloc] init];
    param[@"title"] = title;
    param[@"bgColor"] = bgColor;
    /*
     根据组件里的Target-Action传值：
     target：@interface Target_ModuleABusiness : NSObject →→→就传 @"ModuleABusiness"
     action：- (UIViewController *)Action_moduleAViewControllerWithParams:(NSDictionary*)params; →→→就传 @"moduleAViewControllerWithParams"
     */
    UIViewController *vc = [self performTarget:kTarget_ModuleA action:kModuleAViewControllerWithParams params:param shouldCacheTarget:NO];
    if ([vc isKindOfClass:[UIViewController class]]) {
        return vc;
    }else {
        //异常容错处理,例如，抛出一个错误提示的VC 
        return [[UIViewController alloc]init];
    }
}


@end
