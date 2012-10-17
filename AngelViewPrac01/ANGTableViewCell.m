/**
 @file ANGTableViewCell.m
 @date 2012/10/17
 @author 서지연(jiyeonseo@uangel.com)
 @brief ANGTableViewCell 의 소스 : mainViewController 내 테이블 셀
 */

#import "ANGTableViewCell.h"

@implementation ANGTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
