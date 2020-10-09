//
//  PYRProxy.m
//  NSProxy
//
//  Created by 蒲悦蓉 on 2020/10/7.
//  Copyright © 2020 蒲悦蓉. All rights reserved.
//

#import "PYRProxy.h"

@implementation PYRProxy

- (id)transformToObject:(NSObject *)obj {
    self.object = obj;
    return self.object;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel {
    NSMethodSignature *methodSignature;
    if (self.object) {
        methodSignature = [self.object methodSignatureForSelector:sel];
    } else {
        methodSignature = [super methodSignatureForSelector:sel];
    }
    return methodSignature;
}

- (void)forwardInvocation:(NSInvocation *)invocation {
    if (self.object) {
        [invocation setTarget:self.object];
        [invocation invoke];
    }
}

@end
