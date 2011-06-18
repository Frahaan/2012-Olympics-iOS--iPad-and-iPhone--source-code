//
//  Main Schedule.m
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Main Schedule.h"

@implementation MainSchedule
-(void)awakeFromNib
{
	scheduleScrollView.contentSize = CGSizeMake(320, 1000);
	[self addSubview:mainView];
	
}

-(IBAction) gotoScheduleView
{
	[mainView removeFromSuperview];
	[self addSubview:infoView];
}
@end
