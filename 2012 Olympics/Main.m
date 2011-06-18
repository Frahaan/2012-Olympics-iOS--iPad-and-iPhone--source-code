//
//  Main.m
//
//  Created by Frahaan Hussain on 29/03/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Main.h"

@implementation Main

-(void)awakeFromNib
{
	infoScrollView.contentSize = CGSizeMake(320, 3750);
	eventsScrollView.contentSize = CGSizeMake(320, 3760);
	[self addSubview:mainView];

}

-(IBAction) gotoArchery
{
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType: @"gif"]];
	lbltitle.text = @"";
	txtInfo1.text = @"";
	
	txtKey.text = @"";
	
	txtInfo3.text = @"";
	lblOlympic.text = @"";
	txtInfo4.text = @"";
	
	
	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"archery" ofType: @"gif"]];
	lbltitle.text = @"Archery";
	txtInfo1.text = @"Held at Lord’s Cricket Ground, the Archery competition at the London 2012 Olympic Games will call for pinpoint precision and nerves of steel.";

	txtKey.text = @"Venue: Lord's Cricket Ground\n\nDates: Friday 27 July – Friday 3 August\n\nMedal events: 4\n\nAthletes: 128 (64 men, 64 women)\n\nArchery dates back around 10,000 years, when bows and arrows were first used for hunting and warfare, before it developed as a competitive activity in medieval England. A tense and testing sport that requires immense reserves of skill and nerve, Archery is now practised in more than 140 countries around the world.";
	
	txtInfo3.text = @"The object of the sport is simple: to shoot arrows as close to the centre of a target as possible. Olympic Archery targets are 122 centimetres in diameter, with the gold ring at the centre (worth a maximum 10 points) measuring just 12.2cm. Archers shoot at the target from a distance of 70 metres. At the Olympic Games, the two individual Archery competitions (one for men, one for women) will be played in a knockout format. Matches will be played over the best of five sets, with each set consisting of three arrows per archer. The winners of each match will qualify for the next round, until the last two archers go head to head in the gold medal match. A knockout format will also be used for the men’s and women’s team competitions, which features teams of three archers competing against each other in a best-of-24-arrows format.";
	lblOlympic.text = @"Olympic Archery, past and present";
	txtInfo4.text = @"Archery made its Olympic debut at Paris 1900, was dropped from the programme after the 1908 Games, and then returned for a single appearance in 1920. After a 52-year gap, the sport was reintroduced at Munich 1972 and has remained on the Olympic programme ever since. For London 2012, the Archery competition will connect the old with the new at Lord’s Cricket Ground. During the knockout phase, archers will shoot from in front of the 19th-century Pavilion across the hallowed cricket square towards the modern Media Centre.";
	 
}

-(IBAction) gotoAthletics
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"athletics" ofType: @"gif"]];
	lbltitle.text = @"Athletics";
	txtInfo1.text = @"One of the most popular sports that will feature at the London 2012 Olympic Games is also the biggest: Athletics features 2,000 athletes running, walking, jumping and throwing for gold.";
	
	txtKey.text = @"Venue: Olympic Stadium – Olympic Park (track, field and combined events); The Mall (road events)\n\nDates: Friday 3 August – Sunday 12 August\n\nMedal events: 47\n\nAthletes: 2,000\n\nAthletics is the perfect expression of the Olympic motto ‘Citius, Altius, Fortius’ (‘Faster, Higher, Stronger’) – the competition requires athletes to run faster, throw further, jump higher and leap longer than their rivals. With 2,000 athletes competing in 47 events, Athletics is the largest single sport at the Games. ";
	
	txtInfo3.text = @"There are four main strands to the Athletics competition: track events, such as the 100m; field events, which include the High Jump and the Shot Put; combined events such as the Decathlon, a mix of track and field elements; and road events, among them the Marathon.\n\nStaged in the brand new Olympic Stadium, the 24 track events (12 for men, 12 for women) will be held over distances ranging from 100m to 10,000m. Some events will also feature obstacles to negotiate, as in the 400m Hurdles and the 3000m Steeplechase. The majority of track events begin with one or more rounds of heats, with the best athletes eventually qualifying for the final.\n\nThere will be five road events on the Athletics programme at the London 2012 Olympic Games: the men’s and women’s Marathons, the men’s and women’s 20km Race Walks, and the men’s 50km Race Walk. All five road events will be held on the streets of Central London, finishing at The Mall. There are no heats: all road events consist of a single race.\n\nThe 16 field events fall into two categories: four throwing events for both men and women, namely the Shot Put, Javelin, Discus and Hammer, and four jumping events, also for both men and women. In the High Jump and the Pole Vault, athletes aim to jump higher than their rivals; in the Long Jump and Triple Jump, they try to jump further. Field events at the Games start with a qualification stage, with the best athletes qualifying for the final.\n\nFinally, there are the two combined events: Decathlon for men and Heptathlon for women. During each competition, athletes take part in a range of running, jumping and throwing elements (10 for men, seven for women), with points awarded for their performances in each. ";
	lblOlympic.text = @"Olympic Athletics, past and present";
	txtInfo4.text = @"The ancient Olympic Games featured the ‘stadium’ race, a sprint of roughly 192 metres. Winners in this event have been recorded as far back as 776 BC. The first modern Olympic Games in 1896 included a Marathon, which was designed specifically to pay homage to Ancient Greece.\n\nIn 1908, the race’s distance was extended from around 25 miles to 26.2 miles (42.195 kilometres) so that it finished in front of the Royal Box. This distance became standard for the Marathon and is still used today.\n\nFor London 2012, all non-road Athletics events will be held at the Olympic Stadium in the new Olympic Park. This state-of-the-art venue, which will have a capacity of 80,000 during the Games, will also host the Opening and Closing Ceremonies.";
	
}

-(IBAction) gotoBadminton
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"badminton" ofType: @"gif"]];
	lbltitle.text = @"Badminton";
	txtInfo1.text = @"Badminton players at the London 2012 Olympic Games will need lightning-fast reactions if they’re to keep up with shuttlecocks travelling at speeds in excess of 400km/h.";
	
	txtKey.text = @"Venue: Wembley Arena\n\nDates: Saturday 28 July – Sunday 5 August\n\nMedal events: 5\n\nAthletes: 172\n\nDuring the 19th century, British military officers in the Indian town of Poona added a net to the ancient game of battledore (meaning ‘bat’) and shuttlecock, and named this new game after the town.\n\nThe sport of Poona was eventually brought back home by the officers, and was played at the Duke of Beaufort’s Gloucestershire residence in 1873. The residence was (and is still) called Badminton House, which is how this thrilling sport got the name used today.";
	
	txtInfo3.text = @"Badminton is played on a rectangular court split in half by a central net, with singles and doubles events on the Olympic Games programme. Olympic shuttlecocks weigh between 4.74 grams and 5.5g and contain 16 feathers, each plucked from the left wing of a goose. They can travel at speeds in excess of 400km/h.\n\nMatches are played over the best of three games, and each game is won by the first player or doubles pair to reach 21 points by a margin of two clear points. However, if the score reaches 29-29, the winner of the next point wins the game.\n\nAt London 2012, there will be five medal events: men’s and women’s Singles, men’s and women’s Doubles, and Mixed Doubles. All events will begin with a preliminary stage: the competitors will be divided into groups, and each player and doubles pair will play everyone else in their group.\n\nThe best players and doubles pairs from this stage (16 in each Singles event, eight pairs in each Doubles event) will qualify for the knockout stage of the competition, which will eventually decide the winners of the medals.";
	lblOlympic.text = @"Olympic Badminton, past and present";
	txtInfo4.text = @"One of the most dynamic Olympic sports, Badminton made its full Olympic debut at Barcelona 1992. Although the rules of the modern sport were developed in England, Asian countries now dominate: China, Indonesia and South Korea have won 23 of the 24 gold medals awarded since the sport’s first appearance at the Games.\n\nThe London 2012 Badminton competition will be held at Wembley Arena, on a site that has hosted major events ever since the British Empire Exhibition opened there in 1924.";
}

-(IBAction) gotoBasketball
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"basketball" ofType: @"gif"]];
	lbltitle.text = @"Basketball";
	txtInfo1.text = @"At the London 2012 Olympic Games, one of the world’s most popular and fastest-growing team sports will be showcased at the Basketball Arena and North Greenwich Arena.";
	
	txtKey.text = @"Venues: Basketball Arena – Olympic Park (preliminaries, women’s quarter-finals); North Greenwich Arena (men’s quarter-finals and women’s semi-finals onwards)\n\nDates: Saturday 28 July – Sunday 12 August\n\nMedal events: 2\n\nAthletes: 288 (144 men, 144 women, 12 teams in each event).\n\nBasketball was invented in 1891 by Dr James Naismith, a Canadian physical education teacher who wanted to create a game that could be played indoors during the winter by his students at the YMCA in Springfield, Massachusetts.\n\nThe first game, which took place in December 1891, used peach baskets for goals. In the 120 years since these humble beginnings, basketball has grown into one of the most exciting and popular team sports in the world.";
	
	txtInfo3.text = @"Basketball is played by two teams of five players on an indoor court that is 28 metres long and 15m wide. Points are scored by shooting the ball into your opponents’ net (or 'basket'), which has a diameter of 450-459mm and sits on a backboard 3.05m above the floor.Two points are awarded for a regular shot from open play, with one point for each successful free throw (following an opposition infringement) and three points for a shot from distance (beyond what’s known as the three-point line, 6.75m from the basket). Games last for 40 minutes, split into four 10-minute quarters.\n\nAt London 2012, both the men’s and women’s Basketball competitions will begin with a preliminary stage: the 12 teams will be divided into two groups of six, and each team will play every other team in their group. The best eight teams during the preliminaries will qualify for the knockout stage, with the winners of the semi-finals going head-to-head in the gold medal game.";
	lblOlympic.text = @"Olympic Basketball, past and present";
	txtInfo4.text = @"Men’s Basketball first appeared on the Olympic programme at the Berlin 1936 Games, with the women’s event introduced at Montreal 1976. Professional players first competed at the Barcelona 1992, when the famous US ‘Dream Team’ won gold in the men’s event.\n\nAt London 2012, the Basketball competition will take place in two venues. All preliminary games, along with the women’s quarter-finals, will take place at the Basketball Arena, a new, purpose-built venue in the Olympic Park. The men’s quarter-finals, plus all semi-finals and medal games, will be held at the state-of-the-art North Greenwich Arena just across the Thames.";
	
}

