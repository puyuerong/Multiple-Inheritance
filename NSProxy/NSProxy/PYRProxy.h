//
//  PYRProxy.h
//  NSProxy
//
//  Created by 蒲悦蓉 on 2020/10/7.
//  Copyright © 2020 蒲悦蓉. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PYRProxy : NSProxy

@property (nonatomic, strong)NSObject *object;
- (id)transformToObject:(NSObject *)obj;

@end

NS_ASSUME_NONNULL_END
