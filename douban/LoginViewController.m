//
//  LoginViewController.m
//  douban
//
//  Created by lanou3g on 15/5/1.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "LoginViewController.h"
#import "ResignViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title=@"用户登陆";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel * userlabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 80, 60, 30)];
    userlabel.text=@"用户名:";
    userlabel.textColor=[UIColor blackColor];
    [self.view addSubview:userlabel];
    [userlabel release];
    
    UITextField * usertext=[[UITextField alloc]initWithFrame:CGRectMake(90, 80, 200, 30)];
    usertext.placeholder=@"请输入用户名";
    usertext.backgroundColor=[UIColor whiteColor];
   
    [self.view addSubview:usertext];
    [usertext release];
    
    UILabel *passwordlabel=[[UILabel alloc]initWithFrame:CGRectMake(20, 120, 60, 30)];
    passwordlabel.text=@"密 码：";
    [self.view addSubview:passwordlabel];
    [passwordlabel release];
    
    
    UITextField *passwordtext=[[UITextField alloc]initWithFrame:CGRectMake(90, 120, 200, 30)];
    passwordtext.placeholder=@"请输入密码";
    passwordtext.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:passwordtext];
    [passwordtext release];
    
    UIButton * loginbtn=[[UIButton alloc]initWithFrame:CGRectMake(20, 160, 90, 30)];
    [loginbtn setTitle:@"登陆" forState:UIControlStateNormal];
    [loginbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    loginbtn.backgroundColor=[UIColor greenColor];
    [loginbtn addTarget:self action:@selector(login:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:loginbtn];
    
    UIButton * resignbtn=[[UIButton alloc]initWithFrame:CGRectMake(130, 160, 90, 30)];
    [resignbtn setTitle:@"注册" forState:UIControlStateNormal];
    [resignbtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    resignbtn.backgroundColor=[UIColor orangeColor];
    [loginbtn addTarget:self action:@selector(resign:) forControlEvents:UIControlEventTouchUpInside ];
    [self.view addSubview:resignbtn];
    
    
}

- (void)login:(UIButton *)log{
    
    NSLog(@"登陆");
}

- (void)resign:(UIButton *)re{
    ResignViewController * resign=[[ResignViewController alloc]init];
    [self.navigationController pushViewController:resign animated:YES];
    [resign release];
       NSLog(@"注册");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
