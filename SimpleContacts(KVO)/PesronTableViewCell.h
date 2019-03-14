//
//  PesronTableViewCell.h
//  SimpleContacts(KVO)
//
//  Created by Iyin Raphael on 3/14/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PesronTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

NS_ASSUME_NONNULL_END