-(IBAction) gotoBeach
{
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType: @"gif"]];
	lbltitle.text = @"";
	txtInfo1.text = @"";
	
	txtKey.text = @"";
	
	txtInfo3.text = @"";
	lblOlympic.text = @"";
	txtInfo4.text = @"";
	
	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"beach-volleyball" ofType: @"gif"]];
	lbltitle.text = @"Beach Volleyball";
	txtInfo1.text = @"Teams of two will serve, bump and spike their way towards gold at the London 2012 Olympic Games Beach Volleyball competition, held in the heart of the capital.";
	
	txtKey.text = @"Venue: Horse Guards Parade\n\nDates: Saturday 28 July – Thursday 9 August\n\nMedal events: 2\n\nAthletes: 96 (48 men, 48 women; 24 teams in each event)\n\nBeach Volleyball came of age on the sun-soaked beaches of Santa Monica, California, during the 1920s. The event now regarded as the first Beach Volleyball World Championships was held in the state in 1976, and was even won by a pair of Californians (Greg Lee and Jim Menges). However, over the last three decades, the sport has moved far beyond its West Coast roots and is now played all over the world.";
	
	txtInfo3.text = @"Beach Volleyball is similar to the indoor game, which also features on the Olympic programme, but with two main differences. The court, which measures 16 x 8 metres, is covered in sand and situated outdoors; and the game is played by teams of two, instead of teams of six.\n\nThe object of the sport is to land the ball in the opposition’s half of the court. After the serve, each team is allowed three touches of the ball before it must cross over the net – set at a height of 2.43m for men and 2.24m for women – to the opposition. Matches are the best of three sets, with 21 points needed to win a set (15 in the third and deciding set).\n\nAt London 2012, both the men’s and women’s Beach Volleyball events will begin with a preliminary phase: the 24 teams in each event will be divided into six pools of four, and each team will play every other team in their pool. A total of 16 teams from this phase will qualify for the knockout phase, with the winners of the semi-finals eventually going head-to-head for the gold.";
	lblOlympic.text = @"Olympic Beach Volleyball, past and present";
	txtInfo4.text = @"Beach Volleyball made its Olympic debut at Atlanta 1996. Since then it has become one of the most popular spectator sports at the Games. The London 2012 competition will be held at a special temporary arena on Horse Guards Parade, just steps from Trafalgar Square, which will be covered in 3,000 tonnes of sand.";
}

-(IBAction) gotoBoxing
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"boxing" ofType: @"gif"]];
	lbltitle.text = @"Boxing";
	txtInfo1.text = @"At the London 2012 Games, the ever-popular men’s Boxing events will be joined on the Olympic programme by a women’s competition for the first time.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Saturday 28 July – Sunday 12 August\n\nMedal events: 13\n\nAthletes: 286 (250 men, 36 women)\n\nBoxing featured at the original Olympic Games in the 7th century BC, when opponents fought with strips of leather wrapped around their fists. The sport’s regulations were codified in 1867 as the Marquess of Queensberry Rules, named in honour of the nobleman who endorsed them. The essence of these rules is still in place today, governing this perennially exciting and dramatic Olympic sport. ";
	
	txtInfo3.text = @"The Olympic Boxing competition will feature 10 men’s weight categories, from Light Fly Weight (46-49kg) to Super Heavy Weight (over 91kg). At London 2012, women’s Boxing will feature as a full Olympic medal event for the first time, with medals in three weights: Fly Weight (48-51kg), Light Weight (57-60kg) and Middle Weight (69-75kg).\n\nIn the Olympic Games, men’s bouts take place over three three-minute rounds, with women’s bouts held over four rounds of two minutes each. Boxers score points for every punch they land successfully on their opponent’s head or upper body.\n\nAt London 2012, all Boxing events will be run in a knockout format. The winners of the two semi-finals in each weight category will fight for the gold medal, with the losers of the two semi-finals each awarded a bronze.";
	lblOlympic.text = @"Olympic Boxing, past and present";
	txtInfo4.text = @"Since the first Olympic Boxing competition in 1904, many of the sport’s biggest names have come to prominence at the Games: Cassius Clay (later known as Muhammad Ali; 1960), George Foreman (1968) and Oscar de la Hoya (1992) have all won Olympic gold in the past.\n\nAt London 2012, the Boxing competition will be held at ExCeL, a multi-purpose events venue that will also host a number of other Olympic and Paralympic sports.";
}

-(IBAction) gotoCanoe1
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"canoe-slalom" ofType: @"gif"]];
	lbltitle.text = @"Canoe Slalom";
	txtInfo1.text = @"During the London 2012 Games, the Canoe Slalom competition will call for speed and precision on the daunting white water rapids at the new Lee Valley White Water Centre.";
	
	txtKey.text = @"Venue: Lee Valley White Water Centre\n\nDates: Sunday 29 July – Thursday 2 August\n\nMedal events: 4\n\nAthletes: 82\n\nModelled on slalom skiing, the first Canoe Slalom competition was held in Switzerland in 1932. The sport was staged on flat water during its early days, but was later switched to white water rapids.\n\nSince becoming a permanent part of the Olympic programme 20 years ago in Barcelona, the sport has thrilled spectators at the Games with spectacular, non-stop action on the powerful, unforgiving water.";
	
	txtInfo3.text = @"Canoe Slalom competitions consist of timed runs down a white water course, which contains up to 25 gates. Touching a gate adds a two-second time penalty to the run; missing a gate incurs a 50-second penalty. The time taken to run the course in seconds is added to penalty seconds incurred to give the overall time.\n\nIn canoe single (for one person) and canoe double (for two people) events, competitors use single-bladed paddles; in kayaks, competitors use paddles with blades at both ends. While the boats used in Canoe Sprint events are long and streamlined, Canoe Slalom boats are small, light and agile. The different shape allows for greater manoeuvrability through the rapids.";
	lblOlympic.text = @"Olympic Canoe Slalom, past and present";
	txtInfo4.text = @"Canoe and kayak racing became full medal sports at the 1936 Berlin Games, but Canoe Slalom didn’t make its debut until the 1972 Munich Games and only became a permanent part of the Olympic programme in 1992. At London 2012, the Canoe Slalom competition will be held at Lee Valley White Water Centre, in a new, world-class facility located on the edge of the 1,000-acre River Lee Country Park.";
}

-(IBAction) gotoCanoe2
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"canoe-sprint" ofType: @"gif"]];
	lbltitle.text = @"Canoe Sprint";
	txtInfo1.text = @"Requiring sustained bursts of speed and power, Canoe Sprint at the London 2012 Games will offer thrilling, down-to-the-wire finishes.";
	
	txtKey.text = @"Venue: Eton Dorney\n\nDates: Monday 6 –  Saturday 11 August\n\nMedal events: 12\n\nAthletes: 246\n\nThe histories of the canoe and the kayak go back hundreds of years, but it wasn’t until the middle of the 19th century that the first official canoe and kayak races were held. The sport now takes two forms, the oldest of which is the power-packed, fiercely competitive Canoe Sprint discipline.";
	
	txtInfo3.text = @"Canoe Sprint events are head-to-head races conducted on still water, as opposed to the white water time trials of the Canoe Slalom competition. Athletes race over distances of 200m, 500m or 1,000m, either solo, in pairs or in teams of four.  Athletes use a single-bladed paddle from a kneeling position in canoes, which are steered by the athlete making corrective strokes with their paddle. In kayaks, which are steered using a small rudder, the competitors sit in the boat and use a paddle with two blades.";
	lblOlympic.text = @"Olympic Canoe Sprint, past and present";
	txtInfo4.text = @"Canoeing first featured as a demonstration sport at the 1924 Paris Games. It became a full Olympic sport in 1936, when races were held over of 1,000m and 10,000m. Since then, the Olympic events have grown shorter: the last long-distance events were held at the Melbourne Games of 1956.\n\nFor London 2012, the Canoe Sprint competition will be held at Eton Dorney, one of the best still-water courses in the world with a wonderful location close to Windsor Castle. Races will be held over distances of 1,000m, 500m and, for the first time at the Games, 200m: with the fastest races taking just 30 seconds to complete, it’s bound to be very popular with spectators and athletes alike.";
}

