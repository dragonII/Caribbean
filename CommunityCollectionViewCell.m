//
//  TopCollectionViewCell.m
//  BinFenV10
//
//  Created by Wang Long on 2/1/15.
//  Copyright (c) 2015 Wang Long. All rights reserved.
//

#import "CommunityCollectionViewCell.h"
#import "ImageAnimationView.h"

@implementation CommunityCollectionViewCell

- (void)awakeFromNib
{
    self.animationView = [[ImageAnimationView alloc] initWithFrame:self.contentView.bounds];
    [self.contentView addSubview:self.animationView];
    
    self.textLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.contentView.bounds.origin.x,
                                                              self.contentView.bounds.origin.y + 49,
                                                              self.contentView.bounds.size.width,
                                                               100)];
    
    self.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.textLabel.numberOfLines = 0;

    self.textLabel.textAlignment = NSTextAlignmentCenter;
    self.textLabel.font = [UIFont fontWithName:@"STHeitiSC-Medium" size:18];
    self.textLabel.textColor = [UIColor whiteColor];
    [self.contentView addSubview:self.textLabel];
    

}


- (void)setText:(NSString *)text
{
    if(![_text isEqualToString:text])
    {
        //NSLog(@"Setting text");
        _text = [text copy];
        _textLabel.text = _text;
    }
}


- (void)setImageNamesArray:(NSMutableArray *)imageNamesArray
{
    _imageNamesArray = [NSMutableArray arrayWithArray:imageNamesArray];
    
    self.animationView.imageNamesArray = imageNamesArray;
}


@end
