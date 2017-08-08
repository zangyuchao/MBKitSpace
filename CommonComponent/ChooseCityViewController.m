//
//  ChooseCityViewController.m
//  CommonComponent
//
//  Created by mac on 2017/8/3.
//  Copyright © 2017年 张煜超. All rights reserved.
//

#import "ChooseCityViewController.h"

@interface ChooseCityViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    UISearchBar *_searchBar;
//    UISearchDisplayController *_displayController;
    NSArray *hotCities;
    NSMutableArray *cities;
    NSMutableArray *titleArray;
    NSMutableArray *resultArray;
}

@property(nonatomic, strong) NSMutableDictionary *dictionary;

@end

@implementation ChooseCityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self initData];
    [self initTableView];
    
    // Do any additional setup after loading the view.
}


-(void)initTableView
{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 44, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    _tableView.delegate   = self;
    _tableView.dataSource = self;
    _tableView.showsVerticalScrollIndicator = NO;
    _tableView.sectionIndexBackgroundColor = [UIColor clearColor];
    _tableView.sectionIndexColor = [UIColor grayColor];
    _tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 0.01)];
    [self.view addSubview:_tableView];
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return cities.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    cell.textLabel.text = [NSString stringWithFormat:@"%@",cities[indexPath.row]];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.block(@"西安");
    [self dismissViewControllerAnimated:YES completion:^{
        ;
    }];
}



-(void)initData
{
    cities = [[NSMutableArray alloc] init];
    NSArray * allCityKeys = [self.dictionary allKeys];
    for (int i = 0;i < allCityKeys.count ; i++) {
        [cities addObjectsFromArray:[self.dictionary objectForKey:[allCityKeys objectAtIndex:i]]];
    }
    titleArray = [[NSMutableArray alloc] init];
    for (int i = 0; i < 26; i++) {
        if (i == 8 || i == 14 || i == 20 || i== 21) {
            continue;
        }
        NSString *cityKey = [NSString stringWithFormat:@"%c",i+65];
        [titleArray addObject:cityKey];
    }
    NSLog(@"______________%@",cities);
}


-(NSMutableDictionary*)dictionary
{
    if (_dictionary == nil) {
        NSString * path = [[NSBundle mainBundle] pathForResource:@"cities" ofType:@"plist"];
        _dictionary = [NSMutableDictionary dictionaryWithContentsOfFile:path];
    }
    return _dictionary;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
