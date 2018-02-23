//
//  ViewController.m
//  APPSummary
//
//  Created by xubojoy on 2018/2/23.
//  Copyright © 2018年 xubojoy. All rights reserved.
//

#import "ViewController.h"
#import "AIViewController.h"
#import "LaunchImageController.h"
#import "FaceIDViewController.h"
#import "GPUImageViewController.h"
#import "CountDownViewController.h"
#import "DrawViewController.h"
#import "WIFICheckViewController.h"
#import "TouchIDViewController.h"
#import "QQTmpChatViewController.h"
@interface ViewController ()

@property (nonatomic, strong) NSArray *dataArray;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.dataArray = @[@"启动引导页动画",@"标签云",@"人脸识别",@"image处理",@"倒计时",@"画板",@"wifi认证",@"指纹识别",@"QQ临时会话"
                       ];
    [self initTableView];
}

- (void)initTableView{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0,0, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.showsVerticalScrollIndicator = NO;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
//    return 20;
//}
//
//- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
//    return 0;
//}
//
//- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
//    return nil;
//}

//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
//    UIView *header = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 20)];
//    header.backgroundColor = [UIColor grayColor];
//    return header;
//}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [UITableViewCell new];
    NSString *str = self.dataArray[indexPath.row];
    cell.textLabel.text = self.dataArray[indexPath.row];
    cell.textLabel.font = [UIFont fontWithName:str size:16];
    return cell;
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:
        {
            LaunchImageController *lanuvc = [[LaunchImageController alloc] init];
            lanuvc.showLaunchAnimation = YES;
            [self.navigationController pushViewController:lanuvc animated:YES];
        }
            break;
        case 1:
        {
            AIViewController *aivc = [[AIViewController alloc] init];
            [self.navigationController pushViewController:aivc animated:YES];
        }
            break;

        case 2:
        {
            FaceIDViewController *facevc = [[FaceIDViewController alloc] init];
            [self.navigationController pushViewController:facevc animated:YES];
        }
            break;
        case 3:
        {
            GPUImageViewController *gpuvc = [[GPUImageViewController alloc] init];
            [self.navigationController pushViewController:gpuvc animated:YES];
        }
            break;
        case 4:
        {
            CountDownViewController *countvc = [[CountDownViewController alloc] init];
            [self.navigationController pushViewController:countvc animated:YES];
        }
            break;
            
        case 5:
        {
            DrawViewController *drawvc = [[DrawViewController alloc] init];
            [self.navigationController pushViewController:drawvc animated:YES];
        }
            break;

        case 6:
        {
            WIFICheckViewController *wifivc = [[WIFICheckViewController alloc] init];
            [self.navigationController pushViewController:wifivc animated:YES];
        }
            break;
            
        case 7:
        {
            TouchIDViewController *touchIDvc = [[TouchIDViewController alloc] init];
            [self.navigationController pushViewController:touchIDvc animated:YES];
        }
            break;
        case 8:
        {
            QQTmpChatViewController *qqtmpvc = [[QQTmpChatViewController alloc] init];
            [self.navigationController pushViewController:qqtmpvc animated:YES];
        }
            break;
        default:
            break;
    }
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
