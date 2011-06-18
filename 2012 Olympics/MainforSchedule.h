//
//  MainforSchedule.h
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Main : UIView {
    IBOutlet UIScrollView *eventsScrollView;
    IBOutlet UIView *infoView;
    IBOutlet UIView *mainView;
}
- (IBAction)gotoInfoView;
@end
