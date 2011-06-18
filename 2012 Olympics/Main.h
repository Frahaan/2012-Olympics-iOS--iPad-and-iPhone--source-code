//
//  Main.h
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface Main : UIView {

	IBOutlet UIView *mainView;
	IBOutlet UIView *infoView;
	IBOutlet UIScrollView *eventsScrollView;
	IBOutlet UIScrollView *infoScrollView;
	
	IBOutlet UILabel *lbltitle;
	IBOutlet UIImageView *imgIcon;
	IBOutlet UITextView *txtInfo1;
	IBOutlet UITextView *txtKey;
	
	IBOutlet UITextView *txtInfo3;
	IBOutlet UITextView *txtInfo4;
	IBOutlet UILabel *lblOlympic;

}

-(IBAction) gotoArchery;
-(IBAction) gotoAthletics;
-(IBAction) gotoBadminton;
-(IBAction) gotoBasketball;
-(IBAction) gotoBeach;
-(IBAction) gotoBoxing;
-(IBAction) gotoCanoe1;
-(IBAction) gotoCanoe2;
-(IBAction) gotoCycling1;
-(IBAction) gotoCycling2;
-(IBAction) gotoCycling3;
-(IBAction) gotoCycling4;
-(IBAction) gotoDiving;
-(IBAction) gotoEquestrian1;
-(IBAction) gotoEquestrian2;
-(IBAction) gotoEquestrian3;
-(IBAction) gotoFencing;
-(IBAction) gotoFootball;
-(IBAction) gotoGymnastics1;
-(IBAction) gotoGymnastics2;
-(IBAction) gotoGymnastics3;
-(IBAction) gotoHandball;
-(IBAction) gotoHockey;
-(IBAction) gotoJudo;
-(IBAction) gotoModern;
-(IBAction) gotoRowing;
-(IBAction) gotoSailing;
-(IBAction) gotoShooting;
-(IBAction) gotoSwimming;
-(IBAction) gotoSynchronisedSwimming;
-(IBAction) gotoTableTennis;
-(IBAction) gotoTaekwondo;
-(IBAction) gotoTennis;
-(IBAction) gotoTriathlon;
-(IBAction) gotoVolleyball;
-(IBAction) gotoWaterPolo;
-(IBAction) gotoWeightlifting;
-(IBAction) gotoWrestling;


-(IBAction) goBack;


@end
