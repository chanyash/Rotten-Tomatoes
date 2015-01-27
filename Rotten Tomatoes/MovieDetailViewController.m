//
//  MovieDetailViewController.m
//  Rotten Tomatoes
//
//  Created by Joanna Chan on 1/24/15.
//  Copyright (c) 2015 yahoo. All rights reserved.
//

#import "MovieDetailViewController.h"
#import "UIImageView+AFNetworking.h"

@interface MovieDetailViewController ()
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *movieBgImage;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation MovieDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    
    NSMutableString *poster = [[NSMutableString alloc] initWithString:[self.movie valueForKeyPath:@"posters.thumbnail"]];
    [self.movieBgImage setImageWithURL:[NSURL URLWithString:poster]];
    
    [poster replaceOccurrencesOfString:@"tmb" withString:@"ori" options:NSCaseInsensitiveSearch range:NSMakeRange(0, [poster length])];
    
    NSLog(@"poster: %@", poster);
    
    [self.scrollView addSubview:self.synopsisLabel];
    
    [self.synopsisLabel sizeToFit];
    CGSize size = [self.synopsisLabel sizeThatFits:CGSizeMake(self.synopsisLabel.frame.size.width, CGFLOAT_MAX)];
    
    self.scrollView.contentSize = size;
    
    [self.movieBgImage setImageWithURL:[NSURL URLWithString:poster]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
