/**
 @file DropOutViewController.m
 @date 2012/10/17
 @author 서지연(jiyeonseo@uangel.com)
 @brief 서비스 탈퇴 화면
 */

#import "DropOutViewController.h"

@interface DropOutViewController ()

@end

@implementation DropOutViewController

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

/** @brief 탈퇴 버튼 클릭 액션
 @remark 이때 사용자의 모든 정보를 삭제해야한다. 
*/
- (IBAction)clickDropOut:(id)sender {
}
/// 취소 버튼 클릭 액션
- (IBAction)clickCancel:(id)sender {
}
@end
