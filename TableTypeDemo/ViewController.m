//
//  ViewController.m
//  TableTypeDemo
//
//  Created by csdc-iMac on 16/1/19.
//  Copyright (c) 2016年 Cloudox. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// 设备宽度
#define SCREENWIDTH       [UIScreen mainScreen].bounds.size.width
// 设备高度
#define SCREENHEIGHT      [UIScreen mainScreen].bounds.size.height

@property (strong ,nonatomic) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 50, SCREENWIDTH, SCREENHEIGHT)];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView DataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell;
    // 共四种类型
    switch (indexPath.row) {
        case 0:// UITableViewCellStyleDefault：默认的类型，支持显示图片和文本
        {
            NSString *CellOne = @"CellOne";
            // 设置tableview类型
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellOne];
            // 设置不可点击
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.imageView.image = [UIImage imageNamed:@"icon"];// 图片
            cell.textLabel.text = @"textLabel";// 文本
        }
            break;
        case 1:// UITableViewCellStyleSubtitle类型，支持显示图片和文本以及子文本
        {
            NSString *CellTwo = @"CellTwo";
            // 设置tableview类型
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellTwo];
            // 设置不可点击
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.imageView.image = [UIImage imageNamed:@"icon"];// 图片
            cell.textLabel.text = @"textLabel";// 文本
            cell.detailTextLabel.text = @"detailTextLabel";// 子文本
        }
            break;
        case 2:// UITableViewCellStyleValue1类型，支持显示图片和文本以及子文本
        {
            NSString *CellThree = @"CellThree";
            // 设置tableview类型
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellThree];
            // 设置不可点击
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.imageView.image = [UIImage imageNamed:@"icon"];// 图片
            cell.textLabel.text = @"textLabel";// 文本
            cell.detailTextLabel.text = @"detailTextLabel";// 子文本
        }
            break;
        case 3:// UITableViewCellStyleValue2类型，支持显示文本以及子文本
        {
            NSString *CellFour = @"CellFour";
            // 设置tableview类型
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellFour];
            // 设置不可点击
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.textLabel.text = @"textLabel";// 文本
            cell.detailTextLabel.text = @"detailTextLabel";// 子文本
        }
            break;
    }
    return cell;
}

@end
