//
//  FLTableViewCell.m
//  FlowLayoutCell
//
//  Created by Phil on 15/4/9.
//  Copyright (c) 2015年 Phil. All rights reserved.
//

#import "FLTableViewCell.h"
#import "FLListEntity.h"
#import "UIView+FDCollapsibleConstraints.h"

@interface FLTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel     *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel     *contentLabel;
@property (weak, nonatomic) IBOutlet UIView      *audioBubble;
@property (weak, nonatomic) IBOutlet UIImageView *thumbImageView;

@end

@implementation FLTableViewCell

- (void)setEntity:(FLListEntity *)entity
{
    _entity = entity;

    self.contentLabel.fd_collapsed = !entity.hasContent;
    self.audioBubble.fd_collapsed = !entity.hasAudioClip;
    self.thumbImageView.fd_collapsed = !entity.hasImages;

    self.titleLabel.text = entity.title;

    if (entity.hasContent) {
        self.contentLabel.text = entity.content;
    } else {
        self.contentLabel.text = nil;
    }

    if (entity.hasImages) {
//        self.thumbImageView.image = [UIImage imageNamed:entity.images[0]];
    }
}

@end
