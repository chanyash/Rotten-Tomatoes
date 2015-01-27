//
//  MovieCellTableViewCell.h
//  Rotten Tomatoes
//
//  Created by Joanna Chan on 1/24/15.
//  Copyright (c) 2015 yahoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovieCellTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;

@end
