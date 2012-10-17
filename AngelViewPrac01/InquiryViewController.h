/**
 @file InquiryViewController.h
 @date 2012/10/17
 @author 서지연(jiyeonseo@uangel.com)
 @brief 문의 화면 
 */

#import <UIKit/UIKit.h>

@interface InquiryViewController : UIViewController
{
    ///[문의]이메일 입력창.
    UITextField *emailTextField;
    ///[문의]제목 입력창.
    UITextField *titleTextField;
    ///[문의]내용 입력창.
    UITextView *contentTextView;
    ///[문의]취소 버튼.
    UIButton *cancelButton;
    ///[문의]등록 버튼.
    UIButton *registerButton;
}
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;
@property (strong, nonatomic) IBOutlet UITextField *titleTextField;
@property (strong, nonatomic) IBOutlet UITextView *contentTextView;

///등록 버튼 클릭 액션.
- (IBAction)clickRegister:(id)sender;
///취소 버튼 클릭 액션.
- (IBAction)clickCancel:(id)sender;

@end
