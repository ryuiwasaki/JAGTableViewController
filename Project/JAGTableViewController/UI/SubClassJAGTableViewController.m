//
//  SubClassJAGTableViewController.m
//  JAGTableViewController
//
//  Created by Ryu Iwasaki on 2014/08/14.
//  Copyright (c) 2014年 JAGA. All rights reserved.
//

#import "SubClassJAGTableViewController.h"

@interface SubClassJAGTableViewController ()

@end

@implementation SubClassJAGTableViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)jag_updateDataSource{
    
    NSArray *eastJapan = @[@"Tokyo",@"Kanagawa",@"Chiba"];
    NSArray *westJapan = @[@"Osaka",@"Hyogo",@"Hukuoka"];
    _dataSource = [[JAGDataSource alloc] initWithItemsList:@[eastJapan,westJapan]];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    
    switch (section) {
        case 0:
            return @"EastJapan";
            break;
        case 1:
            return @"WestJapan";
            break;
            
        default:
            break;
    }
    
    return @"";
}

- (void)jag_updateCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath{
    
    cell.textLabel.text = [_dataSource itemWithIndexPath:indexPath];
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
