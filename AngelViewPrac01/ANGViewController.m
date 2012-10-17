/**
 @file ANGViewController.m
 @date 2012/10/17
 @author 서지연(jiyeonseo@uangel.com)
 @brief ANGViewController 의 소스  */

#import "ANGViewController.h"
#import "ANGTableViewCell.h"

#import "NoticesViewController.h"
#import "HelpViewController.h"
#import "CompanyListViewController.h"
#import "DropOutViewController.h"
#import "InquiryViewController.h"

@interface ANGViewController ()
{
    ///설정 제목 array.
    NSArray *titleArray;
    ///설정 소제목 array
    NSArray *subtitleArray;
    // Dictionary로 하는게 나으려나? :( 
}
@end

@implementation ANGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.navigationController.title = @"설정";
     [self. navigationController setTitle:@"설정"];

    
    titleArray = [[NSArray alloc] initWithObjects:@"공지사항",@"도움말",@"문의하기",@"알림설정",@"기업관리",@"서비스 탈퇴하기", nil];
    subtitleArray = [[NSArray alloc] initWithObjects:@" 관련 공지사항 확인",
                                @" 사용법 및 도움말 확인",
                                @"App 사용 불편사항 및 문의하기",
                                @" 사용법 및 도움말 확인",
                                @" 가입 기업 확인 및 관리",
                                @"가입된 개인정보를 지우고 서비스 탈퇴", nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableViewDelegate
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSLog(@"numberofsection in tableview");
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSLog(@"numberofrowsinsection : %d", [titleArray count]);
    
    return [titleArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"ANGTableViewCell";
    ANGTableViewCell *cell = (ANGTableViewCell*)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    
    if (cell == nil) {
        NSArray* nib= [[NSBundle mainBundle] loadNibNamed:@"ANGTableViewCell" owner:self options:nil];
	    cell = [nib objectAtIndex:0];
        //        [cell setDelegate:self];
        
    }
    
    cell.titleLabel.text = [titleArray objectAtIndex:[indexPath row]];
    cell.subtitleLabel.text =  [subtitleArray objectAtIndex:[indexPath row]];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if ([indexPath row] == 0) { ///공지사항
        NoticesViewController *viewController = [[NoticesViewController alloc]initWithNibName:@"NoticesViewController" bundle:[NSBundle mainBundle]];
        [self.navigationController pushViewController:viewController animated:YES];
        
    }else if([indexPath row] == 1){ ///도움말
        HelpViewController *viewController = [[HelpViewController alloc]initWithNibName:@"HelpViewController" bundle:[NSBundle mainBundle]];
        [self.navigationController pushViewController:viewController animated:YES];
        
    }else if([indexPath row] == 2){ //문의하기
        InquiryViewController *viewController = [[InquiryViewController alloc]initWithNibName:@"InquiryViewController" bundle:[NSBundle mainBundle]];
        [self.navigationController pushViewController:viewController animated:YES];
        
    }else if([indexPath row] == 3){ ///알림설정
        UIActionSheet *alamActionSheet = [[UIActionSheet alloc]initWithTitle:@"알림설정"
                                    delegate:self
                                    cancelButtonTitle:@"취소"
                                    destructiveButtonTitle:nil
                                    otherButtonTitles:@"소리",@"진동",@"소리+진동",@"알림없음" , nil];
        alamActionSheet.actionSheetStyle = UIActionSheetStyleBlackOpaque;

        [alamActionSheet showInView:self.view];

    }else if([indexPath row] == 4){ ///기업관리
        CompanyListViewController *viewController = [[CompanyListViewController alloc]initWithNibName:@"CompanyListViewController" bundle:[NSBundle mainBundle]];
        [self.navigationController pushViewController:viewController animated:YES];
        
    }else if([indexPath row] == 5){ ///서비스 탈퇴하기
        DropOutViewController *viewController = [[DropOutViewController alloc]initWithNibName:@"DropOutViewController" bundle:[NSBundle mainBundle]];
        [self.navigationController pushViewController:viewController animated:YES];
        
    }
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

#pragma mark - Actionsheet delegate 
-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            NSLog(@"0번");
            break;
        case 1:
            NSLog(@"1번");
            break;
        case 2:
            NSLog(@"2번");
            break;
        case 3:
            NSLog(@"3번");
            break;
        
        default:
            break;
    }
}
@end
