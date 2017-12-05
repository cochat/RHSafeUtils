//
//  ViewController.m
//  RHSateUtils
//
//  Created by liangju on 12/5/17.
//  Copyright © 2017 liangju. All rights reserved.
//

#import "ViewController.h"
#import "RHSafeUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array rh_safeAddObject:@"1"];
    
    BOOL res = [array rh_boolAtIndex:0];
    
    NSLog(@"%d", res);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
