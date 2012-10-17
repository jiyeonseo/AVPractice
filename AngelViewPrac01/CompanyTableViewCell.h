//
//  CompanyTableViewCell.h
//  AngelViewPrac01
//
//  Created by Jiyeon Seo on 12. 10. 17..
//  Copyright (c) 2012년 Jiyeon Seo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompanyTableViewCell : UITableViewCell
{
    ///[기업관리]회사로고
    UIImageView *companyImageView;
    ///[기업관리]회사이름
    UILabel *companyNameLabel;
}
///해지 선택 액션
-(IBAction)clickDrop:(id)sender;

@end