-(IBAction) gotoCycling1
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cycling-bmx" ofType: @"gif"]];
	lbltitle.text = @"Cycling BMX";
	txtInfo1.text = @"The fast and furious sport of BMX will be making only its second Olympic appearance at the London 2012 Games. ";
	
	txtKey.text = @"Venue: BMX Circuit – Olympic Park\n\nDates: Wednesday 8 – Friday 10 August\n\nMedal events: 2\n\nAthletes: 48\n\nBMX (Bicycle Motocross) began to take off in the late 1960s in California, around the time that motocross became popular in the US. The motorised sport was the inspiration for the pedal-powered version, a breathtaking spectacle that’s since become popular all over the world.";
	
	txtInfo3.text = @"The BMX races at London 2012 will be held on a short outdoor track, with the riders starting on an 8m-high ramp. The course is built up with jumps, bumps and tightly banked corners. Following individual time trial seeding rounds, eight riders compete in heats, with each race lasting around 40 seconds.\n\nBMX bikes have only one gear and one brake. Most racing riders use wheels that are 20 inches in diameter, roughly two-thirds the size of wheels used on a standard road bike. Bikes need to be strong enough to endure the wear and tear from the jarring landings after jumps, yet light enough to remain fast and competitive.\n\nThe men's and women's events at London 2012 will both start with a seeding phase: each rider runs the track once to determine the seedings, which ensures that the fastest riders don’t meet before the final. The men’s event continues with the quarter-finals, which are held over five races with groups of eight riders.\n\nPoints are awarded according to places, and the top two riders from the first three races in each quarter-final qualify for the semi-finals. The groups (now six riders in each) race twice more, and the top two riders from each group of six transfer to the semi-finals. From here, the semi-finals in both the men’s and women’s events follow a three-run format: the top four riders from each semi-final advance to the final run, when the medals are decided.";
	lblOlympic.text = @"Olympic BMX Cycling, past and present";
	txtInfo4.text = @"Having made its debut at the Beijing 2008 Games, BMX Cycling is the most recent discipline to have been added to the Olympic programme. The first Olympic BMX gold medals were claimed by Latvia’s Maris Strombergs and France’s Anne-Caroline Chausson.\n\nThe BMX competition at London 2012 will be held at a specially constructed track next to the Velodrome in the Olympic Park, which will have capacity for 6,000 spectators.";
}

-(IBAction) gotoCycling2
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cycling-mountain-bike" ofType: @"gif"]];
	lbltitle.text = @"Cycling Mountain Bike";
	txtInfo1.text = @"Rocky paths, tricky climbs and technical descents will provide plenty of challenges for riders in the Mountain Bike competition.";
	
	txtKey.text = @"Venue: Hadleigh Farm, Essex\n\nDates: Saturday 11 – Sunday 12 August\n\nMedal events: 2\n\nAthletes: 80 (50 men, 30 women)\n\nMuch like BMX, Mountain Biking is a young sport that has risen to worldwide popularity at an amazing rate. Fast, furious and occasionally downright terrifying, the sport developed in northern California during the 1970s. However, it quickly spread from its low-key beginnings and now has a huge following around the globe, which has only grown since its arrival on the Olympic programme in the 1990s.";
	
	txtInfo3.text = @"Cross-country Mountain Bike competitions at the Olympic Games take place over rough and hilly countryside. All riders start together and must complete a set number of laps of the course, with races lasting around one hour and forty-five minutes for both men and women. There are no heats: for both the men’s and women’s events, all competitors start together, and the first rider to cross the finish line wins the gold.\n\nBicycles used in Mountain Bike events are built for speed, durability and comfort, no easy task given the variety of terrain. They need to be quick and light enough to aid climbing through uneven terrain, but sturdy and stable enough to handle descents at extreme speeds.";
	lblOlympic.text = @"Olympic Mountain Biking, past and present";
	txtInfo4.text = @"The first official Mountain Bike World Championships were held as recently as 1990. A mere six years later, cross-country Mountain Biking made its Olympic debut in Atlanta.\n\nAt London 2012, the Mountain Bike competition will take place at Hadleigh Farm in Essex. The newly constructed course, built especially for the Olympic Games, will provide a tough test for competitors from all over the world.";
}

-(IBAction) gotoCycling3
{	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cycling-road" ofType: @"gif"]];
	lbltitle.text = @"Cycling Road";
	txtInfo1.text = @"At London 2012, a quartet of challenging, exciting Road Cycling events will energise the streets of London and Surrey..";
	
	txtKey.text = @"Venue: The Mall (Road Race); Hampton Court (Time Trial)\n\nDates: Saturday 28 July – Wednesday 1 August\n\nMedal events: 4\n\nAthletes: 212 (145 men, 67 women)\n\nAccording to popular legend, the first ever bicycle race was held in Paris in 1868, and was won by a 19-year-old cyclist from Suffolk named James Moore. It goes without saying that the sport has grown since these humble beginnings. More than 140 years after Moore’s triumph, Road Cycling events draw huge crowds and enormous TV audiences around the world, and the four Olympic medal events at London 2012 should see the streets of London and Surrey packed with passionate fans.";
	
	txtInfo3.text = @"The Olympic programme includes two Road Cycling events for both men and women. For the Road Race (approximately 250km for men, 140km for women), all competitors start together, and the first rider to cross the finish line wins gold. For the shorter Time Trial (44km for men, 29km for women), the riders start 90 seconds apart, and the winner is the rider with the fastest time over the course. Great stamina, astute strategy and powerful acceleration are essential to success in both events, with teamwork also playing a big part in the Road Races.\n\nThe men’s and women’s Road Races will begin on The Mall. From here, the riders will head south-west through the city, crossing the Thames at Putney Bridge and continuing out through Richmond Park and past Hampton Court Palace. The Surrey section of the course incorporates several circuits of a challenging loop around Box Hill (nine for the men’s Road Race, two loops for the women’s equivalent), before the riders head north through Leatherhead, Esher, Kingston, Richmond Park and back to The Mall for a dramatic finish.\n\nHeld on 1 August 2012, the Time Trials will begin and end at historic Hampton Court Palace in south-west London, and will incorporate sections of Richmond, Kingston-upon-Thames and Surrey. Both events are held over a single lap, with the variations in the men’s and women’s courses reflecting the different distances.";
	lblOlympic.text = @"Olympic Road Cycling, past and present";
	txtInfo4.text = @"Road Cycling featured at the first modern Olympic Games in 1896, with an 87km race that started and finished in Athens. There was no Road Cycling event at the next three Games, but the discipline was reintroduced in 1912 and has been a permanent part of the Olympic programme ever since.\n\nAt London 2012, the streets are sure to be packed for the four Road Cycling events. With Nicole Cooke planning to defend her Road Race gold medal from the Beijing 2008 Games and Mark Cavendish expected to be among the riders in the men’s equivalent, great British support will be guaranteed at what should be a memorable competition.";
}

-(IBAction) gotoCycling4
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"cycling-track" ofType: @"gif"]];
	lbltitle.text = @"Cycling Track";
	txtInfo1.text = @"At the London 2012 Olympic Games, there will be 10 gold medals up for grabs over six action-packed days in the Track Cycling competition.";
	
	txtKey.text = @"Venue: Velodrome\n\nDates: Thursday 2 – Tuesday 7 August\n\nMedal events: 10\n\nAthletes: 188 (104 men, 84 women)\n\nCycling has a long and fascinating history in the UK. As early as 1870, large crowds were drawn to races held in England on indoor wooden tracks, which closely resembled the velodromes of today.\n\nThanks in part to recent British success in the sport, track cycling is now as popular here as it’s ever been, and is sure to draw huge crowds at London 2012.";
	
	txtInfo3.text = @"There are ten Olympic Track Cycling events (five for men, five for women), which between them test speed, endurance and teamwork. The Sprint consists of a series of three-lap races, with riders racing head-to-head. The Keirin features up to seven riders sprinting for victory, after following a pacing motorcycle at the beginning of the race.\n\nThere will be two team events: the Team Sprint, which is actually similar to a time trial, and the Team Pursuit, held over 16 laps for men and 12 laps for women. Finally, there’s the Omnium. Making its Olympic debut at London 2012, the Omnium features individual riders competing against each other across six different disciplines on the track.";
	lblOlympic.text = @"Olympic Track Cycling, past and present";
	txtInfo4.text = @"Currently enjoying a boom in popularity, the action-packed sport of Track Cycling has featured at every Games but one since the first modern Olympic Games in 1896. At London 2012, Team GB will be looking to add to its dominance on the track at the Beijing 2008 Games, when British cyclists won seven of the 10 gold medals.The London 2012 competition will take place in the new Velodrome, built especially for London 2012 in the Olympic Park. The track in the Velodrome has been laid with 5-metre lengths of Siberian pine, and is banked to an angle of 42 degrees at its steepest point.";
}

-(IBAction) gotoDiving
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"diving" ofType: @"gif"]];
	lbltitle.text = @"Diving";
	txtInfo1.text = @"At the London 2012 Games, Diving requires acrobatic excellence and supreme coordination skills, as athletes dive from heights of up to 10m into the waters below.";
	
	txtKey.text = @"Venue: Aquatics Centre – Olympic Park\n\nDates: Sunday 29 July – Saturday 11 August 2012\n\nMedal events: 8\n\nAthletes: 136 (68 men, 68 women)\n\nCompetitive diving developed from gymnastics in the 18th century, when gymnasts in Sweden and Germany began to perform tumbling routines into water. Along with Swimming, Synchronised Swimming and Water Polo, the elegant yet dramatic sport of Diving is one of four disciplines that make up the Olympic sport of Aquatics.";
	
	txtInfo3.text = @"The eight Olympic diving events – four for men, four for women – feature either a springboard, 3m above the pool, or a fixed platform, set at a height of 10m. Springboards must be at least 4.8m long and 50cm wide, while platforms should be at least 6m long and 3m wide.\n\nJudges award a score out of 10 for each dive, which is adjusted to take into account the dive’s degree of difficulty. In the Synchronised Diving events, pairs of athletes dive in tandem and are also assessed for their level of synchronisation.";
	lblOlympic.text = @"Olympic Diving, past and present";
	txtInfo4.text = @"Diving made its Olympic debut in 1904, where medals were won awarded for men in the 10m Platform and the Plunge for Distance (a Diving long jump event, which never again appeared on the Olympic programme). Synchronised Diving made its first Olympic appearance at Sydney in 2000.\n\nAt London 2012, the Diving competition will take place at the dazzling new Aquatics Centre in the Olympic Park, designed by acclaimed architect Zaha Hadid and built especially for the Games.";
}

