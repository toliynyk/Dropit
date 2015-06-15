//
//  BesierPathView.m
//  Dropit
//
//  Created by Asmodai on 6/15/15.
//  Copyright (c) 2015 AsmoForge. All rights reserved.
//

#import "BesierPathView.h"

@implementation BesierPathView

-(void)setPath:(UIBezierPath *)path
{
    _path = path;
    [self setNeedsDisplay];
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    [self.path stroke];
}


@end
