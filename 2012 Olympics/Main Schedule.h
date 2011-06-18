//
//  Main Schedule.h
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface MainSchedule : UIView {

	IBOutlet UIView *mainView;
	IBOutlet UIView *infoView;
	IBOutlet UIScrollView *scheduleScrollView;
	
}

-(IBAction) gotoScheduleView;


@end
