//
//  CTFishBlock.m
//  Cat Trap 2
//
//  Created by Aaron Vizzini on 4/17/11.
//  Copyright 2011 Alternative Visuals. All rights reserved.
//

#import "CTFishBlock.h"


@implementation CTFishBlock

#pragma mark -
#pragma mark Init Method

-(id)initWithOwningGrid:(CTGridManager *)theGrid
{
    self = [super initWithOwningGrid:theGrid];
    if (self) {
        CCTexture2D *texture = [[CCTextureCache sharedTextureCache] addImage:@"FishBlock.png"];
		CGSize size = texture.contentSize;
		CGRect rect;
		rect.size = size;
		rect.origin = ccp(0,0);
		[self setTexture:texture];
		[self setTextureRect:rect];
        
        self.spriteType = CTFishBlockPushable;
    }
    
    return self;
}

#pragma mark -
#pragma mark clean up

- (void)dealloc
{
    [super dealloc];
}

@end
