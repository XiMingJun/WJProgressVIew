//
//  ViewController.m
//  WJProgressView
//
//  Created by wangjian on 15/6/30.
//  Copyright (c) 2015年 wangjian. All rights reserved.
//

#import "ViewController.h"
# import "WJProgressView.h"
# import "MyCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    float _progressvalue;
    UITableView *_tableView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds
                                              style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
//    [self.view addSubview:_tableView];
    
    WJProgressView *progressView = [[WJProgressView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height - 20)
                                                           progressvalue:30
                                                           progressColor:[UIColor brownColor]
                                                       progressShapeType:WJProgressViewCircleShape];
//    [self.view addSubview:progressView];
    [progressView drawprogressValueWithAnimation:YES];

}
-(float)createRandomNum
{
    float num = arc4random() % 100;
    NSLog(@"-------->>%.0f",num);
    return num;
}
# pragma mark-----UITableView Delegate
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
static NSString *identifer = @"cell";
    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:identifer];
    if (!cell)
    {
        cell = [[MyCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identifer];
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyCell*cell2 = (MyCell *)cell;
    cell2.progressView.progress  = [self createRandomNum];
    [cell2.progressView drawprogressValueWithAnimation:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
