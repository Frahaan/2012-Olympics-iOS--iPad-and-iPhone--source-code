//
//  Schedule.m
//  2012 Olympics
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Schedule.h"


@implementation Schedule

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


- (void)viewDidLoad {
    [super viewDidLoad];
	
	//Initialize the array.
	listOfItems = [[NSMutableArray alloc] init];
	listOfItemsSub = [[NSMutableArray alloc] init];
	
	
	NSArray *July25Array = [NSArray arrayWithObjects:@"16:00 - 20:45 | Women's", @"17:00 - 21:45 | Women's", @"17:00 - 21:45 | Women's", nil];
	NSDictionary *July25Dict = [NSDictionary dictionaryWithObject:July25Array forKey:@"Countries"];
	
	NSArray *July26Array = [NSArray arrayWithObjects:@"12:00 - 16:45 | Men's", @"14:30 - 19:15 | Men's", @"17:00 - 21:45 | Men's", @"19:45 - 21:45 | Men's", @"19:45 - 21:45 | Men's", nil];
	NSDictionary *July26Dict = [NSDictionary dictionaryWithObject:July26Array forKey:@"Countries"];
	
	NSArray *July27Array = [NSArray arrayWithObjects:@"09:00 - 11:00 | Men's", @"13:00 - 15:00 | Women's", @"19:30 - 22:30 | Ceremonies", nil];
	NSDictionary *July27Dict = [NSDictionary dictionaryWithObject:July27Array forKey:@"Countries"];
	
	NSArray *July28Array = [NSArray arrayWithObjects:@"08:15 - 16:00 | Men's & Women's", @"08:30 - 11:00 | Men's, Women's & Mixed", @"09:00 - 12:45 | Men's & Women's", @"09:00 - 13:00 | Women's", @"09:00 - 12:50 | Men's & Women's", @"09:00 - 12:20 | Men's", @"09:30 - 13:00 | Women's", @"09:30 - 14:10 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Women's", @"10:00 - 13:00 | Men's & Women's", @"10:00 - 16:15 | Individual & Team", @"10:00 - 16:15 | Men's", @"10:30 - 15:30 | Women's", @"11:00 - 13:10 | Men's", @"11:30 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Mem's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 16:45 | Women's", @"12:30 - 17:00 | Men's, Women's & Mixed", @"13:30 - 16:30 | Men's", @"14:00 - 16:30 | Men's & Women's", @"14:30 - 17:30 | Men's & Women's", @"14:30 - 17:45 | Women's", @"14:30 - 19:15 | Women's", @"14:30 - 18:20 | Men's & Women's", @"14:30 - 18:30 | Women's", @"14:45 - 18:15 | Women's", @"15:00 - 19:00 | Men's", @"15:30 - 17:30 | Women's", @"15:30 - 17:40 | Men's", @"17:00 - 21:45 | Women's", @"18:00 - 20:30 | Women's", @"18:30 - 23:00 | Men's, Women's & Mixed", @"19:00 - 22:00 | Men's & Women's", @"19:30 - 21:35 | Men's & Women's", @"19:30 - 22:45 | Women's", @"20:00 - 23:30 | Women's", @"20:00 - 22:10 | Men's", @"20:00 - 23:50 | Men's & Womens", @"20:00 - 00:00 | Women's", @"20:30 - 23:30 | Men's", nil];
	NSDictionary *July28Dict = [NSDictionary dictionaryWithObject:July28Array forKey:@"Countries"];
	
	NSArray *July29Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Women's", @"08:30 - 11:00 | Men's, Women's & Mixed", @"09:00 - 12:00 | Men's & Women's", @"09:00 - 17:30 | Women's", @"09:00 - 12:50 | Men's & Women's", @"09:00 - 13:00 | Men's", @"09:00 - 12:20 | Women's", @"09:00 - 17:30 | Women's", @"09:30 - 13:00 | Men's", @"09:30 - 11:50 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Men's", @"09:30 - 12:45 | Women's", @"10:00 - 14:00 | Men's & Women's", @"10:00 - 12:40 | Men's", @"10:00 - 12:50 | Men's & Women's", @"10:00 - 16:15 | Individual & Team", @"10:30 - 14:00 | Men's", @"11:30 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 18:00 | Men's & Women's", @"12:00 - 16:45 | Men's", @"12:00 - 16:15 | Women's", @"12:30 - 17:00 | Men's, Women's & Mixed", @"13:30 - 16:30 | Men's", @"13:30 - 17:40 | Men's", @"13:30 - 16:30 | Men's", @"13:45 - 17:30 | Women's", @"14:00 - 16:30 | Men's & Women's", @"14:10 - 16:50 | Men's", @"14:30 - 17:45 | Men's", @"14:30 - 19:15 | Men's", @"14:30 - 18:20 | Men's & Women's", @"14:30 - 18:30 | Men's", @"14:45 - 18:15 | Men's", @"14:45 - 18:00 | Women's", @"15:00 - 16:10 | Women's", @"15:00 - 19:00 | Women's", @"15:30 - 17:30 | Women's", @"17:00 - 21:45 | Men's", @"17:00 - 21:45 | Men's", @"18:00 - 22:00 | Women's", @"18:00 - 19:50 | Men's", @"18:20 - 21:00 | Men's", @"18:30 - 23:00 | Men's, Women's & Mixed", @"19:00 - 21:00 | Men's", @"19:00 - 22:45 | Women's", @"19:30 - 21:35 | Men's & Women's", @"19:30 - 22:45 | Men's", @"20:00 - 23:30 | Men's", @"20:00 - 21:30 | Women's", @"20:00 - 23:50 | Men's & Women's", @"20:00 - 00:00 | Men's", @"20:30 - 23:30 | Men's", nil];
	NSDictionary *July29Dict = [NSDictionary dictionaryWithObject:July29Array forKey:@"Countries"];
	
	NSArray *July30Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Men's", @"08:30 - 11:00 | Men's, Women's & Mixed", @"09:00 - 14:30 | Men's", @"09:00 - 14:30 | Men's", @"09:00 - 12:50 | Men's & Women's", @"09:00 - 13:00 | Women's", @"09:00 - 13:00 | Men's & Women's", @"09:30 - 13:00 | Women's", @"09:30 - 11:10 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Women's", @"10:00 - 14:00 | Men's & Women's", @"10:00 - 14:00 | Men's", @"10:00 - 11:40 | Men's & Women's", @"10:30 - 15:30 | Women's", @"11:30 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 18:00 | Men's & Women's", @"12:30 - 17:30 | Individual & Team", @"12:30 - 17:00 | Men's, Women's & Mixed", @"13:30 - 17:30 | Men's & Women's", @"13:30 - 16:00 | Men's", @"13:45 - 17:30 | Men's", @"14:00 - 16:30 | Men's & Women's", @"14:10 - 16:50 | Women's", @"14:30 - 17:45 | Women's", @"14:30 - 18:20 | Men's & Women's", @"14:30 - 18:30 | Women's", @"14:45 - 18:15 | Women's", @"15:00 - 16:15 | Men's", @"15:00 - 17:40 | Men's & Women's", @"15:30 - 17:30 | Women's", @"15:30 - 17:30 | Women's", @"16:30 - 19:30 | Men's", @"18:00 - 20:30 | Women's", @"18:20 - 21:00 | Women's", @"18:30 - 23:00 | Men's, Women's & Mixed", @"19:00 - 21:00 | Men's", @"19:00 - 21:00 | Men's", @"19:00 - 22:45 | Men's", @"19:30 - 21:15 | Men's & Women's", @"19:30 - 22:45 | Women's", @"20:00 - 23:30 | Women's", @"20:00 - 23:50 | Men's & Women's", @"20:00 - 00:00 | Women's", @"20:30 - 23:00 | Men's", nil];
	NSDictionary *July30Dict = [NSDictionary dictionaryWithObject:July30Array forKey:@"Countries"];
	
	NSArray *July31Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Women's", @"08:30 - 11:00 | Men's, Women's & Mixed", @"09:00 - 15:15 | Men's", @"09:00 - 12:50 | Men's & Women's", @"09:00 - 13:00 | Men's", @"09:00 - 13:00 | Men's & Women's", @"09:30 - 13:00 | Men's", @"09:30 - 12:40 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Men's", @"10:00 - 14:00 | Men's & Women's", @"10:00 - 12:40 | Men's", @"10:00 - 14:00 | Women's", @"10:00 - 12:15 | Men's & Women's", @"10:30 - 15:30 | Men's", @"10:30 - 16:00 | Individual & Team", @"11:30 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 20:00 | Men's & Women's", @"12:00 - 18:00 | Men's & Women's", @"12:30 - 17:00 | Men's, Women's & Mixed", @"13:30 - 15:50 | Men's", @"13:30 - 16:15 | Men's", @"13:45 - 17:30 | Women's", @"14:00 - 16:30 | Men's & Women's", @"14:10 - 16:50 | Men's", @"14:30 - 17:45 | Men's", @"14:30 - 19:15 | Women's", @"14:30 - 16:30 | Women's", @"14:30 - 18:20 | Men's & Women's", @"14:30 - 18:30 | Men's", @"14:45 - 18:15 | Men's", @"15:00 - 16:10 | Women's", @"15:00 - 17:40 | Men's & Women's", @"15:30 - 17:30 | Women's", @"16:00 - 18:00 | Women's", @"16:30 - 18:40 | Women's", @"17:15 - 19:15 | Women's", @"18:00 - 20:30 | Men's", @"18:20 - 21:00 | Men's", @"18:30 - 23:00 | Men's, Women's & Mixed", @"19:00 - 21:00 | Men's", @"19:00 - 22:45 | Women's", @"19:30 - 21:20 | Men's & Women's", @"19:30 - 22:45 | Men's", @"19:45 - 21:45 | Women's", @"19:45 - 21:45 | Women's", @"20:00 - 23:30 | Men's", @"20:00 - 22:00 | Men's", @"20:00 - 23:50 | Men's & Women's", @"20:00 - 00:00 | Men's", @"20:30 - 23:15 | Men's", nil];
	NSDictionary *July31Dict = [NSDictionary dictionaryWithObject:July31Array forKey:@"Countries"];
	
	NSArray *August01Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Men's", @"09:00 - 16:15 | Women's", @"09:00 - 15:40 | Men's & Women's", @"09:00 - 12:50 | Men's & Women's", @"09:00 - 13:00 | Women's", @"09:00 - 11:00 | Men's, Women's & Mixed", @"09:00 - 13:00 | Men's & Women's", @"09:30 - 13:00 | Women's", @"09:30 - 12:50 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Women's", @"10:00 - 14:00 | Men's & Women's", @"10:00 - 12:00 | Men's", @"10:00 - 13:05 | Men's & Women's", @"10:00 - 11:30 | Women's", @"11:30 - 20:00 | Men's, Women's & Mixed", @"12:00 - 20:00 | Men's, Women's & Mixed", @"12:00 - 20:00 | Men's, Women's & Mixed", @"12:00 - 18:00 | Men's & Women's", @"12:30 - 15:30 | Men's, Women's & Mixed", @"13:00 - 16:15 | Men's", @"13:30 - 16:05 | Men's", @"13:30 - 16:30 | Men's", @"13:45 - 17:30 | Men's", @"14:00 - 16:30 | Men's & Women's", @"14:10 - 16:50 | Women's", @"14:30 - 18:30 | Women's", @"14:30 - 16:30 | Women's", @"14:30 - 17:45 | Women's", @"14:30 - 16:30 | Men's", @"14:30 - 16:30 | Men's", @"14:30 - 18:20 | Men's & Women's", @"14:45 - 18:15 | Women's", @"15:00 - 16:15 | Men's", @"15:00 - 19:00 | Men's & Women's", @"15:30 - 17:30 | Women's", @"16:30 - 19:35 | Men's", @"17:00 - 19:00 | Men's", @"17:00 - 21:45 | Men's", @"17:00 - 19:00 | Men's", @"17:00 - 21:45 | Men's", @"17:00 - 21:00 | Men's & Women's", @"17:30 - 21:20 | Men's & Women's", @"18:20 - 21:00 | Women's", @"19:00 - 21:00 | Men's", @"19:00 - 22:45 | Men's", @"19:30 - 21:35 | Men's & Women's", @"19:30 - 22:45 | Women's", @"20:00 - 23:30 | Women's", @"20:00 - 23:50 | Men's & Women's", @"20:00 - 00:00 | Women's", @"20:30 - 23:30 | Men's", nil];
	NSDictionary *August01Dict = [NSDictionary dictionaryWithObject:August01Array forKey:@"Countries"];
	
	NSArray *August02Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Women's", @"09:00 - 13:00 | Men's", @"09:00 - 16:15 | Men's", @"09:00 - 16:30 | Women's", @"09:00 - 12:50 | Men's & Women's", @"09:00 - 11:00 | Men's", @"09:00 - 10:45 | Women's", @"09:30 - 13:00 | Men's", @"09:30 - 12:50 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Men's", @"10:00 - 12:40 | Men's", @"10:00 - 12:00 | Men's", @"10:00 - 12:10 | Men's & Women's", @"11:00 - 15:30 | Team Dressage", @"11:30 - 20:00 | Men's, Women's & Mixed", @"12:00 - 20:00 | Men's, Women's & Mixed", @"12:00 - 20:00 | Men's, Women's & Mixed", @"12:00 - 18:00 | Men's & Women's", @"12:30 - 15:30 | Women's & Mixed", @"13:30 - 17:00 | Men's & Women's", @"13:30 - 15:30 | Men's", @"13:45 - 17:30 | Women's", @"14:00 - 16:30 | Men's & Women's", @"14:00 - 16:20 | Women's", @"14:10 - 16:50 | Men's", @"14:30 - 18:30 | Men's", @"14:30 - 16:30 | Men's", @"14:30 - 17:45 | Men's", @"14:30 - 18:20 | Men's & Women's", @"14:45 - 18:15 | Men's", @"16:00 - 18:30 | Men's & Women's", @"16:30 - 18:30 | Women's", @"17:00 - 20:00 | Men's & Women's", @"18:00 - 20:50 | Women's", @"18:20 - 21:00 | Men's", @"19:00 - 22:45 | Women's", @"19:30 - 21:05 | Men's & Women's", @"19:30 - 22:45 | Men's", @"20:00 - 23:30 | Men's", @"20:00 - 23:50 | Men's & Women's", @"20:00 - 00:00 | Men's", @"20:30 - 22:30 | Men's", nil];
	NSDictionary *August02Dict = [NSDictionary dictionaryWithObject:August02Array forKey:@"Countries"];
	
	NSArray *August03Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Men's", @"09:00 - 13:00 | Women's", @"09:00 - 16:30 | Men's", @"09:00 - 10:50 | Men's & Women's", @"09:00 - 12:00 | Women's & Mixed", @"09:00 - 10:45 | Men's", @"09:30 - 13:00 | Women's", @"09:30 - 12:50 | Men's & Women's", @"09:30 - 12:30 | Men's & Women's", @"09:30 - 12:45 | Women's", @"10:00 - 14:00 | Men's & Women's", @"10:00 - 13:00 | Women's", @"10:00 - 12:50 | Men's & Women's", @"10:00 - 13:45 | Men's & Women's", @"10:30 - 15:30 | Men's", @"11:00 - 15:30 | Team Dressage", @"12:00 - 20:00 | Men's, Women's & Mixed", @"12:00 - 20:00 | Men's, Women's & Mixed", @"12:00 - 18:00 | Men's & Women's", @"12:00 - 14:00 | Women's", @"13:00 - 14:50 | Men's & Women's", @"13:30 - 15:30 | Men's", @"13:30 - 17:00 | Men's & Mixed", @"13:45 - 17:30 | Men's", @"14:00 - 16:30 | Men's & Women's", @"14:00 - 16:15 | Men's", @"14:00 - 16:20 | Men's", @"14:10 - 16:50 | Women's", @"14:30 - 18:30 | Women's", @"14:30 - 17:30 | Women's", @"14:30 - 17:45 | Women's", @"14:30 - 16:30 | Women's", @"14:30 - 17:30 | Women's", @"14:45 - 18:15 | Women's", @"15:30 - 17:30 | Women's", @"16:00 - 18:55 | Men's & Women's", @"17:00 - 19:00 | Women's", @"17:00 - 18:50 | Men's & Women's", @"18:00 - 19:50 | Men's", @"18:20 - 21:00 | Women's", @"19:00 - 21:00 | Men's", @"19:00 - 22:00 | Men's", @"19:00 - 22:45 | Men's", @"19:00 - 21:55 | Men's & Women's", @"19:30 - 20:50 | Men's & Women's", @"19:30 - 22:45 | Women's", @"19:30 - 21:30 | Women's", @"20:00 - 00:00 | Women's", @"20:00 - 23:30 | Women's", @"20:30 - 22:30 | Men's", @"21:00 - 22:50 | Men's & Women's", nil];
	NSDictionary *August03Dict = [NSDictionary dictionaryWithObject:August03Array forKey:@"Countries"];
	
	NSArray *August04Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Women's", @"09:00 - 13:00 | Men's", @"09:00 - 11:40 | Women's", @"09:00 - 17:30 | Women's", @"09:00 - 17:30 | Women's", @"09:00 - 16:30 | Women's", @"09:00 - 10:50 | Men's & Women's", @"09:00 - 12:00 | Men's & Women's", @"09:30 - 13:00 | Men's", @"09:30 - 12:50 | Men's & Women's", @"09:30 - 12:45 | Men's", @"10:00 - 12:40 | Men's", @"10:00 - 13:00 | Men's", @"10:00 - 11:30 | Men's", @"10:00 - 13:45 | Men's & Women's", @"10:30 - 14:15 | Individual & Team", @"12:00 - 20:30 | Men's, Women's & Mixed", @"12:00 - 18:00 | Women's", @"12:00 - 14:00 | Men's", @"13:00 - 14:50 | Men's & Women's", @"13:30 - 16:30 | Men's", @"13:30 - 17:00 | Women's", @"13:45 - 17:30 | Women's", @"14:00 - 20:30 | Men's & Women's", @"14:00 - 16:15 | Women's", @"14:10 - 16:50 | Men's", @"14:30 - 18:30 | Men's", @"14:30 - 17:30 | Women's", @"14:30 - 17:45 | Men's", @"14:30 - 16:30 | Men's", @"14:30 - 16:10 | Women's", @"14:45 - 18:15 | Men's", @"15:30 - 17:30 | Men's", @"16:00 - 18:40 | Men's & Women's", @"17:00 - 19:00 | Men's", @"17:00 - 18:50 | Men's & Women's", @"17:00 - 18:30 | Men's", @"18:00 - 20:50 | Women's", @"18:20 - 21:00 | Men's", @"18:50 - 22:05 | Men's & Women's", @"19:00 - 21:00 | Men's", @"19:00 - 22:00 | Women's", @"19:00 - 22:45 | Women's", @"19:30 - 21:00 | Men's & Women's", @"19:30 - 22:45 | Men's", @"19:30 - 21:30 | Men's", @"20:00 - 00:00 | Men's", @"20:00 - 23:30 | Men's", @"20:30 - 23:30 | Men's", @"21:00 - 22:50 | Men's & Women's", nil];
	NSDictionary *August04Dict = [NSDictionary dictionaryWithObject:August04Array forKey:@"Countries"];
	
	NSArray *August05Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Men's", @"09:00 - 16:00 | Men's", @"09:00 - 16:00 | Men's", @"09:00 - 16:30 | Men's", @"09:00 - 13:00 | Women's", @"09:00 - 11:00 | Men's", @"09:30 - 13:00 | Women's", @"09:30 - 12:45 | Women's", @"10:00 - 13:00 | Men's", @"10:00 - 11:25 | Men's & Women's", @"11:00 - 14:30 | Team", @"11:00 - 14:00 | Women's", @"12:00 - 20:30 | Men's, Women's & Mixed", @"12:00 - 20:30 | Men's & Women's", @"12:00 - 18:00 | Men's & Women's", @"13:00 - 15:45 | Men's", @"13:00 - 16:00 | Men's", @"13:30 - 16:30 | Women's", @"13:45 - 17:30 | Men's", @"14:00 - 16:15 | Men's & Women's", @"14:30 - 18:30 | Women's", @"14:30 - 17:30 | Men's", @"14:30 - 17:45 | Women's", @"14:45 - 18:15 | Women's", @"14:50 - 17:30 | Women's", @"15:00 - 16:40 | Women's", @"15:30 - 17:30 | Women's", @"16:00 - 19:05 | Men's & Women's", @"17:45 - 20:15 | Men's", @"18:00 - 20:50 | Men's", @"18:00 - 19:50 | Women's", @"18:50 - 21:55 | Men's & Women's", @"19:00 - 21:40 | Women's", @"19:00 - 22:00 | Women's", @"19:00 - 22:45 | Men's", @"19:00 - 20:30 | Women's", @"19:30 - 22:45 | Women's", @"20:00 - 00:00 | Women's", @"20:00 - 23:30 | Women's", @"20:30 - 22:30 | Men's", @"22:00 - 23:50 | Women's", nil];
	NSDictionary *August05Dict = [NSDictionary dictionaryWithObject:August05Array forKey:@"Countries"];
	
	NSArray *August06Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Women's", @"09:00 - 17:30 | Men's", @"09:00 - 13:00 | Men's", @"09:00 - 17:30 | Men's", @"09:30 - 13:00 | Men's", @"09:30 - 12:45 | Men's", @"09:30 - 11:50 | Men's & Women's", @"10:00 - 12:40 | Men's", @"10:00 - 13:00 | Women's", @"10:00 - 12:20 | Men's & Women's", @"12:00 - 18:00 | Men's & Women's", @"13:00 - 15:45 | Men's", @"13:30 - 16:30 | Women's", @"13:45 - 17:30 | Women's", @"14:00 - 16:20 | Men's & Women's", @"14:00 - 17:30 | Team", @"14:10 - 16:50 | Men's", @"14:30 - 18:30 | Men's", @"14:30 - 17:30 | Men's", @"14:30 - 17:45 | Men's", @"14:45 - 18:15 | Men's", @"15:00 - 17:10 | Women's", @"15:30 - 17:30 | Men's", @"16:00 - 18:55 | Men's & Women's", @"17:00 - 19:00 | Women's", @"17:45 - 20:15 | Men's", @"18:00 - 19:50 | Men's", @"18:20 - 21:00 | Men's", @"18:50 - 21:40 | Men's & Women's", @"19:00 - 21:00 | Men's", @"19:00 - 22:00 | Men's", @"19:00 - 22:45 | Women's", @"19:00 - 22:30 | Men's", @"19:30 - 22:45 | Men's", @"19:45 - 21:45 | Women's", @"20:00 - 00:00 | Men's", @"20:00 - 23:30 | Men's", @"20:30 - 23:30 | Men's", @"22:00 - 23:50 | Men's", nil];
	NSDictionary *August06Dict = [NSDictionary dictionaryWithObject:August06Array forKey:@"Countries"];
	
	NSArray *August07Array = [NSArray arrayWithObjects:@"08:30 - 12:15 | Men's", @"09:30 - 11:30 | Men's & Women's", @"10:00 - 12:00 | Women's", @"10:00 - 16:15 | Team", @"10:00 - 11:50 | Men's", @"10:00 - 11:30 | Men's & Women's", @"10:00 - 12:35 | Men's & Women's", @"11:00 - 14:00 | Women's", @"11:30 - 14:00 | Men's", @"12:00 - 18:00 | Men's & Women's", @"13:00 - 15:45 | Men's", @"13:00 - 16:30 | Women's", @"13:30 - 15:30 | Women's", @"13:45 - 17:30 | Men's", @"14:00 - 18:00 | Women's", @"14:00 - 17:05 | Men's & Women's", @"14:10 - 16:50 | Women's", @"15:00 - 16:30 | Women's", @"15:30 - 17:30 | Men's", @"15:30 - 18:30 | Women's", @"16:00 - 18:30 | Men's & Women's", @"17:00 - 19:00 | Women's", @"17:00 - 19:00 | Men's", @"17:00 - 18:50 | Men's & Women's", @"17:45 - 20:15 | Men's", @"18:20 - 21:00 | Women's", @"18:50 - 21:20 | Men's & Women's", @"19:00 - 21:00 | Men's", @"19:00 - 22:30 | Women's", @"19:00 - 22:45 | Men's", @"19:00 - 21:00 | Men's", @"19:45 - 21:45 | Men's", @"20:00 - 00:00 | Women's", @"20:30 - 22:30 | Women's", @"20:30 - 22:30 | Men's", @"21:00 - 23:50 | Men's & Women's", nil];
	NSDictionary *August07Dict = [NSDictionary dictionaryWithObject:August07Array forKey:@"Countries"];
	
	NSArray *August08Array = [NSArray arrayWithObjects:@"08:30 - 13:30 | Women's", @"09:00 - 13:00 | Men's & Women's", @"09:30 - 11:15 | Men's & Women's", @"10:00 - 13:40 | Men's & Women's", @"11:00 - 14:00 | Men's", @"11:00 - 13:00 | Men's", @"12:00 - 18:00 | Men's & Women's", @"12:00 - 16:35 | Individual", @"13:00 - 15:45 | Women's", @"13:30 - 15:00 | Women's", @"14:00 - 18:00 | Men's", @"14:00 - 17:30 | Men's", @"14:30 - 17:10 | Men's", @"14:30 - 16:30 | Men's", @"15:00 - 18:00 | Men's & Women's", @"15:00 - 16:30 | Men's & Women's", @"15:30 - 18:30 | Men's" @"15:30 - 17:30 | Women's", @"17:45 - 20:15 | Women's", @"18:00 - 20:00 | Men's", @"18:00 - 21:55 | Men's & Women's", @"18:40 - 21:20 | Men's", @"19:00 - 22:10 | Women's", @"19:00 - 22:30 | Women's", @"19:30 - 23:00 | Men's", @"20:00 - 23:15 | Men's & Women's", @"20:00 - 22:00 | Women's", @"20:00 - 00:00 | Men's", @"20:30 - 23:30 | Men's", @"21:30 - 23:30 | Men's", nil];
	NSDictionary *August08Dict = [NSDictionary dictionaryWithObject:August08Array forKey:@"Countries"];
	
	NSArray *August09Array = [NSArray arrayWithObjects:@"08:30 - 13:30 | Men's", @"09:00 - 13:00 | Men's & Women's", @"09:00 - 16:00 | Men's & Women's", @"09:30 - 11:15 | Men's & Women's", @"10:00 - 11:30 | Women's", @"12:00 - 15:00 | Women's", @"12:00 - 18:00 | Men's & Women's", @"12:00 - 16:10 | Women's", @"12:30 - 16:30 | Individual", @"13:00 - 15:45 | Women's", @"13:00 - 15:00 | Women's", @"14:30 - 17:10 | Women's", @"15:00 - 16:30 | Women's", @"15:00 - 18:00 | Men's & Women's", @"15:00 - 15:45 | Women's", @"15:00 - 17:00 | Men's", @"15:30 - 17:30 | Men's", @"16:30 - 18:00 | Women's", @"17:00 - 19:00 | Women's", @"17:00 - 19:00", @"17:45 - 20:15 | Women's", @"18:30 - 22:10 | Men's & Women's", @"18:40 - 21:50 | Women's", @"19:00 - 20:30 | Women's", @"19:00 - 22:30 | Men's", @"19:30 - 21:00 | Women's", @"19:45 - 22:15 | Women's", @"20:00 - 23:15 | Men's & Women's", @"20:00 - 22:00 | Men's", @"20:30 - 22:30 | Women's", @"21:00 - 23:00 | Women's", nil];
	NSDictionary *August09Dict = [NSDictionary dictionaryWithObject:August09Array forKey:@"Countries"];
	
	NSArray *August10Array = [NSArray arrayWithObjects:@"08:30 - 13:30 | Women's", @"09:00 - 13:00 | Men's & Women's", @"09:30 - 11:55 | Men's & Women's", @"12:00 - 15:00 | Men's", @"12:00 - 18:00 | Women's", @"12:00 - 16:10 | Women's", @"13:00 - 15:45 | Men's", @"13:30 - 16:00 | Men's", @"14:20 - 17:00 | Men's", @"15:00 - 16:30 | Men's", @"15:00 - 18:00 | Men's & Women's", @"15:00 - 16:30 | Women's", @"15:00 - 17:20 | Men's & Women's", @"15:30 - 17:30 | Women's", @"17:00 - 19:00 | Men's", @"17:00 - 19:00 | Men's", @"17:45 - 20:15 | Men's", @"18:30 - 21:10 | Men's", @"19:00 - 22:45 | Men's", @"19:00 - 21:40 | Men's & Women's", @"19:30 - 21:00 | Men's", @"19:45 - 21:45 | Men's", @"20:00 - 23:15 | Men's & Women's", @"20:00 - 22:30 | Women's", @"20:30 - 22:30 | Men's", @"20:30 - 23:00 | Men's", @"21:00 - 23:00 | Men's", nil];
	NSDictionary *August10Dict = [NSDictionary dictionaryWithObject:August10Array forKey:@"Countries"];
	
	NSArray *August11Array = [NSArray arrayWithObjects:@"08:30 - 13:30 | Men's", @"08:30 - 13:30 | Men's & Women's", @"09:00 - 19:10 Men's", @"09:00 - 13:20 | Men's", @"09:30 - 11:20 | Men's & Women's", @"10:00 - 11:50 | Men's", @"11:30 - 13:00 | Women's", @"12:00 - 18:00 | Women's", @"12:30 - 14:30 | Women's", @"13:00 - 15:45 | Men's", @"13:30 - 16:05 | Women's", @"15:00 - 18:00 | Men's & Women's", @"15:00 - 17:30 | Men's", @"15:10 - 19:10 | Men's", @"15:30 - 17:30 | Men's", @"17:00 - 19:00 | Women's", @"17:00 - 19:00 | Women's", @"17:00 - 18:45 | Women's", @"17:45 - 20:15 | Men's", @"18:30 - 20:40 | Women's", @"18:45 - 21:30 | Men's & Women's", @"20:00 - 23:15 | Men's & Women's", @"20:00 - 22:30 | Men's", @"20:30 - 23:00 | Women's", @"20:30 - 22:10 | Men's", @"20:30 - 23:00 | Men's", @"21:00 - 23:30 | Women's", nil];
	NSDictionary *August11Dict = [NSDictionary dictionaryWithObject:August11Array forKey:@"Countries"];
	
	NSArray *August12Array = [NSArray arrayWithObjects:@"08:00 - 18:00 | Women's", @"08:30 - 11:15 | Men's", @"09:30 - 11:00 | Men's", @"10:20 - 13:00 | Men's", @"11:00 - 13:00 | Men's", @"11:00 - 13:00 | Men's", @"11:00 - 13:40 | Men's", @"12:45 - 15:15 | Men's", @"13:00 - 15:10 | Men's", @"13:30 - 15:10 | Women's", @"13:30 - 15:30 | Men's", @"13:30 - 16:00 | Men's", @"14:00 - 18:00 | Women's", @"14:30 - 17:40 | Men's", @"15:00 - 17:30 | Men's", @"15:00 - 17:30 | Men's", @"19:30 - 22:30 | Closing Ceremony", nil];
	NSDictionary *August12Dict = [NSDictionary dictionaryWithObject:August12Array forKey:@"Countries"];
	
	[listOfItems addObject:July25Dict];
	[listOfItems addObject:July26Dict];
	[listOfItems addObject:July27Dict];
	[listOfItems addObject:July28Dict];
	[listOfItems addObject:July29Dict];
	[listOfItems addObject:July30Dict];
	[listOfItems addObject:July31Dict];
	[listOfItems addObject:August01Dict];
	[listOfItems addObject:August02Dict];
	[listOfItems addObject:August03Dict];
	[listOfItems addObject:August04Dict];
	[listOfItems addObject:August05Dict];
	[listOfItems addObject:August06Dict];
	[listOfItems addObject:August07Dict];
	[listOfItems addObject:August08Dict];
	[listOfItems addObject:August09Dict];
	[listOfItems addObject:August10Dict];
	[listOfItems addObject:August11Dict];
	[listOfItems addObject:August12Dict];

	
	NSArray *July25ArraySub = [NSArray arrayWithObjects:@"Football | Millennium Stadium, Cardiff", @"Football | City of Coventry Stadium, Coventry", @"Football | Hampden Park, Glasgow", nil];
	NSDictionary *July25DictSub = [NSDictionary dictionaryWithObject:July25ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *July26ArraySub = [NSArray arrayWithObjects:@"Football | Hampden Park, Glasgow", @"Football | St James' Park, Newcastle", @"Football | Old Trafford, Manchester", @"Football | City of Coventry Stadium, Coventry", @"Football | Millennium Stadium, Cardiff", nil];
	NSDictionary *July26DictSub = [NSDictionary dictionaryWithObject:July26ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *July27ArraySub = [NSArray arrayWithObjects:@"Archery | Lord's Cricket Ground", @"Archery | Lord's Cricket Ground", @"Opening Ceremony | Olympic Park - Olympic Stadium", nil];
	NSDictionary *July27DictSub = [NSDictionary dictionaryWithObject:July27ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *July28ArraySub = [NSArray arrayWithObjects:@"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Badminton | Wembley Arena", @"Table Tennis | ExCel", @"Basketball | Olympic Park - Basketball Arena", @"Beach Volleyball | Horse Guards Parade", @"Archery | Lord's Cricket Ground", @"Volleyball | Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Judo | ExCel", @"Handball | Olympic Park - Handball Arena", @"Swimming | Olympic Park - Aquatics Centre", @"Equestrian - Eventing | Greenwich Park", @"Cycling - Road | The Mall", @"Fencing | ExCel", @"Gymnastics - Artistic | North Greenwich Arena", @"Tennis | Wimbledon - Ground Pass", @"Tennis | Wimbledon - Centre Court", @"Tennis | Wimbledon - No.1 Court", @"Football | City of Coventry Stadium, Coventry", @"Badminton | Wembley Arena", @"Boxing | ExCel", @"Judo | ExCel", @"Table Tennis | ExCel", @"Handball | Olympic Park - Handball Arena", @"Football | Millennium Stadium, Cardiff", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Archery | Lord's Cricket Ground", @"Weightlifting | ExCel", @"Gymnastics - Artistic | North Greenwich Arena", @"Football | Hampden Park, Glasgow", @"Fencing | ExCel", @"Badminton | Wembley Arena", @"Table Tennis | ExCel", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Gymnastics - Artistic | North Greenwich Arena", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Boxing | ExCeL", nil];
	NSDictionary *July28DictSub = [NSDictionary dictionaryWithObject:July28ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *July29ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Badminton | Wembley Arena", @"Table Tennis | ExCeL", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Archery | Lord's Cricket Ground", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Volleyball	| Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Judo | ExCeL", @"Handball | Olympic Park - Handball Arena", @"Gymnastics - Artistic | North Greenwich Arena", @"Weightlifting | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Swimming	| Olympic Park - Aquatics Centre", @"Equestrian - Eventing | Greenwich Park", @"Fencing	| ExCeL", @"Tennis | Wimbledon - Ground Pass", @"Tennis	| Wimbledon - No.1 Court", @"Tennis	| Wimbledon - Centre Court", @"Sailing | Weymouth and Portland, Dorset", @"Football	| Old Trafford, Manchester", @"Cycling - Road | The Mall", @"Badminton | Wembley Arena", @"Table Tennis | ExCel", @"Canoe Slalom | Lee Valley White Water Centre, Hertfordshire", @"Boxing | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Judo | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Handball	| Olympic Park - Handball Arena", @"Football | City of Coventry Stadium, Coventry", @"Beach Volleyball | Horse Guards Parade", @"Basketball	| Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Gymnastics - Artistic | North Greenwich Arena", @"Diving	| Olympic Park - Aquatics Centre", @"Archery | Lord's Cricket Ground", @"Weightlifting | ExCeL", @"Football	| Wembley Stadium", @"Football | St James' Park, Newcastle", @"Table Tennis	| ExCeL", @"Fencing	| ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Badminton | Wembley Arena", @"Weightlifting | ExCeL", @"Hockey	| Olympic Park - Hockey Centre", @"Swimming	| Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Gymnastics - Artistic | North Greenwich Arena", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Boxing | ExCeL", nil];
	NSDictionary *July29DictSub = [NSDictionary dictionaryWithObject:July29ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *July30ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Badminton | Wembley Arena", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Archery	| Lord's Cricket Ground", @"Volleyball | Earls Court", @"Rowing	| Eton Dorney, Buckinghamshire", @"Judo	| ExCeL", @"Handball | Olympic Park - Handball Arena", @"Weightlifting | ExCeL", @"Table Tennis | ExCel", @"Swimming | Olympic Park - Aquatics Centre", @"Fencing | ExCeL", @"Tennis | Wimbledon - Ground Pass", @"Tennis | Wimbledon - No.1 Court", @"Tennis | Wimbledon - Centre Court", @"Sailing | Weymouth and Portland, Dorset", @"Equestrian - Eventing | Greenwich Park", @"Badminton | Wembley Arena", @"Canoe Slalom | Lee Valley White Water Centre, Hertfordshire", @"Boxing | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Judo	| ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Handball | Olympic Park - Handball Arena", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Diving | Olympic Park - Aquatics Centre", @"Archery | Lord's Cricket Ground", @"Weightlifting | ExCeL", @"Table Tennis | ExCeL", @"Gymnastics - Artistic	| North Greenwich Arena", @"Fencing	| ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Badminton | Wembley Arena", @"Weightlifting | ExCel", @"Table Tennis | ExCel", @"Hockey | Olympic Park - Hockey Centre", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Boxing | ExCel", nil];
	NSDictionary *July30DictSub = [NSDictionary dictionaryWithObject:July30ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *July31ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Badminton | Wembley Arena", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Archery	| Lord's Cricket Ground", @"Volleyball | Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Judo | ExCeL", @"Handball | Olympic Park - Handball Arena", @"Weightlifting | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Table Tennis | ExCel", @"Swimming | Olympic Park - Aquatics Centre", @"Fencing | ExCel", @"Equestrian - Eventing | Greenwich Park", @"Tennis | Wimbledon - Ground Pass", @"Tennis | Wimbledon - Centre Court", @"Tennis | Wimbledon - No.1 Court", @"Sailing | Weymouth and Portland, Dorset", @"Badminton | Wembley Arena", @"Canoe Slalom | Lee Valley White Water Centre, Hertfordshire", @"Boxing | ExCel", @"Hockey | Olympic Park - Hockey Centre", @"Judo | ExCel", @"Water Polo	| Olympic Park - Water Polo Arena", @"Handball | Olympic Park - Handball Arena", @"Football | St James' Park, Newcastle", @"Football | Millennium Stadium, Cardiff", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Diving | Olympic Park - Aquatics Centre", @"Archery | Lord's Cricket Ground", @"Weightlifting | ExCel", @"Table Tennis | ExCeL", @"Gymnastics - Artistic | North Greenwich Arena", @"Football | Old Trafford, Manchester", @"Fencing | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Badminton | Wembley Arena", @"Weightlifting | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Football | City of Coventry Stadium, Coventry", @"Football | Wembley Stadium", @"Volleyball | Earls Court", @"Table Tennis | ExCeL", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Boxing | ExCel", nil];
	NSDictionary *July31DictSub = [NSDictionary dictionaryWithObject:July31ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August01ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Fencing | ExCeL", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Badminton | Wembley Arena", @"Archery | Lord's Cricket Ground", @"Volleyball | Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Judo | ExCeL", @"Handball | Olympic Park - Handball Arena", @"Weightlifting | ExCeL", @"Table Tennis | ExCeL", @"Swimming | Olympic Park - Aquatics Centre", @"Cycling - Road | Hampton Court Palace", @"Tennis | Wimbledon - Ground Pass", @"Tennis | Wimbledon - Centre Court", @"Tennis | Wimbledon - No.1 Court", @"Sailing | Weymouth and Portland, Dorset", @"Badminton | Wembley Arena", @"Cycling - Road	| Hampton Court Palace", @"Canoe Slalom | Lee Valley White Water Centre, Hertfordshire", @"Boxing | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Judo | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Basketball | Olympic Park - Basketball Arena", @"Table Tennis | ExCeL", @"Handball | Olympic Park - Handball Arena", @"Football | St James' Park, Newcastle", @"Football | Hampden Park, Glasgow", @"Beach Volleyball | Horse Guards Parade", @"Volleyball | Earls Court", @"Diving | Olympic Park - Aquatics Centre", @"Archery | Lord's Cricket Ground", @"Weightlifting | ExCeL", @"Gymnastics - Artistic | North Greenwich Arena", @"Football | Wembley Stadium", @"Football | Millennium Stadium, Cardiff", @"Football | Old Trafford, Manchester", @"Football | City of Coventry Stadium, Coventry", @"Badminton | Wembley Arena", @"Fencing | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Weightlifting | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Boxing | ExCeL", nil];
	NSDictionary *August01DictSub = [NSDictionary dictionaryWithObject:August01ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August02ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Basketball | Olympic Park - Basketball Arena", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Fencing | ExCel", @"Beach Volleyball | Horse Guards Parade", @"Badminton | Wembley Arena", @"Archery | Lord's Cricket Ground", @"Volleyball | Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Judo | ExCel", @"Handball | Olympic Park - Handball Arena", @"Water Polo | Olympic Park - Water Polo Arena", @"Table Tennis | ExCel", @"Swimming | Olympic Park - Aquatics Centre", @"Equestrian - Dressage | Greenwich Park", @"Tennis | Wimbledon - Ground Pass", @"Tennis | Wimbledon - No.1 Court", @"Tennis | Wimbledon - Centre Court", @"Sailing | Weymouth and Portland, Dorset", @"Badminton | Wembley Arena", @"Canoe Slalom | Lee Valley White Water Centre, Hertfordshire", @"Boxing | ExCel", @"Hockey | Olympic Park - Hockey Centre", @"Judo | ExCel", @"Archery | Lord's Cricket Ground", @"Water Polo| Olympic Park - Water Polo Arena", @"Basketball | Olympic Park - Basketball Arena", @"Table Tennis | ExCel", @"Handball | Olympic Park - Handball Arena", @"Beach Volleyball | Horse Guards Parade", @"Volleyball | Earls Court", @"Cycling - Track | Olympic Park - Velodrome", @"Gymnastics - Artistic | North Greenwich Arena", @"Badminton | Wembley Arena", @"Fencing | ExCel", @"Water Polo | Olympic Park - Water Polo Arena", @"Hockey | Olympic Park - Hockey Centre", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Beach Volleyball | Horse Guards Parade", @"Basketball | Olympic Park - Basketball Arena", @"Boxing | ExCel", nil];
	NSDictionary *August02DictSub = [NSDictionary dictionaryWithObject:August02ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August03ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Basketball | Olympic Park - Basketball Arena", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Beach Volleyball | Horse Guards Parade", @"Badminton | Wembley Arena", @"Archery | Lord's Cricket Ground", @"Volleyball | Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Judo | ExCel", @"Handball | Olympic Park - Handball Arena", @"Weightlifting | ExCeL", @"Table Tennis | ExCel", @"Swimming | Olympic Park - Aquatics Centre", @"Athletics | Olympic Park - Olympic Stadium", @"Fencing | ExCeL", @"Equestrian - Dressage | Greenwich Park", @"Tennis | Wimbledon - Centre Court", @"Tennis | Wimbledon - No.1 Court", @"Sailing | Weymouth and Portland, Dorset", @"Football | Hampden Park, Glasgow", @"Beach Volleyball | Horse Guards Parade", @"Boxing | ExCel", @"Badminton | Wembley Arena", @"Hockey | Olympic Park - Hockey Centre", @"Judo | ExCel", @"Gymnastics - Trampoline | North Greenwich Arena", @"Archery | Lord's Cricket Ground", @"Water Polo | Olympic Park - Water Polo Arena", @"Basketball | Olympic Park - Basketball Arena", @"Table Tennis | ExCel", @"Handball | Olympic Park - Handball Arena", @"Football | St James' Park, Newcastle", @"Diving | Olympic Park - Aquatics Centre", @"Volleyball | Earls Court", @"Weightlifting | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Football | Millennium Stadium, Cardiff", @"Beach Volleyball | Horse Guards Parade", @"Fencing | ExCel", @"Water Polo | Olympic Park - Water Polo Arena", @"Weightlifting | ExCeL", @"Table Tennis | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Athletics | Olympic Park - Olympic Stadium", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Football | City of Coventry Stadium, Coventry", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Boxing | ExCeL", @"Beach Volleyball | Horse Guards Parade", nil];
	NSDictionary *August03DictSub = [NSDictionary dictionaryWithObject:August03ArraySub forKey:@"listOfItemsSub"];

	NSArray *August04ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Basketball | Olympic Park - Basketball Arena", @"Triathlon | Hyde Park", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Fencing | ExCeL", @"Beach Volleyball | Horse Guards Parade", @"Badminton | Wembley Arena", @"Volleyball | Earls Court", @"Rowing | Eton Dorney, Buckinghamshire", @"Handball | Olympic Park - Handball Arena", @"Water Polo | Olympic Park - Water Polo Arena", @"Table Tennis | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Athletics | Olympic Park - Olympic Stadium", @"Equestrian - Jumping | Greenwich Park", @"Tennis | Wimbledon - No.1 Court", @"Sailing | Weymouth and Portland, Dorset", @"Football | Old Trafford, Manchester", @"Beach Volleyball | Horse Guards Parade", @"Boxing | ExCel", @"Badminton | Wembley Arena", @"Hockey | Olympic Park - Hockey Centre", @"Tennis | Wimbledon - Centre Court", @"Gymnastics - Trampoline | North Greenwich Arena", @"Water Polo | Olympic Park - Water Polo Arena", @"Basketball | Olympic Park - Basketball Arena", @"Table Tennis | ExCel", @"Handball | Olympic Park - Handball Arena", @"Football | Wembley Stadium", @"Diving | Olympic Park - Aquatics Centre", @"Volleyball | Earls Court", @"Weightlifting | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Football | St James' Park, Newcastle", @"Beach Volleyball | Horse Guards Parade", @"Athletics - Race Walk | The Mall", @"Fencing | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Athletics | Olympic Park - Olympic Stadium", @"Weightlifting | ExCeL", @"Table Tennis | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Swimming | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Football | Millennium Stadium, Cardiff", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Boxing | ExCeL", @"Beach Volleyball | Horse Guards Parade", nil];
	NSDictionary *August04DictSub = [NSDictionary dictionaryWithObject:August04ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August05ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Fencing | ExCel", @"Basketball | Olympic Park - Basketball Arena", @"Badminton | Wembley Arena", @"Volleyball | Earls Court", @"Handball | Olympic Park - Handball Arena", @"Table Tennis | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Equestrian - Jumping | Greenwich Park", @"Athletics - Marathon | The Mall", @"Tennis | Wimbledon - Centre Court", @"Tennis | Wimbledon - No.1 Court", @"Sailing | Weymouth and Portland, Dorset", @"Wrestling - Greco-Roman | ExCeL", @"Badminton | Wembley Arena", @"Boxing | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Gymnastics - Artistic | North Greenwich Arena", @"Basketball | Olympic Park - Basketball Arena", @"Table Tennis | ExCeL", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Water Polo | Olympic Park - Water Polo Arena", @"Synchronised Swimming | Olympic Park - Aquatics Centre", @"Weightlifting | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Wrestling - Greco-Roman | ExCeL", @"Fencing | ExCeL", @"Beach Volleyball | Horse Guards Parade", @"Athletics | Olympic Park - Olympic Stadium", @"Water Polo | Olympic Park - Water Polo Arena", @"Table Tennis | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Diving | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Boxing | ExCeL", @"Beach Volleyball | Horse Guards Parade", nil];
	NSDictionary *August05DictSub = [NSDictionary dictionaryWithObject:August05ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August06ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Shooting | The Royal Artillery Barracks - Ground Pass", @"Basketball | Olympic Park - Basketball Arena", @"Shooting | The Royal Artillery Barracks - Finals Hall & Ground Pass", @"Volleyball | Earls Court", @"Handball | Olympic Park - Handball Arena", @"Canoe Sprint | Eton Dorney, Buckinghamshire", @"Water Polo | Olympic Park - Water Polo Arena", @"Table Tennis | ExCeL", @"Athletics | Olympic Park - Olympic Stadium", @"Sailing | Weymouth and Portland, Dorset", @"Wrestling - Greco-Roman | ExCeL", @"Boxing | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Gymnastics - Artistic | North Greenwich Arena", @"Equestrian - Jumping | Greenwich Park", @"Water Polo | Olympic Park - Water Polo Arena", @"Basketball | Olympic Park - Basketball Arena", @"Table Tennis | ExCeL", @"Handball | Olympic Park - Handball Arena", @"Volleyball | Earls Court", @"Synchronised Swimming | Olympic Park - Aquatics Centre", @"Weightlifting | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Football | Wembley Stadium", @"Wrestling - Greco-Roman | ExCeL", @"Beach Volleyball | Horse Guards Parade", @"Water Polo | Olympic Park - Water Polo Arena", @"Athletics | Olympic Park - Olympic Stadium", @"Weightlifting | ExCeL", @"Table Tennis | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Diving | Olympic Park - Aquatics Centre", @"Handball | Olympic Park - Handball Arena", @"Football | Old Trafford, Manchester", @"Basketball | Olympic Park - Basketball Arena", @"Volleyball | Earls Court", @"Boxing | ExCeL", @"Beach Volleyball | Horse Guards Parade", nil];
	NSDictionary *August06DictSub = [NSDictionary dictionaryWithObject:August06ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August07ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Canoe Sprint | Eton Dorney, Buckinghamshire", @"Handball | Olympic Park - Handball Arena", @"Equestrian - Dressage | Greenwich Park", @"Diving | Olympic Park - Aquatics Centre", @"Cycling - Track | Olympic Park - Velodrome", @"Athletics | Olympic Park - Olympic Stadium", @"Table Tennis | ExCeL", @"Triathlon | Hyde Park", @"Sailing | Weymouth and Portland, Dorset", @"Wrestling - Greco-Roman | ExCeL", @"Volleyball | Earls Court", @"Handball | Olympic Park - Handball Arena", @"Hockey | Olympic Park - Hockey Centre", @"Basketball | Olympic Park - Basketball Arena", @"Gymnastics - Artistic | North Greenwich Arena", @"Water Polo | Olympic Park - Water Polo Arena", @"Synchronised Swimming | Olympic Park - Aquatics Centre", @"Weightlifting | ExCeL", @"Table Tennis | ExCeL", @"Cycling - Track | Olympic Park - Velodrome", @"Handball | Olympic Park - Handball Arena", @"Football | Wembley Stadium", @"Beach Volleyball | Horse Guards Parade", @"Wrestling - Greco-Roman | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Athletics | Olympic Park - Olympic Stadium", @"Weightlifting | ExCeL", @"Volleyball | Earls Court", @"Hockey | Olympic Park - Hockey Centre", @"Diving | Olympic Park - Aquatics Centre", @"Football | Old Trafford, Manchester", @"Basketball | Olympic Park - Basketball Arena", @"Handball | Olympic Park - Handball Arena", @"Boxing | ExCeL", @"Beach Volleyball | Horse Guards Parade", nil];
	NSDictionary *August07DictSub = [NSDictionary dictionaryWithObject:August07ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August08ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Taekwondo | ExCeL", @"Canoe Sprint | Eton Dorney, Buckinghamshire", @"Athletics | Olympic Park - Olympic Stadium", @"Table Tennis | ExCeL", @"Handball | Olympic Park - Basketball Arena", @"Sailing | Weymouth and Portland, Dorset", @"Equestrian - Jumping | Greenwich Park", @"Wrestling - Freestyle | ExCeL", @"Boxing | ExCeL", @"Basketball | North Greenwich Arena", @"Volleyball | Earls Court", @"Water Polo | Olympic Park - Water Polo Arena", @"Handball | Olympic Park - Basketball Arena", @"Taekwondo | ExCeL", @"Cycling - BMX | Olympic Park - BMX Circuit", @"Table Tennis | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Wrestling - Freestyle | ExCeL", @"Handball | Olympic Park - Basketball Arena", @"Athletics | Olympic Park - Olympic Stadium", @"Water Polo | Olympic Park - Water Polo Arena", @"Diving | Olympic Park - Aquatics Centre", @"Beach Volleyball | Horse Guards Parade", @"Volleyball | Earls Court", @"Taekwondo | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Basketball | North Greenwich Arena", @"Boxing | ExCeL", @"Handball | Olympic Park - Basketball Arena", nil];
	NSDictionary *August08DictSub = [NSDictionary dictionaryWithObject:August08ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August09ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Taekwondo | ExCeL", @"Athletics | Olympic Park - Olympic Stadium", @"Canoe Sprint | Eton Dorney, Buckinghamshire", @"Diving | Olympic Park - Aquatics Centre", @"Swimming - Marathon | Hyde Park", @"Sailing | Weymouth and Portland, Dorset", @"Gymnastics - Rhythmic | Wembley Arena", @"Equestrian - Dressage | Greenwich Park", @"Wrestling - Freestyle | ExCeL", @"Football | City of Coventry Stadium, Coventry", @"Water Polo | Olympic Park - Water Polo Arena", @"Volleyball | Earls Court", @"Taekwondo | ExCeL", @"Synchronised Swimming | Olympic Park - Aquatics Centre", @"Cycling - BMX | Olympic Park - BMX Circuit", @"Hockey | Olympic Park - Hockey Centre", @"Boxing | ExCeL", @"Basketball | North Greenwich Arena", @"Handball | Olympic Park - Basketball Arena", @"Wrestling - Freestyle | ExCeL", @"Athletics | Olympic Park - Olympic Stadium", @"Water Polo | Olympic Park - Water Polo Arena", @"Diving | Olympic Park - Aquatics Centre", @"Beach Volleyball | Horse Guards Parade", @"Volleyball | Earls Court", @"Football | Wembley Stadium", @"Taekwondo | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Handball | Olympic Park - Basketball Arena", @"Basketball | North Greenwich Arena", nil];
	NSDictionary *August09DictSub = [NSDictionary dictionaryWithObject:August09ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August10ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Taekwondo | ExCeL", @"Canoe Sprint | Eton Dorney, Buckinghamshire", @"Swimming - Marathon | Hyde Park", @"Sailing | Weymouth and Portland, Dorset", @"Gymnastics - Rhythmic | Wembley Arena", @"Wrestling - Freestyle | ExCeL", @"Boxing | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Volleyball | Earls Court", @"Taekwondo | ExCeL", @"Synchronised Swimming | Olympic Park - Aquatics Centre", @"Cycling - BMX | Olympic Park - BMX Circuit", @"Hockey | Olympic Park - Hockey Centre", @"Basketball | North Greenwich Arena", @"Handball | Olympic Park - Basketball Arena", @"Wrestling - Freestyle | ExCeL", @"Water Polo | Olympic Park - Water Polo Arena", @"Diving | Olympic Park - Aquatics Centre", @"Athletics | Olympic Park - Olympic Stadium", @"Volleyball | Earls Court", @"Football | Millennium Stadium, Cardiff", @"Taekwondo | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Handball | Olympic Park - Basketball Arena", @"Boxing | ExCeL", @"Boxing | ExCeL", nil];
	NSDictionary *August10DictSub = [NSDictionary dictionaryWithObject:August10ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August11ArraySub = [NSArray arrayWithObjects:@"Hockey | Olympic Park - Hockey Centre", @"Taekwondo | ExCeL", @"Modern Pentathlon | Olympic Park - Handball Arena, Aquatics Centre", @"Athletics - Race Walk | The Mall", @"Canoe Sprint | Eton Dorney, Buckinghamshire", @"Diving | Olympic Park - Aquatics Centre", @"Volleyball | Earls Court", @"Sailing | Weymouth and Portland, Dorset", @"Cycling - Mountain Bike | Hadleigh Farm, Essex", @"Wrestling - Freestyle | ExCeL", @"Gymnastics - Rhythmic | Wembley Arena", @"Taekwondo | ExCeL", @"Football | Wembley Stadium", @"Modern Pentathlon | Greenwich Park", @"Hockey | Olympic Park - Hockey Centre", @"Basketball | North Greenwich Arena", @"Handball | Olympic Park - Basketball Arena", @"Athletics - Race Walk | The Mall", @"Wrestling - Freestyle | ExCeL", @"Volleyball | Earls Court", @"Athletics | Olympic Park - Olympic Stadium", @"Taekwondo | ExCeL", @"Hockey | Olympic Park - Hockey Centre", @"Handball | Olympic Park - Basketball Arena", @"Diving | Olympic Park - Aquatics Centre", @"Boxing | ExCeL", @"Basketball | North Greenwich Arena", nil];
	NSDictionary *August11DictSub = [NSDictionary dictionaryWithObject:August11ArraySub forKey:@"listOfItemsSub"];
	
	NSArray *August12ArraySub = [NSArray arrayWithObjects:@"Modern Pentathlon | Olympic Park - Handball Arena, Aquatics Centre", @"Wrestling - Freestyle | ExCeL", @"Volleyball | Earls Court", @"Water Polo | Olympic Park - Water Polo Arena", @"Basketball | North Greenwich Arena", @"Handball | Olympic Park - Basketball Arena", @"Athletics - Marathon | The Mall", @"Wrestling - Freestyle | ExCeL", @"Volleyball | Earls Court", @"Gymnastics - Rhythmic | Wembley Arena", @"Cycling - Mountain Bike | Hadleigh Farm, Essex", @"Boxing | ExCeL", @"Modern Pentathlon | Greenwich Park", @"Water Polo | Olympic Park - Water Polo Arena", @"Basketball | North Greenwich Arena", @"Handball | Olympic Park - Basketball Arena", @"Ceremonies | Olympic Park - Olympic Stadium", nil];
	NSDictionary *August12DictSub = [NSDictionary dictionaryWithObject:August12ArraySub forKey:@"listOfItemsSub"];
	
	[listOfItemsSub addObject:July25DictSub];
	[listOfItemsSub addObject:July26DictSub];
	[listOfItemsSub addObject:July27DictSub];
	[listOfItemsSub addObject:July28DictSub];
	[listOfItemsSub addObject:July29DictSub];
	[listOfItemsSub addObject:July30DictSub];
	[listOfItemsSub addObject:July31DictSub];
	[listOfItemsSub addObject:August01DictSub];
	[listOfItemsSub addObject:August02DictSub];
	[listOfItemsSub addObject:August03DictSub];
	[listOfItemsSub addObject:August04DictSub];
	[listOfItemsSub addObject:August05DictSub];
	[listOfItemsSub addObject:August06DictSub];
	[listOfItemsSub addObject:August07DictSub];
    [listOfItemsSub addObject:August08DictSub];
    [listOfItemsSub addObject:August09DictSub];
    [listOfItemsSub addObject:August10DictSub];
    [listOfItemsSub addObject:August11DictSub];
    [listOfItemsSub addObject:August12DictSub];

	
	//Initialize the copy array.
	copyListOfItems = [[NSMutableArray alloc] init];
	
	//Set the title
	self.navigationItem.title = @"Countries";
	
	//Add the search bar
	searchBar.autocorrectionType = UITextAutocorrectionTypeNo;
	
	searching = NO;
	letUserSelectRow = YES;
	
	
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}

#pragma mark Table view methods

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
	if (searching)
		return 1;
	else
		return [listOfItems count];
}

// Customize the number of rows in the table view.
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	
	if (searching)
		return [copyListOfItems count];
	else {
		
		//Number of rows it should expect should be based on the section
		NSDictionary *dictionary = [listOfItems objectAtIndex:section];
		NSArray *array = [dictionary objectForKey:@"Countries"];
		return [array count];
	}
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
	
	if (section == 0)
	{
		return @"25th July 2012";
	}
	if (section == 1)
	{
		return @"26th July 2012";
	}
	if (section == 2)
	{
		return @"27th July 2012";
	}
	if (section == 3)
	{
		return @"28th July 2012";
	}
	if (section == 4)
	{
		return @"29th July 2012";
	}
	if (section == 5)
	{
		return @"30th July 2012";
	}
	if (section == 6)
	{
		return @"31st July 2012";
	}
	if (section == 7)
	{
		return @"1st August 2012";
	}
	if (section == 8)
	{
		return @"2nd August 2012";
	}
	if (section == 9)
	{
		return @"3rd August 2012";
	}
	if (section == 10)
	{
		return @"4th August 2012";
	}
	if (section == 11)
	{
		return @"5th August 2012";
	}
	if (section == 12)
	{
		return @"6th August 2012";
	}
	if (section == 13)
	{
		return @"7th August 2012";
	}
	if (section == 14)
	{
		return @"8th August 2012";
	}
	if (section == 15)
	{
		return @"9th August 2012";
	}
	if (section == 16)
	{
		return @"10th August 2012";
	}
	if (section == 17)
	{
		return @"11th August 2012";
	}
	if (section == 18)
	{
		return @"12th August 2012";
	}
}



// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
	
	if(cell == nil)
	{
		cell = [self getCellContentView:CellIdentifier];
		[cell setSelectionStyle:UITableViewCellSelectionStyleNone];
	}

	UILabel *lblTemp1 = (UILabel *)[cell viewWithTag:1];
	UILabel *lblTemp2 = (UILabel *)[cell viewWithTag:2];
	
	
		
		//First get the dictionary object
	NSDictionary *dictionary = [listOfItems objectAtIndex:indexPath.section];
	NSDictionary *dictionary2 = [listOfItemsSub objectAtIndex:indexPath.section];


	NSArray *array = [dictionary objectForKey:@"Countries"];
	NSString *cellValue = [array objectAtIndex:indexPath.row];
	NSArray *array2 = [dictionary2 objectForKey:@"listOfItemsSub"];
	NSString *cellValue2 = [array2 objectAtIndex:indexPath.row];
		
	lblTemp1.text = cellValue;
	lblTemp2.text = cellValue2;
	
		
	[cellValue release];
	[cellValue2 release];
	
	
    return cell;
}

- (UITableViewCell *) getCellContentView:(NSString *)cellIdentifier {
	
	CGRect CellFrame = CGRectMake(0, 0, 300, 60);
	CGRect Label1Frame = CGRectMake(10, 10, 290, 25);
	CGRect Label2Frame = CGRectMake(10, 33, 290, 25);
	UILabel *lblTemp;
	
	UITableViewCell *cell = [[[UITableViewCell alloc] initWithFrame:CellFrame reuseIdentifier:cellIdentifier] autorelease];
	
	//Initialize Label with tag 1.
	lblTemp = [[UILabel alloc] initWithFrame:Label1Frame];
	lblTemp.tag = 1;
	lblTemp.font = [UIFont boldSystemFontOfSize:13];
	[cell.contentView addSubview:lblTemp];
	[lblTemp release];
	
	//Initialize Label with tag 2.
	lblTemp = [[UILabel alloc] initWithFrame:Label2Frame];
	lblTemp.tag = 2;
	lblTemp.font = [UIFont boldSystemFontOfSize:8];
	//lblTemp.textColor = [UIColor lightGrayColor];
	[cell.contentView addSubview:lblTemp];
	[lblTemp release];
	
	return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
	
	return 60;
}


- (NSIndexPath *)tableView :(UITableView *)theTableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	if(letUserSelectRow)
		return indexPath;
	else
		return nil;
	
	
}

- (UITableViewCellAccessoryType)tableView:(UITableView *)tableView accessoryTypeForRowWithIndexPath:(NSIndexPath *)indexPath {
	
	//return UITableViewCellAccessoryDetailDisclosureButton;
	//return UITableViewCellAccessoryDisclosureIndicator;
	return UITableViewCellAccessoryNone;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
	
	[self tableView:tableView didSelectRowAtIndexPath:indexPath];
}

#pragma mark -
#pragma mark Search Bar 

- (void) searchBarTextDidBeginEditing:(UISearchBar *)theSearchBar {
	
	//This method is called again when the user clicks back from teh detail view.
	//So the overlay is displayed on the results, which is something we do not want to happen.
	if(searching)
		return;
	
	//Add the overlay view.
		searching = YES;
	letUserSelectRow = NO;
	
	//Add the done button.
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] 
											   initWithBarButtonSystemItem:UIBarButtonSystemItemDone 
											   target:self action:@selector(doneSearching_Clicked:)] autorelease];
	
}


- (void) searchBarSearchButtonClicked:(UISearchBar *)theSearchBar {
	
	[self searchTableView];
}

- (void) searchTableView {
	
	NSString *searchText = searchBar.text;
	NSMutableArray *searchArray = [[NSMutableArray alloc] init];
	
	for (NSDictionary *dictionary in listOfItems)
	{
		NSArray *array = [dictionary objectForKey:@"Countries"];
		[searchArray addObjectsFromArray:array];
	}
	
	for (NSString *sTemp in searchArray)
	{
		NSRange titleResultsRange = [sTemp rangeOfString:searchText options:NSCaseInsensitiveSearch];
		
		if (titleResultsRange.length > 0)
			[copyListOfItems addObject:sTemp];
	}
	
	[searchArray release];
	searchArray = nil;
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView {
	
	NSMutableArray *tempArray = [[NSMutableArray alloc] init];
	[tempArray addObject:@"25/07"];
	[tempArray addObject:@"26/07"];
	[tempArray addObject:@"27/07"];
	[tempArray addObject:@"28/07"];
	[tempArray addObject:@"29/07"];
	[tempArray addObject:@"30/07"];
	[tempArray addObject:@"31/07"];
	[tempArray addObject:@"01/08"];
	[tempArray addObject:@"02/08"];
	[tempArray addObject:@"03/08"];
	[tempArray addObject:@"04/08"];
	[tempArray addObject:@"05/08"];
	[tempArray addObject:@"06/08"];
	[tempArray addObject:@"07/08"];
	[tempArray addObject:@"08/08"];
	[tempArray addObject:@"09/08"];
	[tempArray addObject:@"10/08"];
	[tempArray addObject:@"11/08"];
	[tempArray addObject:@"12/08"];
	
	return tempArray;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
	
	return index;
}



- (void)dealloc {
	
	[copyListOfItems release];
	[searchBar release];
	[listOfItems release];
	[listOfItemsSub release];
    [super dealloc];
}

@end
