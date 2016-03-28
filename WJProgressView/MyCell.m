//
//  MyCell.m
//  WJProgressView
//
//  Created by wangjian on 15/7/1.
//  Copyright (c) 2015年 wangjian. All rights reserved.
//

#import "MyCell.h"

@implementation MyCell

- (void)awakeFromNib {
    // Initialization code
}
-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _progressView = [[WJProgressView alloc] initWithFrame:CGRectMake(10,0, [[UIScreen mainScreen] bounds].size.width, self.frame.size.height)];
        _progressView.progressColor = [UIColor brownColor];
        _progressView.progressShape = WJProgressViewCircleShape;
        [self addSubview:_progressView];
    }
    return self;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
