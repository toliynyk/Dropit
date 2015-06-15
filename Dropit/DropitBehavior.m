//
//  DropitBehavior.m
//  Dropit
//
//  Created by Asmodai on 5/20/15.
//  Copyright (c) 2015 AsmoForge. All rights reserved.
//

#import "DropitBehavior.h"

@interface DropitBehavior()

@property (strong, nonatomic) UIGravityBehavior *gravityBehavior;
@property (strong, nonatomic) UICollisionBehavior *colliderBehavior;
@property (strong, nonatomic) UIDynamicItemBehavior *animationOptions;

@end

@implementation DropitBehavior

- (UIGravityBehavior *)gravityBehavior
{
    if (!_gravityBehavior) {
        _gravityBehavior = [[UIGravityBehavior alloc] init];
        _gravityBehavior.magnitude = 1.0;
    }
    return _gravityBehavior;
}

- (UICollisionBehavior *)colliderBehavior
{
    if (!_colliderBehavior) {
        _colliderBehavior = [[UICollisionBehavior alloc] init];
        _colliderBehavior.translatesReferenceBoundsIntoBoundary = YES;
    }
    return _colliderBehavior;
}

-(UIDynamicItemBehavior *)animationOptions
{
    if (!_animationOptions) {
        _animationOptions = [[UIDynamicItemBehavior alloc] init];
        _animationOptions.allowsRotation = NO;
    }
    
    return _animationOptions;
}

-(void)addItem:(id<UIDynamicItem>)item
{
    [self.gravityBehavior addItem:item];
    [self.colliderBehavior addItem:item];
    [self.animationOptions addItem:item];
}

-(void)removeItem:(id<UIDynamicItem>)item
{
    [self.gravityBehavior removeItem:item];
    [self.colliderBehavior removeItem:item];
    [self.animationOptions removeItem:item];
}

-(instancetype)init
{
    self = [super init];
    
    [self addChildBehavior:self.gravityBehavior];
    [self addChildBehavior:self.colliderBehavior];
    [self addChildBehavior:self.animationOptions];
    
    return self;
}

@end
