//
//  ViewController.m
//  NSProxy
//
//  Created by 蒲悦蓉 on 2020/10/7.
//  Copyright © 2020 蒲悦蓉. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Person *person = [[Person alloc] init];
    Animal *animal = [[Animal alloc] init];
    PYRProxy *proxy = [PYRProxy alloc];
    [proxy transformToObject:person];
    [proxy performSelector:@selector(personSay)];
    [proxy transformToObject:animal];
    [proxy performSelector:@selector(animalSay)];
}


@end
