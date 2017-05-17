//
//  ViewController.m
//  tablevw
//
//  Created by codemac-07i on 16/05/17.
//  Copyright © 2017 codemac-07i. All rights reserved.
//demo

#import "ViewController.h"
#import "frndsTableViewCell.h"

@interface ViewController ()
{
    NSArray *Names,*img;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Names = @[@"Sachin",@"Dhoni",@"Harbajan",@"Kohli",@"Sevag"];
    img = @[@"Sachin",@"Dhoni",@"Harbajan",@"Kohli",@"Sevag"];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return Names.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    frndsTableViewCell *obj = [tableView dequeueReusableCellWithIdentifier:@"Abc"];
    obj.lbl.text = [Names objectAtIndex:indexPath.row];
    obj.imgvw.image = [UIImage imageNamed:[img objectAtIndex:indexPath.row]];

    return obj;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
   self.sbvw.center = self.view.center;

    [self.view addSubview:self.sbvw];
    self.sblbl.text =Names[indexPath.row];
    self.sbimg.image = [UIImage imageNamed:[img objectAtIndex:indexPath.row]];
}
- (IBAction)bttn:(id)sender
{
    [self.sbvw removeFromSuperview];
}
@end
