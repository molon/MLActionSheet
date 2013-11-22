//
//  ViewController.m
//  MLActionSheet
//
//  Created by Molon on 13-11-22.
//  Copyright (c) 2013年 Molon. All rights reserved.
//

#import "ViewController.h"
#import "MLActionSheet.h"

@interface ViewController () <MLActionSheetDelegate,UIActionSheetDelegate>

@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIView *containerView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.containerView.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
//    UIActionSheet
}

- (IBAction)show:(id)sender {
    UIActionSheet *sheet = [[UIActionSheet alloc]initWithTitle:@"你为何这样做？" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"删除" otherButtonTitles:@"分享照片",@"复制共享 URL",@"以电子邮件发送图片",@"分享照片",@"复制共享 URL",@"以电子邮件发送图片",@"分享照片",@"复制共享 URL",@"以电子邮件发送图片",@"分享照片",@"复制共享 URL",@"以电子邮件发送图片", nil];
    [sheet showInView:self.containerView];
    NSLog(@"%d",sheet.visible);
}
- (IBAction)show2:(id)sender {
    MLActionSheet *sheet = [[MLActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"删除" otherButtonTitles:@"分享照片",@"复制共享 URL",@"以电子邮件发送图片", nil];
    [sheet showInView:self.view];
}
- (IBAction)show3:(id)sender {
    MLActionSheet *sheet = [[MLActionSheet alloc]initWithTitle:@"你要干什么?你要干什么?你要干什么?你要干什么?你要干什么?" delegate:self cancelButtonTitle:nil destructiveButtonTitle:@"确定" otherButtonTitles:nil, nil];
    [sheet showInView:self.view];
    
    [sheet addButtonWithTitle:@"红文本" withStyleMask:MLActionButtonStyleRedText];
}
- (IBAction)show4:(id)sender {
    MLActionSheet *sheet = [[MLActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:@"分享照片",@"复制共享 URL",@"以电子邮件发送图片",@"分享照片",@"复制共享 URL",@"以电子邮件发送图片",@"分享照片",@"复制共享 URL",@"以电子邮件发送图片",@"分享照片",@"复制共享 URL",@"以电子邮件发送图片", nil];
    [sheet addButtonWithTitle:@"红文本" withStyleMask:MLActionButtonStyleRedText];
    [sheet addButtonWithTitle:@"圆角红文本" withStyleMask:MLActionButtonStyleRedText|MLActionButtonStyleCorner];
    [sheet addButtonWithTitle:@"红文本 GO ON " withStyleMask:MLActionButtonStyleRedText];
    [sheet showInView:self.view];
}
- (IBAction)show5:(id)sender {
    MLActionSheet *sheet = [[MLActionSheet alloc]initWithTitle:nil delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"拍照",@"用户相册", nil];
    [sheet showInView:self.view];
}


- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"%ld clicked",buttonIndex);
}

- (void)actionSheetCancel:(UIActionSheet *)actionSheet{
    NSLog(@"cancel");
}

- (void)willPresentActionSheet:(UIActionSheet *)actionSheet
{
    NSLog(@"will present");
}
- (void)didPresentActionSheet:(UIActionSheet *)actionSheet
{
    NSLog(@"did present");
}

- (void)actionSheet:(UIActionSheet *)actionSheet willDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"%ld will dismiss",buttonIndex);
}
- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    NSLog(@"%ld did dismiss",buttonIndex);
}

@end
