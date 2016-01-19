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
            cell.imageView.image = [UIImage imageNamed:@"icon"];
            cell.textLabel.text = @"textLabel";
        }
            break;
        case 1:// UITableViewCellStyleSubtitle类型，支持显示图片和文本以及子文本
        {
            NSString *CellTwo = @"CellTwo";
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellTwo];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.imageView.image = [UIImage imageNamed:@"icon"];
            cell.textLabel.text = @"textLabel";
            cell.detailTextLabel.text = @"detailTextLabel";
        }
            break;
        case 2:
        {
            NSString *CellThree = @"CellThree";
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:CellThree];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.imageView.image = [UIImage imageNamed:@"icon"];
            cell.textLabel.text = @"textLabel";
            cell.detailTextLabel.text = @"detailTextLabel";
        }
            break;
        case 3:
        {
            NSString *CellFour = @"CellFour";
            cell =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:CellFour];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.textLabel.text = @"textLabel";
            cell.detailTextLabel.text = @"detailTextLabel";
        }
            break;
    }
    return cell;
}

@end
