/**
 @file ANGTableViewCell.h
 @date 2012/10/17
 @author 서지연(jiyeonseo@uangel.com)
 @brief ANGTableViewCell 의 헤더 : mainViewController 내 테이블 셀 
 */

#import <UIKit/UIKit.h>

@interface ANGTableViewCell : UITableViewCell
{
    UILabel *titleLabel;
    UILabel *subtitleLabel;
    UIImageView *theNewImageView;
}
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;
@property (nonatomic, strong) IBOutlet UILabel *subtitleLabel;
@property (nonatomic, strong) IBOutlet UIImageView *theNewImageView;


@end

