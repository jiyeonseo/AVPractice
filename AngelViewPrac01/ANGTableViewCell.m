//
//  ANGTableViewCell.m
//  AngelViewPrac01
//
//  Created by Jiyeon Seo on 12. 10. 17..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

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