-(IBAction) gotoEquestrian1
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"equestrian-dressage" ofType: @"gif"]];
	lbltitle.text = @"Equestrian Dressage";
	txtInfo1.text = @"At the London 2012 Olympic Games, the Dressage events will test the ability of horse and rider to display both athletic prowess and supreme elegance. ";
	
	txtKey.text = @"Venue: Greenwich Park\n\nDates: Thursday 2 August – Wednesday 8 August\n\nMedal events: 2\n\nAthletes: 50\n\nEquestrian sport can be traced back more than 2,000 years, when the Greeks introduced dressage training to prepare their horses for war. Classical dressage reached its peak with the development of the Spanish Riding School in Vienna, which laid the basis for the elegant, graceful sport practised today.";
	
	txtInfo3.text = @"In modern Dressage competitions, the horse and rider perform a series of movements known as a Dressage test. The tests are performed in a 60m x 20m arena before a panel of seven judges, who award scores for individual movements and for the overall routine.\n\nThe Dressage competition consists of a Team event, which includes the Grand Prix and Grand Prix Special rounds, and an Individual event, which includes the Grand Prix, the Grand Prix Special and the Grand Prix Freestyle. The Team and Individual events are conducted simultaneously: a rider’s score in a test may be counted in both events.\n\nIn the Grand Prix and the Grand Prix Special, all riders and horses perform the same tests. After the Grand Prix Special, medals are awarded in the Team event. However, the Individual event continues: the 18 riders with the best scores in the Grand Prix Special then qualify for the Grand Prix Freestyle, for which riders perform their own freestyle routines set to music. The scores in this round decide the winners of the Individual competition.";
	lblOlympic.text = @"Olympic Dressage, past and present";
	txtInfo4.text = @"Equestrian sports first featured on the Olympic programme of the Paris Games in 1900, which included jumping events, but were then absent until the 1912 Games in Stockholm, when Dressage made its first appearance.\n\nAlong with the other Equestrian events at London 2012, the Dressage competition will be held in the beautiful surroundings of Greenwich Park. Dating back to 1433, it’s the oldest Royal Park in London, part of the Maritime Greenwich area that has been designated as a World Heritage Site by UNESCO.";
}

-(IBAction) gotoEquestrian2
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"equestrian-eventing" ofType: @"gif"]];
	lbltitle.text = @"Equestrian Eventing";
	txtInfo1.text = @"Featuring dressage, cross-country and a dramatic jumping finale, the Eventing competition at the London 2012 Games will offer an all-encompassing test of Equestrian skill.";
	
	txtKey.text = @"Venue: Greenwich Park\n\nDates: Saturday 28 July – Tuesday 31 July\n\nMedal events: 2\n\nAthletes: 75\n\nThere are three distinct parts to the Eventing competition: dressage, which illustrates the harmony between horse and rider; cross-country riding, which requires speed, power and nerve; and jumping, which calls for precision, agility and impeccable technique. The combination tests every element of horsemanship, and offers the spectator plenty of excitement along the way.";
	
	txtInfo3.text = @"The Eventing competition takes places over four days. As with all three Equestrian disciplines on the Olympic programme, the competition features both Individual and Team events, and men and women compete against each other on equal terms.\n\nDressage fills the first two days of the Eventing competition. Each horse and rider performs a dressage test in front of a panel of judges. The judges’ scores are converted into penalty points, which are carried forward to the next stage of the competition.\n\nDay 3 is given over to the cross-country test, held over a beautiful but tough course in Greenwich Park containing up to 45 jumps. Every horse/rider combination is given penalty points for jumping errors and time penalties, which are added to any penalty points awarded during the dressage test to give a total score.\n\nThe Eventing competition gets a grandstand finish on Day 4 with the jumping tests (widely known in the UK as ‘show jumping’). Once again, riders and horses are given penalty points for jumping errors and time penalties, which are added to their previous dressage and cross-country scores to determine the overall rankings. The first jumping test will decide the placings in the Team event; after this has been completed, there’s a second jumping test to determine the winners of the Individual competition.";
	lblOlympic.text = @"Olympic Eventing, past and present";
	txtInfo4.text = @"Entry to the various Olympic Equestrian competitions – including Eventing, which made its Olympic debut in 1912 – was originally limited to members of the military. However, at the Helsinki Games of 1952, the competition was broadened to include civilian riders.\n\nAlong with the other Equestrian events at London 2012, the Eventing competition will be held in the beautiful surroundings of Greenwich Park. Dating back to 1433, it’s the oldest Royal Park in London, part of the Maritime Greenwich area that has been designated as a World Heritage Site by UNESCO.";
}

-(IBAction) gotoEquestrian3
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"equestrian-jumping" ofType: @"gif"]];
	lbltitle.text = @"Equestrian Jumping";
	txtInfo1.text = @"At the London 2012 Olympic Games, the Jumping competition will require horse and rider to navigate a short course with precision, speed and perfect technique.";
	
	txtKey.text = @"Venue: Greenwich Park\n\nDates: Saturday 4 – Thursday 9 August\n\nMedal events:  2\n\nAthletes: 75\n\nCommonly known as ‘show jumping’ in the UK, jumping as we know it today developed out of necessity. Until the 18th century, hunters were able to gallop across open fields in pursuit of foxes. But when fences were built in the English countryside during the process of enclosure, riders and horses needed to adapt – and Jumping was born.";
	
	txtInfo3.text = @"The Jumping competition is a tense, exciting test of skill, speed and power. Held in an arena around a short course containing 12-14 fences, the event requires huge reserves of boldness, accuracy and nerves of steel – from both the riders and their horses. As with all three Equestrian disciplines on the Olympic programme, the competition features both Individual and Team events, and men and women compete against each other on equal terms.\n\nThere are a total of five rounds in the Jumping competition. Two of these rounds are used to determine the placings in the Team event, with all five rounds playing a part in the Individual event. If two or more rider/horse combinations are tied for medal places after the fifth and final round of the Individual event, there will be a jump-off to break the tie.";
	lblOlympic.text = @"Olympic Jumping, past and present";
	txtInfo4.text = @"Entry to the various Olympic Equestrian competitions was originally limited to members of the military. However, at the Helsinki Games of 1952, the competition was broadened to include civilian riders.\n\nAlong with the other Equestrian events at London 2012, the Jumping competition will be held in the beautiful surroundings of Greenwich Park. Dating back to 1433, it’s the oldest Royal Park in London, part of the Maritime Greenwich area that has been designated as a World Heritage Site by UNESCO.";
}

-(IBAction) gotoFencing
{	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"fencing" ofType: @"gif"]];
	lbltitle.text = @"Fencing";
	txtInfo1.text = @"The tense, testing sport of Fencing has featured at every Olympic Games of the modern era.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Saturday 28 July – Sunday 5 August\n\nMedal events: 10\n\nAthletes: 212\n\nAlthough sword fighting dates back thousands of years, Fencing as we now understand it really came of age as a sport in the 19th century. A tense, compelling battle of wits and technique, the sport is one of the few to have featured at every modern Olympic Games. ";
	
	txtInfo3.text = @"Three types of weapon are used in Olympic Fencing. In bouts using the Foil and the slightly heavier Epée, hits are scored by hitting an opponent with the tip of the weapon. However, in Sabre, hits may also be scored with the edge of the weapon. Epee allows both fencers to score at the same time while Foil and Sabre have rules of right of way and timing that mean only one fencer can score a hit at a time.\n\nIndividual Fencing bouts last for three rounds of three minutes each, or until one fencer has scored 15 hits against their opponent. In the Team events, teams of three fencers compete against their opponents over a series of nine bouts, with the aim of accumulating a maximum of 45 hits.\n\nAll 10 medal events on the Fencing programme will be run in a knockout format. Players and teams will progress through the draw until the finals, which will decide the winners of the gold medals.";
	lblOlympic.text = @"Olympic Fencing, past and present";
	txtInfo4.text = @"At the first modern Olympic Games of 1896, the Fencing programme consisted of men’s Foil and Sabre events, with the Epée making its debut at Paris 1900. Women’s Fencing first featured at the 1924 Games.\n\nAt London 2012, the Fencing competition will be held at ExCeL, a multi-purpose events venue that will also host a number of other Olympic and Paralympic sports.";
}

-(IBAction) gotoFootball
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"football" ofType: @"gif"]];
	lbltitle.text = @"Football";
	txtInfo1.text = @"Spread across six major grounds around the UK, the London 2012 Olympic Games Football competition promises plenty of excitement.";
	
	txtKey.text = @"Venues: City of Coventry Stadium, (Coventry); Hampden Park (Glasgow); Millennium Stadium (Cardiff); Old Trafford (Manchester); St James' Park (Newcastle); Wembley Stadium\n\nDates: Wednesday 25 July – Saturday 11 August\n\nMedal events: 2\n\nAthletes:  504 (288 men, 216 women; 16 men’s teams and 12 women’s teams).\n\nFootball will be a major feature of the Olympic programme at London 2012. Beginning with group matches and ending with a knockout phase, the competition will offer all the drama that fans have come to expect from major international tournaments. There will be two medal events at London 2012, one for men’s teams and one for women.";
	
	txtInfo3.text = @"The aim of Football, to score more goals than the opposition, is both simple and universally known. Teams of 11 players compete across two 45-minutes halves, with extra time and penalty shootouts used to decide drawn matches during the knockout stages of the competition.\n\nDue to the intense schedule, the Football competition actually kicks off two days before the Olympic Games Opening Ceremony with the first group matches. At London 2012, the men’s competition will be an under-23s event, although each country will be allowed to include three older players in their team. There are no age restrictions for the women’s competition.\n\nBoth the men’s and women’s competitions will begin with a group stage. The teams will be divided into groups of four (three groups in the women’s tournament, four groups for the men), and the best eight teams will qualify for the quarter-finals. From here, the competitions are played to a knockout format: the two winning semi-finalists will play for the gold medal at Wembley, with the two losing semi-finalists facing off for the bronze.";
	lblOlympic.text = @"Olympic Football, past and present";
	txtInfo4.text = @"Football was introduced as a medal sport at the 1908 Olympic Games. Great Britain won the gold medal, then successfully defended their title four years later in Stockholm. The sport has featured at every Olympic Games since, with the exception of Los Angeles 1932.\n\nThe Football competition at London 2012 will be staged at six grounds around the UK, including venues in Wales (Cardiff’s Millennium Stadium) and Scotland (Hampden Park in Glasgow). The finals will take place at Wembley Stadium in London.";
}

