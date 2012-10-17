/**
 @mainpage AngelView Practice 01  
 @section AngelViewPractice  
 - 프로그램명 : AngelViewPrac01  
 - 프로그램내용 : 연습용 01  
 @section 작성정보
 - 작성자  : 서지연  
 - 작성일  : 2012-10-17  
 @date 2012-10-17
 */

#import <UIKit/UIKit.h>

@class ANGViewController;

@interface ANGAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ANGViewController *viewController;
@property (strong, nonatomic) UINavigationController *navigationController; /// navigationController

@end
