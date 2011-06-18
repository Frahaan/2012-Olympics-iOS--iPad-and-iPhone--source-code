//
//  CountDown.h
//  2012 Olympics
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CountDown : UIViewController {
	
	NSDate *destinationDate;
	
	IBOutlet UILabel *dateLabel;
	
	NSTimer *timer;

}

-(void)updateLabel;

@end