-(IBAction) gotoGymnastics1
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"gymnastics-artistic" ofType: @"gif"]];
	lbltitle.text = @"Gymnastics Artistic";
	txtInfo1.text = @"Hugely popular with audiences all over the world, Artistic Gymnastics looks set to draw huge crowds to North Greenwich Arena during the London 2012 Olympic Games. ";
	
	txtKey.text = @"Venue: North Greenwich Arena\n\nDates: Saturday 28 July – Tuesday 7 August\n\nMedal events: 14\n\nAthletes: 196 (98 men, 98 women)\n\nThe grace, strength and skill of Olympic gymnasts have been astonishing audiences since the Games in Ancient Greece, where Gymnastics was regarded as the perfect symmetry between mind and body. The best known of the three Gymnastics disciplines, Artistic Gymnastics is always among the most popular competitions at the Games.";
	
	txtInfo3.text = @"Along with events to find the best teams and the best all-around performers, gymnasts will be battling for gold on individual apparatus. Men compete on the floor, pommel horse, rings, vault, parallel bars and horizontal bar, while women compete on the vault, uneven bars, balance beam and floor.\n\nScores are given by a panel of judges, taking into account the degree of difficulty and the quality of the execution. Strength, flexibility and balance are keys to success in this breathtaking and hugely competitive sport.";
	lblOlympic.text = @"Olympic Artistic Gymnastics, past and present";
	txtInfo4.text = @"The term ‘Artistic Gymnastics’ was first used in the 19th century. Between its appearance at the Athens 1896 Games and the 1920s, the event evolved into what we recognise as modern Gymnastics. The men’s individual apparatus and team competitions first appeared at the Paris 1924 Games; a women’s team event was introduced in 1928, with women’s individual apparatus competitions added in 1952.\n\nAt London 2012, the Artistic Gymnastics competition will be held at the state-of-the-art North Greenwich Arena on the River Thames, which will also host the Trampoline Gymnastics competition and the closing stages of the Basketball tournament.";
}

-(IBAction) gotoGymnastics2
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"gymnastics-rhythmic" ofType: @"gif"]];
	lbltitle.text = @"Gymnastics Rhythmic";
	txtInfo1.text = @"During the London 2012 Olympic Games, grace and beauty will be on show throughout the four days of Rhythmic Gymnastics competition at Wembley Arena.";
	
	txtKey.text = @"Venue: Wembley Arena\n\nDates: Thursday 9 – Sunday 12 August\n\nMedal events: 2\n\nAthletes: 96 (all women)\n\nRhythmic Gymnastics first appeared during the 19th century, and slowly grew in popularity until the first experimental competitions were staged during the 1930s. Having evolved to incorporate elements from classical ballet, German muscle-building techniques and Swedish exercise systems, it’s one of the most beautiful spectacles on the Olympic programme. ";
	
	txtInfo3.text = @"One of just two women-only disciplines in the Olympic Games (the other is Synchronised Swimming), Rhythmic Gymnastics is a combination of gymnastics and dance. Competitors perform short routines to music using hand apparatus – a ball, clubs, a hoop and a ribbon – on a floor area measuring 13m by 13m. Scores are awarded in three categories: difficulty, artistry and execution.";
	lblOlympic.text = @"Olympic Rhythmic Gymnastics, past and present";
	txtInfo4.text = @"The first World Rhythmic Gymnastics Championships were held in Budapest in 1963, just over two decades before the discipline made its Olympic debut at the Los Angeles Games of 1984. A group event was added to the programme at the Atlanta 1996 Games.\n\nAt London 2012, the Rhythmic Gymnastics competition will take place at Wembley Arena, a world-class multi-purpose venue that will have a capacity of 6,000 spectators.";
}

-(IBAction) gotoGymnastics3
{
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType: @"gif"]];
	lbltitle.text = @"";
	txtInfo1.text = @"";
	
	txtKey.text = @"";
	
	txtInfo3.text = @"";
	lblOlympic.text = @"";
	txtInfo4.text = @"";
	
	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"gymnastics-trampoline" ofType: @"gif"]];
	lbltitle.text = @"Gymnastics Trampoline";
	txtInfo1.text = @"Prepare to be dazzled by the athletes in the Trampoline competition at the London 2012 Games, the newest of the three Gymnastics disciplines to have arrived on the Olympic programme.";
	
	txtKey.text = @"Venue: North Greenwich Arena\n\nDates: Friday 3 – Saturday 4 August\n\nMedal events: 2\n\nAthletes: 32\n\nDevised in the 1930s at the University of Iowa, the first modern trampoline was initially used as a training tool for tumblers, astronauts and athletes. However, it grew in popularity to such an extent that in 1964, the first ever Trampoline World Championships were held at the Royal Albert Hall in London.\n\nSince making its Olympic debut at the Sydney Games in 2000, the sport has consistently featured awe-inspiring displays of acrobatic excellence, with athletes springing to heights of up to 10m. ";
	
	txtInfo3.text = @"Gymnasts perform a series of short routines, which contain a variety of twists, bounces and somersaults. Precise technique and perfect body control are vital for success, with judges delivering marks for difficulty, execution and flight time.\n\nEach individual competition for men and women features two phases: the qualification round and the final round. Athletes perform two routines in the qualification round. The eight athletes with the best scores advance to the finals for one more routine, which determines the results of the competition.";
	lblOlympic.text = @"Olympic Trampoline Gymnastics, past and present";
	txtInfo4.text = @"Trampoline Gymnastics is a relative newcomer on the Olympic programme: it made its debut at Sydney in 2000. At London 2012, the competition will be held at the state-of-the-art North Greenwich Arena on the River Thames, which will also host the Artistic Gymnastics competition and the closing stages of the Basketball tournament.";
}

-(IBAction) gotoHandball
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"handball" ofType: @"gif"]];
	lbltitle.text = @"Handball";
	txtInfo1.text = @"High scoring and a quicksilver pace will combine to make Handball a truly thrilling team sport at the London 2012 Olympic Games.";
	
	txtKey.text = @"Venue: Handball Arena – Olympic Park (preliminaries, women’s quarter-finals); Basketball Arena – Olympic Park (Men’s quarter-finals, plus all semi-finals and finals)\n\nDates: Saturday 28 July – Sunday 12 August\n\nMedal events: 2\n\nAthletes: 336 (168 men, 168 women; 12 teams in each event)\n\nSpeed, skill and stamina are key attributes for competitors in modern Handball, a fast and exhilarating team sport. Handball offers plenty of physical contact and non-stop, end-to-end action, and should draw big crowds throughout the competition at London 2012. ";
	
	txtInfo3.text = @"Played on a court measuring 40 x 20 metres, the largest court of any indoor ball sport at the Games, Handball features two teams of seven players passing and dribbling a small ball with their hands. The aim is to throw the ball into the opposition’s goal, which happens often: it’s not uncommon to see 50 goals in a single 60-minute match.\n\nAt London 2012, both the men’s and women’s Handball competitions will begin with a preliminary phase: the 12 teams in each event will be divided into two groups of six, and each team will play every other team in their group. The four best teams in each group will qualify for the knockout phase, with the winners of the semi-finals eventually going head-to-head for the gold.";
	lblOlympic.text = @"Olympic Handball, past and present";
	txtInfo4.text = @"Handball was developed in Denmark, Sweden and Germany in the late 19th century. Originally played outdoors as field handball, the sport first appeared at the Olympic Games in 1936. The modern indoor version made its Olympic debut at Munich 1972.\n\nFor London 2012, the preliminary rounds of both the men’s and women’s competitions, as well as the women’s quarter-finals, will take place at the brand new Handball Arena in the Olympic Park. The competition will then move to the Basketball Arena, also in the Olympic Park, for the men’s quarter-finals, all semi-finals and all medal matches.";
}

-(IBAction) gotoHockey
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"hockey" ofType: @"gif"]];
	lbltitle.text = @"Hockey";
	txtInfo1.text = @"At the London 2012 Olympic Games, men’s and women’s teams will be shooting for gold and glory at the new Hockey Centre in the Olympic Park.";
	
	txtKey.text = @"Venue: Hockey Centre\n\nDates: Sunday 29 July – Saturday 11 August\n\nMedal events: 2\n\nAthletes: 384 (192 men, 192 women; 12 teams in each event)\n\nHockey demands speed, stamina and a mastery of intricate hand-eye coordination. Played by teams of 11 on an outdoor pitch, the sport is a long-time Olympic favourite, offering non-stop action over 14 days of competition. ";
	
	txtInfo3.text = @"Teams of 11 players (plus five substitutes) compete against each other on a pitch measuring 91.4 metres by 55m. Players use hook-shaped sticks to advance a hard ball towards their opponents’ goal, which stands 3.66m wide and 2.14m high. Matches are played over two halves of 35 minutes each.\n\nUntil the 1970s, hockey was always played on grass. However, top-level matches, including those at London 2012, now take place on water-based synthetic-turf pitches, which allow the ball to roll more smoothly and quickly.\n\nAt London 2012, both the men’s and women’s Hockey competitions will begin with a preliminary phase: the 12 teams in each event will be divided into two pools of six, and each team will play every other team in their pool. The two best teams in each pool will qualify for the semi-finals, the winners of which will go head-to-head for the gold.";
	lblOlympic.text = @"Olympic Hockey, past and present";
	txtInfo4.text = @"Men’s Hockey made its Olympic debut at the London 1908 Games, but the first women’s Olympic Hockey competition wasn’t held until the Moscow 1980 Games. At London 2012, all matches will be played at the brand new Hockey Centre in the Olympic Park.";
}

