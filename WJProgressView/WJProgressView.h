//
//  WJProgressView.h
//  WJProgressView
//
//  Created by wangjian on 15/6/30.
//  Copyright (c) 2015年 wangjian. All rights reserved.
//
/**
 *  自定义进度条,可自定义进度颜色，自定义进度条形状（目前支持直线型，弧形）
 */
#import <UIKit/UIKit.h>

typedef enum: NSInteger{
    
       WJProgressViewLineShape = 0,//直线
       WJProgressViewCircleShape,//环形

}WJProgressViewShapeType;
//进度条形状类型

@interface WJProgressView : UIView
@property (nonatomic, retain) CAShapeLayer *animationLayer;
@property (nonatomic, assign) float progress;//进度
@property (nonatomic, retain) UIColor *progressColor;//进度条前景色
@property (nonatomic, assign) WJProgressViewShapeType progressShape;


@property (nonatomic, assign)float  progressCircleRadius;//弧形进度条半径
/**
 *  初始化方法1
 *
 *  @param frame
 *
 *  @return
 */
-(instancetype)initWithFrame:(CGRect)frame;
/**
 *  初始化方法2
 *
 *  @param frame             frame
 *  @param progress          进度值
 *  @param progressColor     进度条颜色
 *  @param progressShapeType 进度条形状
 *
 *  @return
 */
-(instancetype)initWithFrame:(CGRect)frame
               progressvalue:(float)progress
               progressColor:(UIColor *)progressColor
           progressShapeType:(WJProgressViewShapeType)progressShapeType;
/**
 *  绘制进度条
 *
 *  @param animation 是否动画
 */
- (void)drawprogressValueWithAnimation:(BOOL)animation;
/**
 *  开始动画
 */
- (void)startAnimation;
@end
