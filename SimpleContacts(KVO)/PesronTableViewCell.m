//
//  PesronTableViewCell.m
//  SimpleContacts(KVO)
//
//  Created by Iyin Raphael on 3/14/19.
//  Copyright © 2019 Iyin Raphael. All rights reserved.
//

#import "PesronTableViewCell.h"

@interface PesronTableViewCell()
@property (weak, nonatomic) IBOutlet UIImageView *profilePicture;

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation PesronTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