-(IBAction) gotoJudo
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"judo" ofType: @"gif"]];
	lbltitle.text = @"Judo";
	txtInfo1.text = @"Judo contests at the London 2012 Olympic Games will be a five-minute whirlwind of combat, with athletes attempting a combination of throws and holds in a bid to defeat their opponents.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Saturday 28 July – Friday 3 August\n\nMedal events: 14\n\nAthletes: 386\n\nDeveloped from jujitsu and established as a sport in the late 19th century by Dr Jigoro Kano, Judo is a sport for which athletes are called upon to employ an intricate mix of attack and defence. The sport’s one-on-one battles can be tough, tense and explosive, as competitors grapple for command against equally determined opponents.";
	
	txtInfo3.text = @"Judo contests last five minutes, with scores awarded for different throws and holds. However, a contest ends immediately if a competitor is awarded ‘ippon’ – the maximum score. If the scores are tied after five minutes, the contest enters a golden score period, when the first score of any sort wins.\n\nAll of the Judo events at the London 2012 Olympic Games – seven for men, seven for women – will be played in a knockout format. The winners of each contest will qualify for the next round, with the two finalists going head to head in the gold medal contest. The defeated quarter-finalists will compete in two 'repechage' contests, the winners of which will then go up against the two defeated semi-finalists to determine the winners of the two bronze medals in each event.";
	lblOlympic.text = @"Olympic Judo, past and present";
	txtInfo4.text = @"Judo made its first appearance as a medal sport at the Olympic Games at Tokyo in 1964. A women’s competition was eventually added to the Olympic programme at Barcelona in 1992.\n\nFor London 2012, the Judo competition will be held at ExCeL, a multi-purpose events venue that will also host a number of other Olympic and Paralympic sports.";
}

-(IBAction) gotoModern
{
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType: @"gif"]];
	lbltitle.text = @"";
	txtInfo1.text = @"";
	
	txtKey.text = @"";
	
	txtInfo3.text = @"";
	lblOlympic.text = @"";
	txtInfo4.text = @"";
	
	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"modern-pentathlon" ofType: @"gif"]];
	lbltitle.text = @"Modern Pentathlon";
	txtInfo1.text = @"A sport like no other, at the London 2012 Games Modern Pentathlon will celebrate 100 years as part of the Olympic Games.";
	
	txtKey.text = @"Venue: Handball Arena - Olympic Park (fencing); Aquatics Centre - Olympic Park (swimming); and Greenwich Park (riding, combined event);\n\nDates: Saturday 11 – Sunday 12 August\n\nEvents: Fencing, Swimming, Riding, Combined Run/Shoot Event\n\nMedal events: 2\n\nAthletes: 72 (36 men, 36 women)\n\nModern Pentathlon was championed by Baron Pierre de Coubertin, the founder of the modern Olympic Games, and has its origins in a 19th-century legend. The story goes that a young French cavalry officer was sent on horseback to deliver a message. To complete his mission, he had to ride, fence, shoot, swim and run – the five challenges that face competitors in Modern Pentathlon today.";
	
	txtInfo3.text = @"Modern Pentathlon competitions are conducted over a single day. The first element is fencing, for which athletes are required to fence against every other athlete. The fencing is then followed by swimming (200m freestyle) and riding (jumping over a 12-jump course). Athletes are given a score for each element of the competition.\n\nAfter the first three elements, the athletes’ total scores are converted into a time handicap. The handicap determines the starting times for the combined run/shoot element, for which athletes are required to shoot at sets of five targets after running several stretches of 1,000m. The winner of the competition is the athlete who crosses the finish line first.";
	lblOlympic.text = @"Olympic Modern Pentathlon, past and present";
	txtInfo4.text = @"A century after its Olympic debut at the Stockholm Games of 1912, the Modern Pentathlon competition at London 2012 will be the first Olympic Games at which the running and shooting elements are combined. The competition will be held across three venues: the fencing will be held at the Handball Arena; the swimming will take place in the Aquatics Centre; and the riding and combined running/shooting will be staged in Greenwich Park.";
}

-(IBAction) gotoRowing
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"rowing" ofType: @"gif"]];
	lbltitle.text = @"Rowing";
	txtInfo1.text = @"The Rowing competition at the London 2012 Games will feature extraordinary displays of power and passion on the world-class waters at Eton Dorney.";
	
	txtKey.text = @"Venue: Eton Dorney\n\nDates: Saturday 28 July – Sunday 4 August\n\nMedals events: 14\n\nAthletes: 550 (353 men, 197 women)\n\nAlthough its history dates back centuries, Rowing only came of age as a competitive sport in the last 200 years. Interest began to increase after Oxford and Cambridge Universities began their rivalry on the Thames in 1829, a rivalry that continues today in the shape of the annual Boat Race.\n\nToday’s sport is renowned for its competitors’ legendary displays of strength and stamina, as athletes push themselves through the pain barrier in an attempt to win Olympic gold.";
	
	txtInfo3.text = @"The 14 Olympic Rowing events range from the Single Sculls, featuring solo rowers, to the Eights, contested by teams of eight rowers plus a cox. All events are held over a 2,000m course, with the competition taking a total of eight days.\n\nAll Rowing events at London 2012 will begin with the heats, from which the best boats will qualify for the next round. Boats that do not qualify automatically from the heats get a second chance to qualify through the repechage round. The best boats eventually progress through the various stages and into the finals of each event, which decide the medallists.";
	lblOlympic.text = @"Olympic Rowing, past and present";
	txtInfo4.text = @"Rowing has been staged at every Games since making its debut on the Olympic programme at Paris in 1900. The youngest Olympic champion is thought to be an anonymous French boy who coxed for a Dutch pair at the inaugural competition. The boy, aged no more than 12, took part in the victory ceremony but then disappeared.\n\nFor London 2012, the Rowing competition will be held on the spectacular lake at Eton Dorney.";
}

-(IBAction) gotoSailing
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"sailing" ofType: @"gif"]];
	lbltitle.text = @"Sailing";
	txtInfo1.text = @"The waters of Weymouth Bay and Portland Harbour will play host to 10 exhilarating Sailing events during the London 2012 Olympic Games.";
	
	txtKey.text = @"Venue: Weymouth and Portland\n\nDates: Sunday 29 July – Saturday 11 August\n\nMedal events: 10\n\nAthletes: 380 (237 men, 143 women)\n\nMastery over ever-changing conditions on open water requires skill and nerve. Both will be essential for competitors in the Sailing events at London 2012, 14 days of competition that should offer plenty of excitement and drama in the beautiful but testing waters of Weymouth Bay, on the south coast of England.";
	
	txtInfo3.text = @"At London 2012, the 10 different Olympic Sailing events (six for men, four for women) will feature a variety of craft, from dinghies and keelboats to windsurfing boards.\n\nEach event consists of a series of races. Points in each race are awarded according to position: the winner gets one point, the second-placed finisher scores two, and so on. The final race is called the medal race, for which points are doubled. Following the medal race, the individual or crew with the fewest total points will be declared the winner.";
	lblOlympic.text = @"Olympic Sailing, past and present";
	txtInfo4.text = @"Sailing made its Olympic debut in 1900; with the exception of 1904, the sport has appeared at every Olympic Games since then.\n\nLed by triple gold medal-winner Ben Ainslie CBE, Team GB has topped the Sailing medals table at the last three Olympic Games. British sailors will be hoping to repeat the feat at London 2012, battling their rivals in Weymouth Bay. London 2012 is considering making Sailing a ticketed event.";
}

-(IBAction) gotoShooting
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"shooting" ofType: @"gif"]];
	lbltitle.text = @"Shooting";
	txtInfo1.text = @"During the London 2012 Games, nearly 400 competitors will be shooting for gold across 15 dramatic events.";
	
	txtKey.text = @"Venue: The Royal Artillery Barracks\n\nDates: Saturday 28 July – Monday 6 August\n\nMedal events: 15\n\nAthletes: 390\n\nHaving been practised competitively for centuries, the tense and demanding sport of Shooting is now popular all over the world. At Beijing, marksmen and women from more than 100 countries took part in the competition.";
	
	txtInfo3.text = @"Olympic Shooting events fall broadly into three types: Pistol, Rifle and Shotgun events. In Pistol and Rifle events, competitors aim at a 10-ringed target from a set distance (10m, 25m or 50m).\n\nDepending on the event, athletes are required to shoot from standing, kneeling or prone positions. In Shotgun events, meanwhile, competitors shoot at moving clay targets launched above and in front of them.\n\nIn the five Pistol events and the five Rifle events, shooters take part in two rounds, the qualification and the final. The scores in each round are added together to give a total score, which determines the winners of the medals. There are also two stages in the five Shotgun events, with the scores from the qualification and final stages added together to determine the rankings.";
	lblOlympic.text = @"Olympic Shooting, past and present";
	txtInfo4.text = @"With the exceptions of the 1904 and 1928 Games, Shooting has featured on every Olympic programme since the first modern Games in 1896. Women’s events were added to the schedule in 1984.\n\nAt London 2012, the Shooting competition will be held at a truly historic venue: The Royal Artillery Barracks. Its rich heritage dates back to 1716, when a Royal Warrant authorised the formation of two artillery companies at the Royal Arsenal in Woolwich. The current building was constructed between 1775 and 1802.";
}

