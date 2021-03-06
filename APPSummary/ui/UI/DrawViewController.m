//
//  DrawViewController.m
//  APPSummary
//
//  Created by xubojoy on 2018/2/23.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import "DrawViewController.h"
#import "DrawView.h"
#import "Constant.h"
@interface DrawViewController ()
@property (nonatomic, strong) DrawView *drawView;
@end

@implementation DrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initDrawView];
}

- (void)initDrawView{
    _drawView = [[DrawView alloc] initWithFrame:CGRectMake(0, 0, screen_width, screen_height)];
    _drawView.backgroundColor = [UIColor whiteColor];
    _drawView.lineWidth = 5;
    _drawView.lineColor = [UIColor blackColor];
    [self.view addSubview:_drawView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
