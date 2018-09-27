//
//  CTMediator+ModuleA.h
//  MediatorCategoryModuleA
//
//  Created by Alfred Tsui on 2018/9/27.
//  Copyright © 2018年 WENLONG Inc. All rights reserved.
//

#import "CTMediator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CTMediator (ModuleA)

///调用A组件的Target_Action
- (UIViewController *)moduleAViewControllerWithTitle:(NSString*)title backgroundColor:(UIColor*)bgColor;

@end

NS_ASSUME_NONNULL_END