-(IBAction) gotoSwimming
{	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"swimming" ofType: @"gif"]];
	lbltitle.text = @"Swimming";
	txtInfo1.text = @"Speed, strength and stamina will be key for athletes in the Swimming competition at the London 2012 Games, which features no fewer than 34 medal events.";
	
	txtKey.text = @"Venue: Aquatics Centre – Olympic Park (pool events); Hyde Park (Marathon Swimming 10km)\n\nDates: Saturday 28 July – Saturday 4 August (Aquatics Centre); Thursday 9 – Friday 10 August (Hyde Park)\n\nMedal events: 34\n\nAthletes: 950\n\nEvidence of people swimming for sport dates back all the way back to Ancient Egyptian and Ancient Greek times. Now hugely popular around the world as a leisure activity and a competitive sport, Swimming has featured at every modern Games and remains a real Olympic crowd-pleaser. ";
	
	txtInfo3.text = @"There are four strokes used in Olympic competition: Freestyle (essentially, front crawl), Backstroke, Breaststroke and Butterfly. All four strokes feature in the Individual Medley and Medley Relay events.\n\nOlympic races are conducted over a variety of distances, from 50m (one length of the pool) all the way up to 1500m. All the pool events begin with heats, with the best swimmers from the qualifying rounds eventually racing for gold in the final.";
	lblOlympic.text = @"Olympic Swimming, past and present";
	txtInfo4.text = @"At the first few modern Olympic Games, Swimming events were held in open water. At Paris in 1900, for instance, they took place in the River Seine. However, the rules were formalised in 1908, when the London Games staged the first Olympic Swimming competition to be held in a pool.\n\nOther than the Marathon Swimming 10km event, held in the Serpentine within Hyde Park, the Swimming competition will take place in the dazzling Aquatics Centre, built in the Olympic Park especially for London 2012.";
}

-(IBAction) gotoSynchronisedSwimming
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"synchronised-swimming" ofType: @"gif"]];
	lbltitle.text = @"Synchronised Swimming";
	txtInfo1.text = @"At the London 2012 Games, the Synchronised Swimming is all about grace under pressure, as swimmers use pinpoint precision and immense stamina to deliver beautiful routines in the pool.";
	
	txtKey.text = @"Venue: Aquatics Centre – Olympic Park\n\nDates: Sunday 5 – Friday 10 August 2012\n\nMedal events: 2\n\nAthletes: 104 (all women)\n\nSynchronised Swimming grew out of the ornamental water ballets of the late 19th and early 20th centuries, which became popular in Europe and the US thanks to pioneers such as Australian swimmer Annette Kellerman. The first competitions were held in the 1930s, five decades before the sport made its Olympic debut in 1984.";
	
	txtInfo3.text = @"Although it looks deceptively graceful from the pool side, Synchronised Swimming is an extremely demanding sport calling for great strength, amazing levels of endurance and exceptional flexibility. Swimmers use nose clips to help them stay underwater for longer, but the sport still requires tremendous breath control.\n\nAided by underwater speakers, pairs of swimmers or teams of eight perform short routines to a musical accompaniment. Judges mark a variety of components during the course of a routine, including choreography, difficulty and execution.";
	lblOlympic.text = @"Olympic Synchronised Swimming, past and present";
	txtInfo4.text = @"Synchronised Swimming became an Olympic sport at the Los Angeles 1984 Games, with solo and duet events. At London 2012, the Synchronised Swimming competition will take place at the dazzling new Aquatics Centre in the Olympic Park, designed by acclaimed architect Zaha Hadid and built especially for the Games.";
}

-(IBAction) gotoTableTennis
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"table-tennis" ofType: @"gif"]];
	lbltitle.text = @"Table Tennis";
	txtInfo1.text = @"Power, subtlety and lightning-fast reflexes will all be on display at ExCeL during the exciting London 2012 Olympic Games Table Tennis competition.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Saturday 28 July – Wednesday 8 August\n\nMedal events: 4\n\nAthletes: 172 (86 men, 86 women)\n\nTable Tennis has come a long way from its origins in the late 19th century, when it developed as an after-dinner game played by upper-class English families. More than a century later, Table Tennis is a breathtaking spectacle that blends power, speed, skill and subtlety – no wonder it’s the biggest participation sport in the world.";
	
	txtInfo3.text = @"Table Tennis is based on the same basic principles as Tennis, but it has a very different scoring system. Singles matches are played over the best of seven games, with the first player to 11 points (by a margin of two clear points) winning each game. Team matches, meanwhile, consist of four singles matches and one doubles match, each played over the best of five games.\n\nBoth the Singles and Team events at London 2012 will be run in a knockout format. Players and teams will progress through the draw until the finals, which will decide the winners of the gold medals.";
	lblOlympic.text = @"Olympic Table Tennis, past and present";
	txtInfo4.text = @"Since Table Tennis joined the Olympic programme in 1988, China has won 20 of the 24 available gold medals. The only European Olympic gold medallist so far has been the legendary Swedish player Jan-Ove Waldner: nicknamed ‘the Mozart of Table Tennis’, Waldner won the men’s Singles at Barcelona in 1992.\n\nAt London 2012, the Table Tennis competition will be held at ExCeL, a multi-purpose events venue that will also host a number of other Olympic and Paralympic sports.";
}

-(IBAction) gotoTaekwondo
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"taekwondo" ofType: @"gif"]];
	lbltitle.text = @"Taekwondo";
	txtInfo1.text = @"Expect plenty of excitement at ExCeL when the Taekwondo competitors take to the court at the London 2012 Olympic Games.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Wednesday 8 – Saturday 11 August\n\nMedal events: 8\n\nAthletes: 128 (64 men, 64 women)\n\nThe word ‘Taekwondo’ translates into English as ‘the way of foot and fist’ – an accurate description of the principles behind this Korean martial art. Powerful kicks and punches are, literally, the name of the game, which offers tension, drama and plenty of action. ";
	
	txtInfo3.text = @"The object of Taekwondo is to land kicks and punches on your opponent’s scoring zones: one point is awarded for a valid kick or punch to the torso, two points for a valid spinning kick, and four points for a turning kick to the head.\n\nThe action takes place inside an 8m x 8m zone called a court, with each contest made up of three two-minute rounds. Over their standard white uniform, known as a ‘dobok’, competitors wear coloured protective equipment. The competitor wearing blue is referred to as ‘chung’, while the competitor in red is ‘hong’.\n\nThe eight Taekwondo events at the London 2012 Games – four weight categories for men, four for women – will be played in a knockout format. The winners of each contest will qualify for the next round, with the two finalists going head to head in the gold medal contest. All competitors who lose to one of the finalists will enter the 'repechage', which will eventually determine the winners of the bronze medals.";
	lblOlympic.text = @"Olympic Taekwondo, past and present";
	txtInfo4.text = @"Taekwondo made its debut as a demonstration sport at the Seoul 1988 Games, but was not officially added to the Olympic programme until the Sydney 2000 Games. At London 2012, the Taekwondo competition will be held at ExCeL, a multi-purpose events venue that will also host a number of other Olympic and Paralympic sports.";
}

-(IBAction) gotoTennis
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"tennis" ofType: @"gif"]];
	lbltitle.text = @"Tennis";
	txtInfo1.text = @"Just three weeks after the end of the annual grand slam tournament, Wimbledon will once again welcome the best players in the world for the London 2012 Olympic Games Tennis competition.";
	
	txtKey.text = @"Venue: Wimbledon\n\nDates: Saturday 28 July – Sunday 5 August\n\nEvents: Men's and women’s Singles and Doubles; Mixed Doubles\n\nMedal events: 5\n\nAthletes: 172 (86 men, 86 women)\n\nEvery four years, the Olympic Tennis tournament attracts the world’s top stars. At Beijing in 2008, for instance, Rafael Nadal won the men’s Singles, while the Williams sisters triumphed in the women’s Doubles. All the players will be aiming for a showdown on Wimbledon’s Centre Court, where the Olympic champions will be crowned. ";
	
	txtInfo3.text = @"The Tennis competition at London 2012 will feature five medal events. Along with men’s and women’s Singles and men’s and women’s Doubles, Mixed Doubles will be making its first Olympic appearance since 1924.\n\nAll matches will be the best of three sets with the exception of the men’s Singles final, which will be the best of five sets, and all Mixed Doubles matches, which will be resolved by a first-to-10 tie-break if they reach one set all.\n\nAt London 2012, the Tennis tournament will be played according to a knockout format, with the winners of the semi-finals in each event going head-to-head on Centre Court for the gold medals.";
	lblOlympic.text = @"Olympic Tennis, past and present";
	txtInfo4.text = @"Tennis appeared at the first modern Olympic Games in 1896 but was dropped from the programme after the Paris 1924 Games. It returned 64 years later, with Miloslav Mečíř (Czechoslovakia) and Steffi Graf (West Germany) winning gold in the two singles tournaments at Seoul 1988.\n\nThe Tennis competition at London 2012 will be held on the grass courts of Wimbledon, which has its own Olympic history. The venue staged the Tennis competition when London first hosted the Olympic Games in 1908, with Great Britain winning all six gold medals.";
}

