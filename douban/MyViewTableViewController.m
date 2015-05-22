//
//  MyViewTableViewController.m
//  douban
//
//  Created by lanou3g on 15/5/1.
//  Copyright (c) 2015年 lanou3g. All rights reserved.
//

#import "MyViewTableViewController.h"
#import "MyViewTableViewCell.h"
#import "LoginViewController.h"

@interface MyViewTableViewController ()

@end

@implementation MyViewTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        self.title=@"我的活动";
        self.navigationItem.title=@"返回";
        UIImage * image = [[UIImage imageNamed:@"user.png"]imageWithRenderingMode:UIImageRenderingModeAutomatic];
        UITabBarItem * item = [[UITabBarItem alloc]initWithTitle:@"我的活动" image:image tag:100];
        self.tabBarItem = item;
        [item release];

        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return 12;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MyViewTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"r" ];
    if (!cell) {
        cell=[[MyViewTableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"r"];
        cell.textLabel.text=@"我的活动";
    }
    
    UIBarButtonItem * rightbtn =[[UIBarButtonItem alloc]initWithTitle:@"    登陆" style:UIBarButtonItemStylePlain target:self action:@selector(login:)];
    self.navigationItem.rightBarButtonItem=rightbtn;
       [rightbtn release];
    
    
    
    
    
    
    
    return cell;
}

- (void)login:(UITabBarItem *)log{
    LoginViewController  * login=[[LoginViewController alloc]init];
    [self.navigationController pushViewController:login animated:YES];
    
    NSLog(@"denglu");
    
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

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
