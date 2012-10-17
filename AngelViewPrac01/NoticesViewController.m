/**
 @file NoticesViewController.m
 @date 2012/10/17
 @author 서지연(jiyeonseo@uangel.com)
 @brief 공지사항 화면
 */

#import "NoticesViewController.h"

@interface NoticesViewController ()

@end

@implementation NoticesViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - tableView delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"numberofsection in tableview");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    NSLog(@"numberofrowsinsection : %d", [titleArray count]);
    
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    static NSString *CellIdentifier = @"ANGTableViewCell";
//    ANGTableViewCell *cell = (ANGTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    
//    
//    if (cell == nil) {
//        NSArray* nib= [[NSBundle mainBundle] loadNibNamed:@"ANGTableViewCell" owner:self options:nil];
//	    cell = [nib objectAtIndex:0];
//        //        [cell setDelegate:self];
//        
//    }
//    
//    cell.titleLabel.text = [titleArray objectAtIndex:[indexPath row]];
//    cell.subtitleLabel.text =  [subtitleArray objectAtIndex:[indexPath row]];
//    
//    return cell;
    
//    이것도다커스텀셀해줘말어';;;;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
 
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

@end