-(IBAction) gotoTriathlon
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"triathlon" ofType: @"gif"]];
	lbltitle.text = @"Triathlon";
	txtInfo1.text = @"Hyde Park will welcome the world’s best triathletes for one of the most exciting and high-profile events at the London 2012 Olympic Games.";
	
	txtKey.text = @"Venue: Hyde Park\n\nDates: Saturday 4 and Tuesday 7 August\n\nMedal events: 2\n\nAthletes: 110 (55 men, 55 women)\n\nThe precise origins of Triathlon are unknown: some say that the sport began in France between the wars, others that it really developed in the United States during the late 1970s. Whatever the true history, Triathlon is now one of the fastest-growing sports in the world, and the London 2012 competition in Hyde Park promises to draw enormous and enthusiastic crowds.";
	
	txtInfo3.text = @"Triathlon races combine swimming, cycling and running, in that order. Events are conducted over a variety of distances: for the Olympic Games, the men’s and women’s Triathlons will consist of a 1,500m swim, a 40km bike ride and a 10km run. There are no heats: both the men’s and women’s events consist of a single race.";
	lblOlympic.text = @"Olympic Triathlon, past and present";
	txtInfo4.text = @"More than half a million spectators lined the Sydney streets to watch the first ever Olympic Triathlon at the 2000 Games. The six Triathlon events held since the sport’s Olympic debut have been won by athletes from six different countries: Canada and Switzerland in 2000; New Zealand and Austria in 2004; and Germany and Australia in 2008.\n\nAt London 2012, the Triathlon will begin and end in Hyde Park. The events will begin with a 1,500m swim in the Serpentine; continue with a seven-lap, 40km bike ride around a course that takes in Buckingham Palace and the Wellington Arch; and end with a four-lap, 10km run around the Serpentine to the finish. ";
}

-(IBAction) gotoVolleyball
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"volleyball" ofType: @"gif"]];
	lbltitle.text = @"Volleyball";
	txtInfo1.text = @"The dynamic, competitive sport of Volleyball will be staged at historic Earls Court during the London 2012 Olympic Games.";
	
	txtKey.text = @"Venue: Earls Court\n\nDate: Saturday 28 July – Sunday 12 August\n\nMedal events: 2\n\nAthletes: 288 (144 men, 144 women: 12 teams in each event)\n\nIn 1895, William G Morgan devised a game he called ‘mintonette’, which he designed as a gentle alternative to basketball for older members of his YMCA gym. A century later, Volleyball is anything but gentle – few sports on the Olympic programme offer such fast, furious and exhilarating action.";
	
	txtInfo3.text = @"Volleyball is played by two teams of six on an 18m x 9m indoor court divided by a net (2.43m high for men, 2.24m for women). The object of the game is to land the ball in the opposition’s half of the court.\n\nEach team is allowed three touches of the ball before it must cross over the net. The key attacking move is the set and spike, in which a player feeds the ball (the set) for a teammate to power it into the opposition’s court (the spike). Volleyball requires amazing power and astonishing reactions: in the men’s game, the ball can reach speeds in excess of 130km/h.\n\nAt London 2012, both the men’s and women’s Volleyball competitions will begin with a preliminary phase: the 12 teams in each event will be divided into two pools of six, and each team will play every other team in their pool. The eight best teams from this phase will qualify for the knockout phase, with the winners of the semi-finals eventually going head to head for the gold.";
	lblOlympic.text = @"Olympic Volleyball, past and present";
	txtInfo4.text = @"Volleyball made its Olympic debut at the 1964 Games, with competitions for both men and women. At Beijing in 2008, the gold medals were won by the USA (men) and Brazil (women).\n\nAt London 2012, the Volleyball competition will be held at Earls Court, a popular multi-purpose venue that first opened its doors in 1937.";
}

-(IBAction) gotoWaterPolo
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"water-polo" ofType: @"gif"]];
	lbltitle.text = @"Water Polo";
	txtInfo1.text = @"Quick, exhilarating and not for the faint-hearted, Water Polo should offer plenty of action in the pool at London 2012.";
	
	txtKey.text = @"Venue: Olympic Park – Water Polo Arena\n\nDates: Sunday 29 July – Sunday 12 August\n\nMedal events: 2\n\nAthletes: 260 (156 men, 104 women)\n\nWater Polo developed during the 19th century as an aquatic version of rugby, played informally in rivers and lakes. The version of the game that survives today is closer to Handball: a fast, tough and demanding sport, it’s featured on every Olympic programme since the Paris 1900 Games.";
	
	txtInfo3.text = @"Played by teams of seven in a pool with a goal at each end (the goals are 3m wide and 90cm high), Water Polo is a thrilling spectacle. Matches are divided into four periods of eight minutes, and each team has only 30 seconds to attempt to score before the ball is returned to the opposition. Players aren’t allowed to touch the sides or the bottom of the pool during play, and may swim as much as three miles during a match.\n\nThe men’s and women’s competitions at London will both begin with group play. The teams are divided into two groups, and each team will play every other team in its group. From here, the competitions progress through quarter-final and semi-final rounds before the top two teams go head to head for the gold.";
	lblOlympic.text = @"Olympic Water Polo, past and present";
	txtInfo4.text = @"In the late 19th and early 20th centuries, Water Polo developed separately on either side of the Atlantic, with different styles of play in Europe and America.  Eventually, the rules became formalised, which in turn helped the sport to gather popular momentum when 12 nations competed at the 1920 Games in Antwerp.\n\nAt London 2012, the Water Polo competition will take place at the brand new Water Polo Arena, constructed especially for the Games immediately next to the Aquatics Centre in the Olympic Park.";
}

-(IBAction) gotoWeightlifting
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"weightlifting" ofType: @"gif"]];
	lbltitle.text = @"Weightlifting";
	txtInfo1.text = @"Weightlifting at the London 2012 Olympic Games will showcase a test of pure strength – the oldest and most basic form of physical competition.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Saturday 28 July – Tuesday 7 August\n\nMedal events: 15\n\nAthletes: 260 (170 men, 90 women)\n\nOne of the most straightforward sports on the London 2012 Olympic Games programme is also among the most awe-inspiring. The aim of Weightlifting is simple: to lift more weight than anyone else. The result is pure sporting theatre of the most dramatic kind, and a real spectator favourite.";
	
	txtInfo3.text = @"Competitors in Weightlifting are divided into 15 weight categories, eight for men and seven for women. The strongest competitors may lift more than three times their body weight.\n\nEach event features two types of lift. In the snatch, the bar is lifted from the floor to above the head in one movement. By contrast, the clean and jerk is a two-stage action – the bar is first brought up to the shoulders before being jerked over the head.\n\nEach lifter is allowed three attempts at the snatch and three attempts at the clean and jerk, and their best lift in each discipline counts towards their total. When a tie occurs, the athlete with the lower bodyweight is declared the winner. If two athletes lift the same total weight and have the same bodyweight, the winner is the athlete who lifted the total weight first.";
	lblOlympic.text = @"Olympic Weightlifting, past and present";
	txtInfo4.text = @"The heaviest individual weight lifted in Olympic competition was achieved by Hossein Rezazadeh of the Islamic Republic of Iran. At the Athens 2004 Games, Rezazadeh clean-and-jerked 263.5kg – a weight roughly equivalent to five flyweight boxers.\n\nAt London 2012, the Weightlifting competition will be held at ExCeL, a multi-purpose events venue that will host seven Olympic and six Paralympic sports during the Games.";
}

-(IBAction) gotoWrestling
{
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromLeft forView:self cache:YES];
	[mainView removeFromSuperview];
	[self addSubview:infoView];
	[UIView commitAnimations];
	
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"wrestling" ofType: @"gif"]];
	lbltitle.text = @"Wrestling";
	txtInfo1.text = @"Wrestling at London 2012 will pit competitors against each other in head-to-head displays of power, technique and sheer strength.";
	
	txtKey.text = @"Venue: ExCeL\n\nDates: Sunday 5 –  Sunday 12 August 2012\n\nMedal events: 18\n\nAthletes: 344\n\nRecognised as one of the world’s oldest sports, Wrestling was first held at the ancient Olympics in 708 BC, and was included at the Athens 1896 Games, the first of the modern era. Played out on a circular mat, the sport is a battle of nerves, strength and skill, and should provide plenty of drama at ExCeL during London 2012.";
	
	txtInfo3.text = @"Wrestling is a body-to-body combat sport, with key variations between the styles.\n\nGreco-Roman Wrestling featured at the first modern Olympic Games in Athens in 1896. The organisers hoped it would give a flavour of the Ancient Greek Olympic Games, where the sport had been very popular. In Greco-Roman Wrestling, athletes are only allowed to use their arms and upper bodies to attack their opponents’ upper bodies.\n\nFreestyle Wrestling was introduced at the St Louis 1904 Games. In Freestyle Wrestling, competitors  may use all parts of their body to attempt moves and holds on all parts of their opponents’ bodies. Wrestlers aim to pin their opponent to the ground, or to score points by throwing their opponent or taking them down.\n\nThe rules in women’s Wrestling, which made its first Olympic appearance in 2004 are similar to those used in men’s Freestyle Wrestling, but with some key variations – for example, double head-locks are forbidden.";
	lblOlympic.text = @"Olympic Wrestling, past and present";
	txtInfo4.text = @"Eight years after Greco-Roman Wrestling was featured at the first modern Olympic Games in Athens in 1896, Freestyle Wrestling was introduced at the St Louis 1904 Games. Women’s Wrestling joined the Olympic programme at Athens in 2004.\n\nAt London 2012, the Wrestling competition will be held at ExCeL, a multi-purpose events venue that will also host a number of other Olympic and Paralympic sports.";
}

-(IBAction) goBack
{
	imgIcon.image = [UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"" ofType: @"gif"]];
	lbltitle.text = @"";
	txtInfo1.text = @"";
	
	txtKey.text = @"";
	
	txtInfo3.text = @"";
	lblOlympic.text = @"";
	txtInfo4.text = @"";
	
	[infoScrollView setContentOffset:CGPointMake(0,0) animated:NO];
	
	[UIView beginAnimations:Nil context:NULL];
	[UIView setAnimationDuration:1.0];
	[UIView setAnimationTransition:UIViewAnimationTransitionFlipFromRight forView:self cache:YES];
	[infoView removeFromSuperview];
	[self addSubview:mainView];
	[UIView commitAnimations];
}

@end
