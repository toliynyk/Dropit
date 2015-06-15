//
//  DropitBehavior.h
//  Dropit
//
//  Created by Asmodai on 5/20/15.
//  Copyright (c) 2015 AsmoForge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DropitBehavior : UIDynamicBehavior

-(void)addItem:(id <UIDynamicItem>)item;
-(void)removeItem:(id <UIDynamicItem>)item;

@end
