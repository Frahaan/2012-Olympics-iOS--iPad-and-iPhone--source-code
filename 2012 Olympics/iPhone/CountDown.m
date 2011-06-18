//
//  CountDown.m
//  2012 Olympics
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CountDown.h"


@implementation CountDown

-(void)updateLabel
{
	NSCalendar *calender = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
	int units = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
	NSDateComponents *components = [calender components:units fromDate:[NSDate date] toDate:destinationDate options:0];
	
	if ([components year] > 0)
	{
		[dateLabel setText:[NSString stringWithFormat:@"%dy %dm %dd", [components year], [components month], [components day]]];
	}
	else if ([components year] == 0)
	{
		[dateLabel setText:[NSString stringWithFormat:@"%dm %dd %dh %dm %ds", [components month], [components day], [components hour], [components minute], [components second]]];
	}
	
	if ([components year] == 0 && [components month] == 0) 
	{
		[dateLabel setText:[NSString stringWithFormat:@"%dd %dh %dm %ds", [components day], [components hour], [components minute], [components second]]];
	}
	
	if ([components year] == 0 && [components month] == 0 && [components day] == 0)
	{
		[dateLabel setText:[NSString stringWithFormat:@"%dh %dm %ds", [components hour], [components minute], [components second]]];

	}

	// [dateLabel setText:[NSString stringWithFormat:@"%dy %dm %dd %dh %dm %ds", [components year], [components month], [components day], [components hour], [components minute], [components second]]];
}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	destinationDate = [[NSDate dateWithTimeIntervalSince1970:1343347200] retain];
	timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
