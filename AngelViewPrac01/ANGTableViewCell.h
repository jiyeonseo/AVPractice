//
//  ANGTableViewCell.h
//  AngelViewPrac01
//
//  Created by Jiyeon Seo on 12. 10. 17..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

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

