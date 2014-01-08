//
//  CostViewController.m
//  iList_App
//
//  Created by zeng hui on 1/9/14.
//  Copyright (c) 2014 zeng hui. All rights reserved.
//

#import "CostViewController.h"

@interface CostViewController ()

@end

@implementation CostViewController


#pragma mark -  data

- (void)initData
{
    self.dataArray = [[NSMutableArray alloc] init];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithDictionary: @{@"price":[NSNumber numberWithInt:38.00] ,@"name":@"食物",@"id":[NSNumber numberWithInt:1]}];
    
    [self.dataArray addObject:dict];
    
}

#pragma mark -  view 

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self initData];



    
    
     [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_dataArray count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{

    return 44;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    NSDictionary *dict = [_dataArray objectAtIndex:indexPath.row];
    
    
    cell.textLabel.text = [dict objectForKey:@"name"];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%f", [[dict objectForKey:@"price"] floatValue]];
    
    return cell;
}


#pragma mark - Table view delegate


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


@end
