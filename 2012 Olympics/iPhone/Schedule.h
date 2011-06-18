//
//  Schedule.h
//  2012 Olympics
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Schedule : UIViewController <UITableViewDelegate, UITableViewDataSource>{
	
	NSMutableArray *listOfItemsSub;
	NSMutableArray *listOfItems;
	NSMutableArray *copyListOfItems;
	IBOutlet UISearchBar *searchBar;
	BOOL searching;
	BOOL letUserSelectRow;
	
}

- (UITableViewCell *) getCellContentView:(NSString *)cellIdentifier;
- (void) searchTableView;
- (void) doneSearching_Clicked:(id)sender;@end
