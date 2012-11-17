//
//  FIEntypoIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIEntypoIcon.h"
#import "FIFont.h"

@implementation FIEntypoIcon

#pragma mark - Overriden methods

+ (FIFont *)iconFont {
    return [FIFont entypoFont];
}

#pragma mark - Icons Dictionary

+ (NSDictionary *)iconsDictionary {
    return @{
        @"phone" : @"\U0001F4DE",
        @"mobile" : @"\U0001F4F1",
        @"mouse" : @"\U0000E789",
        @"address" : @"\U0000E723",
        @"mail" : @"\U00002709",
        @"paper-plane" : @"\U0001F53F",
        @"pencil" : @"\U0000270E",
        @"feather" : @"\U00002712",
        @"attach" : @"\U0001F4CE",
        @"inbox"  : @"\U0000E777",
        @"reply" : @"\U0000E712",
        @"reply-all" : @"\U0000E713",
        @"forward" : @"\U000027A6",
        @"user" : @"\U0001F464",
        @"users" : @"\U0001F465",
        @"add-user" : @"\U0000E700",
        @"vcard" : @"\U0000E722",
        @"export" : @"\U0000E715",
        @"location" : @"\U0000E724",
        @"map"  : @"\U0000E727",
        @"compass" : @"\U0000E728",
        @"direction" : @"\U000027A2",
        @"hair-cross" : @"\U0001F3AF",
        @"share" : @"\U0000E73E",
        @"shareable" : @"\U0001F4DE",
        @"heart" : @"\U00002665",
        @"heart-empty" : @"\U00002661",
        @"star" : @"\U00002605",
        @"star-empty" : @"\U00002606",
        @"thumbs-up"  : @"\U0001F44D",
        @"thumbs-down" : @"\U0001F44E",
        @"chat" : @"\U0000E720",
        @"comment" : @"\U0000E718",
        @"quote" : @"\U0000275E",
        @"home" : @"\U00002302",
        @"popup" : @"\U0000E74C",
        @"search" : @"\U0001F50D",
        @"flashlight" : @"\U0001F526",
        @"print" : @"\U0000E716",
        @"bell"  : @"\U0001F514",
        @"link" : @"\U0001F517",
        @"flag" : @"\U00002691",
        @"cog" : @"\U00002699",
        @"tools" : @"\U00002692",
        @"trophy" : @"\U0001F3C6",
        @"tag" : @"\U0000E70C",
        @"camera" : @"\U0001F4F7",
        @"megaphone" : @"\U0001F4E3",
        @"moon" : @"\U0000263D",
        @"palette"  : @"\U0001F3A8",
        @"leaf" : @"\U0001F342",
        @"note" : @"\U0000266A",
        @"beamed-note" : @"\U0000266B",
        @"new" : @"\U0001F4A5",
        @"graduation-cap" : @"\U0001F393",
        @"book" : @"\U0001F4D5",
        @"newspaper" : @"\U0001F4F0",
        @"bag" : @"\U0001F45C",
        @"airplane" : @"\U00002708",
        @"lifebuoy"  : @"\U0000E788",
        @"eye" : @"\U0000E70A",
        @"clock" : @"\U0001F554",
        @"mic" : @"\U0001F3A4",
        @"calendar" : @"\U0001F4C5",
        @"flash" : @"\U000026A1",
        @"thunder-cloud" : @"\U000026C8",
        @"droplet" : @"\U0001F4A7",
        @"cd" : @"\U0001F4BF",
        @"briefcase" : @"\U0001F4BC",
        @"air"  : @"\U0001F4A8",
        @"hourglass" : @"\U000023F3",
        @"gauge" : @"\U0001F6C7",
        @"language" : @"\U0001F394",
        @"network" : @"\U0000E776",
        @"key" : @"\U0001F511",
        @"battery" : @"\U0001F50B",
        @"bucket" : @"\U0001F4FE",
        @"magnet" : @"\U0000E7A1",
        @"drive" : @"\U0001F4FD",
        @"cup"  : @"\U00002615",
        @"rocket" : @"\U0001F680",
        @"brush" : @"\U0000E79A",
        @"suitcase" : @"\U0001F6C6",
        @"traffic-cone" : @"\U0001F6C8",
        @"globe" : @"\U0001F30E",
        @"keyboard" : @"\U00002328",
        @"browser" : @"\U0000E74E",
        @"publish" : @"\U0000E74D",
        @"progress-3" : @"\U0000E76B",
        @"progress-2"  : @"\U0000E76A",
        @"progress-1" : @"\U0000E769",
        @"progress-0" : @"\U0000E768",
        @"light-down" : @"\U0001F505",
        @"light-up" : @"\U0001F506",
        @"adjust" : @"\U000025D1",
        @"code" : @"\U0000E714",
        @"monitor" : @"\U0001F4BB",
        @"infinity" : @"\U0000221E",
        @"light-bulb" : @"\U0001F4A1",
        @"credit-card"  : @"\U0001F4B3",
        @"database" : @"\U0001F4F8",
        @"voicemail" : @"\U00002707",
        @"clipboard" : @"\U0001F4CB",
        @"cart" : @"\U0000E73D",
        @"box" : @"\U0001F4E6",
        @"ticket" : @"\U0001F3AB",
        @"rss" : @"\U0000E73A",
        @"signal" : @"\U0001F4F6",
        @"thermometer" : @"\U0001F4FF",
        @"water"  : @"\U0001F4A6",
        @"sweden" : @"\U0000F601",
        @"line-graph" : @"\U0001F4C8",
        @"pie-chart" : @"\U000025F4",
        @"bar-graph" : @"\U0001F4CA",
        @"area-graph" : @"\U0001F53E",
        @"lock" : @"\U0001F512",
        @"lock-open" : @"\U0001F513",
        @"logout" : @"\U0000E741",
        @"login" : @"\U0000E740",
        @"check"  : @"\U00002713",
        @"cross" : @"\U0000274C",
        @"squared-minus" : @"\U0000229F",
        @"squared-plus" : @"\U0000229E",
        @"squared-cross" : @"\U0000274E ",
        @"circled-minus" : @"\U00002296",
        @"circled-plus" : @"\U00002295",
        @"circled-cross" : @"\U00002716",
        @"minus" : @"\U00002796",
        @"plus" : @"\U00002795",
        @"erase"  : @"\U0000232B",
        @"block" : @"\U0001F6AB",
        @"info" : @"\U00002139",
        @"circled-info" : @"\U0000E705",
        @"help" : @"\U00002753",
        @"circled-help" : @"\U0000E704",
        @"warning" : @"\U000026A0",
        @"cycle" : @"\U0001F504",
        @"cw" : @"\U000027F3",
        @"ccw" : @"\U000027F2",
        @"shuffle"  : @"\U0001F500",
        @"back" : @"\U0001F519",
        @"level-down" : @"\U000021B3",
        @"retweet" : @"\U0000E717",
        @"loop" : @"\U0001F501",
        @"back-in-time" : @"\U0000E771",
        @"level-up" : @"\U000021B0",
        @"switch" : @"\U000021C6",
        @"numbered-list" : @"\U0000E005",
        @"add-to-list" : @"\U0000E003",
        @"layout"  : @"\U0000268F",
        @"list" : @"\U00002630",
        @"text-doc" : @"\U0001F4C4",
        @"text-doc-inverted" : @"\U0000E731",
        @"doc" : @"\U0000E730",
        @"docs" : @"\U0000E736",
        @"landscape-doc" : @"\U0000E737",
        @"picture" : @"\U0001F304",
        @"video" : @"\U0001F3AC",
        @"music" : @"\U0001F3B5",
        @"folder"  : @"\U0001F4C1",
        @"archive" : @"\U0000E800",
        @"trash" : @"\U0000E729",
        @"upload" : @"\U0001F4E4",
        @"download" : @"\U0001F4E5",
        @"save" : @"\U0001F4BE",
        @"install" : @"\U0000E778",
        @"cloud" : @"\U00002601",
        @"upload-cloud" : @"\U0000E711",
        @"bookmark" : @"\U0001F516",
        @"bookmarks"  : @"\U0001F4D1",
        @"open-book" : @"\U0001F4D6",
        @"play" : @"\U000025B6",
        @"paus" : @"\U00002016",
        @"record" : @"\U000025CF",
        @"stop" : @"\U000025A0",
        @"ff" : @"\U000023E9",
        @"fb" : @"\U000023EA",
        @"to-start" : @"\U000023EE",
        @"to-end" : @"\U000023ED",
        @"resize-full"  : @"\U0000E744",
        @"resize-small" : @"\U0000E746",
        @"volume" : @"\U000023F7",
        @"sound" : @"\U0001F50A",
        @"mute" : @"\U0001F507",
        @"flow-cascade" : @"\U0001F568",
        @"flow-branch" : @"\U0001F569",
        @"flow-tree" : @"\U0001F56A",
        @"flow-line" : @"\U0001F56B",
        @"flow-parallel" : @"\U0001F56C",
        @"left-bold"  : @"\U0000E4AD",
        @"down-bold" : @"\U0000E4B0",
        @"up-bold" : @"\U0000E4AF",
        @"right-bold" : @"\U0000E4AE",
        @"left" : @"\U00002B05",
        @"down" : @"\U00002B07",
        @"up" : @"\U00002B06",
        @"right" : @"\U000027A1",
        @"circled-left" : @"\U0000E759",
        @"circled-down" : @"\U0000E758",
        @"circled-up"  : @"\U0000E75B",
        @"circled-right" : @"\U0000E75A",
        @"triangle-left" : @"\U000025C2",
        @"triangle-down" : @"\U000025BE",
        @"triangle-up" : @"\U000025B4",
        @"triangle-right" : @"\U000025B8",
        @"chevron-left" : @"\U0000E75D",
        @"chevron-down" : @"\U0000E75C",
        @"chevron-up" : @"\U0000E75F",
        @"chevron-right" : @"\U0000E75E",
        @"chevron-small-left"  : @"\U0000E761",
        @"chevron-small-down" : @"\U0000E760",
        @"chevron-small-up" : @"\U0000E763",
        @"chevron-small-right" : @"\U0000E762",
        @"chevron-thin-left" : @"\U0000E765",
        @"chevron-thin-down" : @"\U0000E764",
        @"chevron-thin-up" : @"\U0000E767",
        @"chevron-thin-right" : @"\U0000E766",
        @"left-thin" : @"\U00002190",
        @"down-thin" : @"\U00002193",
        @"up-thin"  : @"\U00002191",
        @"right-thin" : @"\U00002192",
        @"arrow-combo" : @"\U0000E74F",
        @"three-dots" : @"\U000023F6",
        @"two-dots" : @"\U000023F5",
        @"dot" : @"\U000023F4",
        @"cc" : @"\U0001F545",
        @"cc-by" : @"\U0001F546",
        @"cc-nc" : @"\U0001F547",
        @"cc-nc-eu" : @"\U0001F548",
        @"cc-nc-jp"  : @"\U0001F549",
        @"cc-sa" : @"\U0001F54A",
        @"cc-nd" : @"\U0001F54B",
        @"cc-pd" : @"\U0001F54C",
        @"cc-zero" : @"\U0001F54D",
        @"cc-share" : @"\U0001F54E",
        @"cc-remix" : @"\U0001F54F",
        @"db-logo" : @"\U0001F5F9",
        @"db-shape" : @"\U0001F5FA"
    };
}

#pragma mark - Icons

+ (FIIcon *)phoneIcon {
    return [self iconWithName:@"phone"];
}

+ (FIIcon *)mobileIcon {
    return [self iconWithName:@"mobile"];
}

+ (FIIcon *)mouseIcon {
    return [self iconWithName:@"mouse"];
}

+ (FIIcon *)addressIcon {
    return [self iconWithName:@"address"];
}

+ (FIIcon *)mailIcon {
    return [self iconWithName:@"mail"];
}

+ (FIIcon *)paperPlaneIcon {
    return [self iconWithName:@"paper-plane"];
}

+ (FIIcon *)pencilIcon {
    return [self iconWithName:@"pencil"];
}

+ (FIIcon *)featherIcon {
    return [self iconWithName:@"feather"];
}

+ (FIIcon *)attachIcon {
    return [self iconWithName:@"attach"];
}

+ (FIIcon *)inboxIcon {
    return [self iconWithName:@"inbox"];
}

+ (FIIcon *)replyIcon {
    return [self iconWithName:@"reply"];
}

+ (FIIcon *)replyAllIcon {
    return [self iconWithName:@"reply-all"];
}

+ (FIIcon *)forwardIcon {
    return [self iconWithName:@"forward"];
}

+ (FIIcon *)userIcon {
    return [self iconWithName:@"user"];
}

+ (FIIcon *)usersIcon {
    return [self iconWithName:@"users"];
}

+ (FIIcon *)addUserIcon {
    return [self iconWithName:@"add-user"];
}

+ (FIIcon *)vcardIcon {
    return [self iconWithName:@"vcard"];
}

+ (FIIcon *)exportIcon {
    return [self iconWithName:@"export"];
}

+ (FIIcon *)locationIcon {
    return [self iconWithName:@"location"];
}

+ (FIIcon *)mapIcon {
    return [self iconWithName:@"map"];
}

+ (FIIcon *)compassIcon {
    return [self iconWithName:@"compass"];
}

+ (FIIcon *)directionIcon {
    return [self iconWithName:@"direction"];
}

+ (FIIcon *)haircrossIcon {
    return [self iconWithName:@"hair-cross"];
}

+ (FIIcon *)shareIcon {
    return [self iconWithName:@"share"];
}

+ (FIIcon *)shareableIcon {
    return [self iconWithName:@"shareable"];
}

+ (FIIcon *)heartIcon {
    return [self iconWithName:@"heart"];
}

+ (FIIcon *)heartEmptyIcon {
    return [self iconWithName:@"heart-empty"];
}

+ (FIIcon *)starIcon {
    return [self iconWithName:@"star"];
}

+ (FIIcon *)starEmptyIcon {
    return [self iconWithName:@"star-empty"];
}

+ (FIIcon *)thumbsUpIcon {
    return [self iconWithName:@"thumbs-up"];
}

+ (FIIcon *)thumbsDownIcon {
    return [self iconWithName:@"thumbs-down"];
}

+ (FIIcon *)chatIcon {
    return [self iconWithName:@"chat"];
}

+ (FIIcon *)commentIcon {
    return [self iconWithName:@"comment"];
}

+ (FIIcon *)quoteIcon {
    return [self iconWithName:@"quote"];
}

+ (FIIcon *)homeIcon {
    return [self iconWithName:@"home"];
}

+ (FIIcon *)popupIcon {
    return [self iconWithName:@"popup"];
}

+ (FIIcon *)searchIcon {
    return [self iconWithName:@"search"];
}

+ (FIIcon *)flashlightIcon {
    return [self iconWithName:@"flashlight"];
}

+ (FIIcon *)printIcon {
    return [self iconWithName:@"print"];
}

+ (FIIcon *)bellIcon {
    return [self iconWithName:@"bell"];
}

+ (FIIcon *)linkIcon {
    return [self iconWithName:@"link"];
}

+ (FIIcon *)flagIcon {
    return [self iconWithName:@"flag"];
}

+ (FIIcon *)cogIcon {
    return [self iconWithName:@"cog"];
}

+ (FIIcon *)toolsIcon {
    return [self iconWithName:@"tools"];
}

+ (FIIcon *)trophyIcon {
    return [self iconWithName:@"trophy"];
}

+ (FIIcon *)tagIcon {
    return [self iconWithName:@"tag"];
}

+ (FIIcon *)cameraIcon {
    return [self iconWithName:@"camera"];
}

+ (FIIcon *)megaphoneIcon {
    return [self iconWithName:@"megaphone"];
}

+ (FIIcon *)moonIcon {
    return [self iconWithName:@"moon"];
}

+ (FIIcon *)paletteIcon {
    return [self iconWithName:@"palette"];
}

+ (FIIcon *)leafIcon {
    return [self iconWithName:@"leaf"];
}

+ (FIIcon *)noteIcon {
    return [self iconWithName:@"note"];
}

+ (FIIcon *)beamedNoteIcon {
    return [self iconWithName:@"beamed-note"];
}

+ (FIIcon *)aNewIcon {
    return [self iconWithName:@"new"];
}

+ (FIIcon *)graduationCapIcon {
    return [self iconWithName:@"graduation-cap"];
}

+ (FIIcon *)bookIcon {
    return [self iconWithName:@"book"];
}

+ (FIIcon *)newspaperIcon {
    return [self iconWithName:@"newspaper"];
}

+ (FIIcon *)bagIcon {
    return [self iconWithName:@"bag"];
}

+ (FIIcon *)airplaneIcon {
    return [self iconWithName:@"airplane"];
}

+ (FIIcon *)lifebuoyIcon {
    return [self iconWithName:@"lifebuoy"];
}

+ (FIIcon *)eyeIcon {
    return [self iconWithName:@"eye"];
}

+ (FIIcon *)clockIcon {
    return [self iconWithName:@"clock"];
}

+ (FIIcon *)micIcon {
    return [self iconWithName:@"mic"];
}

+ (FIIcon *)calendarIcon {
    return [self iconWithName:@"calendar"];
}

+ (FIIcon *)flashIcon {
    return [self iconWithName:@"flash"];
}

+ (FIIcon *)thunderCloudIcon {
    return [self iconWithName:@"thunder-cloud"];
}

+ (FIIcon *)dropletIcon {
    return [self iconWithName:@"droplet"];
}

+ (FIIcon *)cdIcon {
    return [self iconWithName:@"cd"];
}

+ (FIIcon *)briefcaseIcon {
    return [self iconWithName:@"briefcase"];
}

+ (FIIcon *)airIcon {
    return [self iconWithName:@"air"];
}

+ (FIIcon *)hourglassIcon {
    return [self iconWithName:@"hourglass"];
}

+ (FIIcon *)gaugeIcon {
    return [self iconWithName:@"gauge"];
}

+ (FIIcon *)languageIcon {
    return [self iconWithName:@"language"];
}

+ (FIIcon *)networkIcon {
    return [self iconWithName:@"network"];
}

+ (FIIcon *)keyIcon {
    return [self iconWithName:@"key"];
}

+ (FIIcon *)batteryIcon {
    return [self iconWithName:@"battery"];
}

+ (FIIcon *)bucketIcon {
    return [self iconWithName:@"bucket"];
}

+ (FIIcon *)magnetIcon {
    return [self iconWithName:@"magnet"];
}

+ (FIIcon *)driveIcon {
    return [self iconWithName:@"drive"];
}

+ (FIIcon *)cupIcon {
    return [self iconWithName:@"cup"];
}

+ (FIIcon *)rocketIcon {
    return [self iconWithName:@"rocket"];
}

+ (FIIcon *)brushIcon {
    return [self iconWithName:@"brush"];
}

+ (FIIcon *)suitcaseIcon {
    return [self iconWithName:@"suitcase"];
}

+ (FIIcon *)trafficConeIcon {
    return [self iconWithName:@"traffic-cone"];
}

+ (FIIcon *)globeIcon {
    return [self iconWithName:@"globe"];
}

+ (FIIcon *)keyboardIcon {
    return [self iconWithName:@"keyboard"];
}

+ (FIIcon *)browserIcon {
    return [self iconWithName:@"browser"];
}

+ (FIIcon *)publishIcon {
    return [self iconWithName:@"publish"];
}

+ (FIIcon *)progress3Icon {
    return [self iconWithName:@"progress-3"];
}

+ (FIIcon *)progress2Icon {
    return [self iconWithName:@"progress-2"];
}

+ (FIIcon *)progress1Icon {
    return [self iconWithName:@"progress-1"];
}

+ (FIIcon *)progress0Icon {
    return [self iconWithName:@"progress-0"];
}

+ (FIIcon *)lightDownIcon {
    return [self iconWithName:@"light-down"];
}

+ (FIIcon *)lightUpIcon {
    return [self iconWithName:@"light-up"];
}

+ (FIIcon *)adjustIcon {
    return [self iconWithName:@"adjust"];
}

+ (FIIcon *)codeIcon {
    return [self iconWithName:@"code"];
}

+ (FIIcon *)monitorIcon {
    return [self iconWithName:@"monitor"];
}

+ (FIIcon *)infinityIcon {
    return [self iconWithName:@"infinity"];
}

+ (FIIcon *)lightBulbIcon {
    return [self iconWithName:@"light-bulb"];
}

+ (FIIcon *)creditCardIcon {
    return [self iconWithName:@"credit-card"];
}

+ (FIIcon *)databaseIcon {
    return [self iconWithName:@"database"];
}

+ (FIIcon *)voicemailIcon {
    return [self iconWithName:@"voicemail"];
}

+ (FIIcon *)clipboardIcon {
    return [self iconWithName:@"clipboard"];
}

+ (FIIcon *)cartIcon {
    return [self iconWithName:@"cart"];
}

+ (FIIcon *)boxIcon {
    return [self iconWithName:@"box"];
}

+ (FIIcon *)ticketIcon {
    return [self iconWithName:@"ticket"];
}

+ (FIIcon *)rssIcon {
    return [self iconWithName:@"rss"];
}

+ (FIIcon *)signalIcon {
    return [self iconWithName:@"signal"];
}

+ (FIIcon *)thermometerIcon {
    return [self iconWithName:@"thermometer"];
}

+ (FIIcon *)waterIcon {
    return [self iconWithName:@"water"];
}

+ (FIIcon *)swedenIcon {
    return [self iconWithName:@"sweden"];
}

+ (FIIcon *)lineGraphIcon {
    return [self iconWithName:@"line-graph"];
}

+ (FIIcon *)pieChartIcon {
    return [self iconWithName:@"pie-chart"];
}

+ (FIIcon *)barGraphIcon {
    return [self iconWithName:@"bar-graph"];
}

+ (FIIcon *)areaGraphIcon {
    return [self iconWithName:@"area-graph"];
}

+ (FIIcon *)lockIcon {
    return [self iconWithName:@"lock"];
}

+ (FIIcon *)lockOpenIcon {
    return [self iconWithName:@"lock-open"];
}

+ (FIIcon *)logoutIcon {
    return [self iconWithName:@"logout"];
}

+ (FIIcon *)loginIcon {
    return [self iconWithName:@"login"];
}

+ (FIIcon *)checkIcon {
    return [self iconWithName:@"check"];
}

+ (FIIcon *)crossIcon {
    return [self iconWithName:@"cross"];
}

+ (FIIcon *)squaredMinusIcon {
    return [self iconWithName:@"squared-minus"];
}

+ (FIIcon *)squaredPlusIcon {
    return [self iconWithName:@"squared-plus"];
}

+ (FIIcon *)squaredCrossIcon {
    return [self iconWithName:@"squared-cross"];
}

+ (FIIcon *)circledMinusIcon {
    return [self iconWithName:@"circled-minus"];
}

+ (FIIcon *)circledPlusIcon {
    return [self iconWithName:@"circled-plus"];
}

+ (FIIcon *)circledCrossIcon {
    return [self iconWithName:@"circled-cross"];
}

+ (FIIcon *)minusIcon {
    return [self iconWithName:@"minus"];
}

+ (FIIcon *)plusIcon {
    return [self iconWithName:@"plus"];
}

+ (FIIcon *)eraseIcon {
    return [self iconWithName:@"erase"];
}

+ (FIIcon *)blockIcon {
    return [self iconWithName:@"block"];
}

+ (FIIcon *)infoIcon {
    return [self iconWithName:@"info"];
}

+ (FIIcon *)circledInfoIcon {
    return [self iconWithName:@"circled-info"];
}

+ (FIIcon *)helpIcon {
    return [self iconWithName:@"help"];
}

+ (FIIcon *)circledHelpIcon {
    return [self iconWithName:@"circled-help"];
}

+ (FIIcon *)warningIcon {
    return [self iconWithName:@"warning"];
}

+ (FIIcon *)cycleIcon {
    return [self iconWithName:@"cycle"];
}

+ (FIIcon *)cwIcon {
    return [self iconWithName:@"cw"];
}

+ (FIIcon *)ccwIcon {
    return [self iconWithName:@"ccw"];
}

+ (FIIcon *)shuffleIcon {
    return [self iconWithName:@"shuffle"];
}

+ (FIIcon *)backIcon {
    return [self iconWithName:@"back"];
}

+ (FIIcon *)levelDownIcon {
    return [self iconWithName:@"level-down"];
}

+ (FIIcon *)retweetIcon {
    return [self iconWithName:@"retweet"];
}

+ (FIIcon *)loopIcon {
    return [self iconWithName:@"loop"];
}

+ (FIIcon *)backInTimeIcon {
    return [self iconWithName:@"back-in-time"];
}

+ (FIIcon *)levelUpIcon {
    return [self iconWithName:@"level-up"];
}

+ (FIIcon *)switchIcon {
    return [self iconWithName:@"switch"];
}

+ (FIIcon *)numberedListIcon {
    return [self iconWithName:@"numbered-list"];
}

+ (FIIcon *)addToListIcon {
    return [self iconWithName:@"add-to-list"];
}

+ (FIIcon *)layoutIcon {
    return [self iconWithName:@"layout"];
}

+ (FIIcon *)listIcon {
    return [self iconWithName:@"list"];
}

+ (FIIcon *)textDocIcon {
    return [self iconWithName:@"text-doc"];
}

+ (FIIcon *)textDocInvertedIcon {
    return [self iconWithName:@"text-doc-inverted"];
}

+ (FIIcon *)docIcon {
    return [self iconWithName:@"doc"];
}

+ (FIIcon *)docsIcon {
    return [self iconWithName:@"docs"];
}

+ (FIIcon *)landscapeDocIcon {
    return [self iconWithName:@"landscape-doc"];
}

+ (FIIcon *)pictureIcon {
    return [self iconWithName:@"picture"];
}

+ (FIIcon *)videoIcon {
    return [self iconWithName:@"video"];
}

+ (FIIcon *)musicIcon {
    return [self iconWithName:@"music"];
}

+ (FIIcon *)folderIcon {
    return [self iconWithName:@"folder"];
}

+ (FIIcon *)archiveIcon {
    return [self iconWithName:@"archive"];
}

+ (FIIcon *)trashIcon {
    return [self iconWithName:@"trash"];
}

+ (FIIcon *)uploadIcon {
    return [self iconWithName:@"upload"];
}

+ (FIIcon *)downloadIcon {
    return [self iconWithName:@"download"];
}

+ (FIIcon *)saveIcon {
    return [self iconWithName:@"save"];
}

+ (FIIcon *)installIcon {
    return [self iconWithName:@"install"];
}

+ (FIIcon *)cloudIcon {
    return [self iconWithName:@"cloud"];
}

+ (FIIcon *)uploadCloudIcon {
    return [self iconWithName:@"upload-cloud"];
}

+ (FIIcon *)bookmarkIcon {
    return [self iconWithName:@"bookmark"];
}

+ (FIIcon *)bookmarksIcon {
    return [self iconWithName:@"bookmarks"];
}

+ (FIIcon *)openBookIcon {
    return [self iconWithName:@"open-book"];
}

+ (FIIcon *)playIcon {
    return [self iconWithName:@"play"];
}

+ (FIIcon *)pausIcon {
    return [self iconWithName:@"paus"];
}

+ (FIIcon *)recordIcon {
    return [self iconWithName:@"record"];
}

+ (FIIcon *)stopIcon {
    return [self iconWithName:@"stop"];
}

+ (FIIcon *)ffIcon {
    return [self iconWithName:@"ff"];
}

+ (FIIcon *)fbIcon {
    return [self iconWithName:@"fb"];
}

+ (FIIcon *)toStartIcon {
    return [self iconWithName:@"to-start"];
}

+ (FIIcon *)toEndIcon {
    return [self iconWithName:@"to-end"];
}

+ (FIIcon *)resizeFullIcon {
    return [self iconWithName:@"resize-full"];
}

+ (FIIcon *)resizeSmallIcon {
    return [self iconWithName:@"resize-small"];
}

+ (FIIcon *)volumeIcon {
    return [self iconWithName:@"volume"];
}

+ (FIIcon *)soundIcon {
    return [self iconWithName:@"sound"];
}

+ (FIIcon *)muteIcon {
    return [self iconWithName:@"mute"];
}

+ (FIIcon *)flowCascadeIcon {
    return [self iconWithName:@"flow-cascade"];
}

+ (FIIcon *)flowBranchIcon {
    return [self iconWithName:@"flow-branch"];
}

+ (FIIcon *)flowTreeIcon {
    return [self iconWithName:@"flow-tree"];
}

+ (FIIcon *)flowLineIcon {
    return [self iconWithName:@"flow-line"];
}

+ (FIIcon *)flowParallelIcon {
    return [self iconWithName:@"flow-parallel"];
}

+ (FIIcon *)leftBoldIcon {
    return [self iconWithName:@"left-bold"];
}

+ (FIIcon *)downBoldIcon {
    return [self iconWithName:@"down-bold"];
}

+ (FIIcon *)upBoldIcon {
    return [self iconWithName:@"up-bold"];
}

+ (FIIcon *)rightBoldIcon {
    return [self iconWithName:@"right-bold"];
}

+ (FIIcon *)leftIcon {
    return [self iconWithName:@"left"];
}

+ (FIIcon *)downIcon {
    return [self iconWithName:@"down"];
}

+ (FIIcon *)upIcon {
    return [self iconWithName:@"up"];
}

+ (FIIcon *)rightIcon {
    return [self iconWithName:@"right"];
}

+ (FIIcon *)circledLeftIcon {
    return [self iconWithName:@"circled-left"];
}

+ (FIIcon *)circledDownIcon {
    return [self iconWithName:@"circled-down"];
}

+ (FIIcon *)circledUpIcon {
    return [self iconWithName:@"circled-up"];
}

+ (FIIcon *)circledRightIcon {
    return [self iconWithName:@"circled-right"];
}

+ (FIIcon *)triangleLeftIcon {
    return [self iconWithName:@"triangle-left"];
}

+ (FIIcon *)triangleDownIcon {
    return [self iconWithName:@"triangle-down"];
}

+ (FIIcon *)triangleUpIcon {
    return [self iconWithName:@"triangle-up"];
}

+ (FIIcon *)triangleRightIcon {
    return [self iconWithName:@"triangle-right"];
}

+ (FIIcon *)chevronLeftIcon {
    return [self iconWithName:@"chevron-left"];
}

+ (FIIcon *)chevronDownIcon {
    return [self iconWithName:@"chevron-down"];
}

+ (FIIcon *)chevronUpIcon {
    return [self iconWithName:@"chevron-up"];
}

+ (FIIcon *)chevronRightIcon {
    return [self iconWithName:@"chevron-right"];
}

+ (FIIcon *)chevronSmallLeftIcon {
    return [self iconWithName:@"chevron-small-left"];
}

+ (FIIcon *)chevronSmallDownIcon {
    return [self iconWithName:@"chevron-small-down"];
}

+ (FIIcon *)chevronSmallUpIcon {
    return [self iconWithName:@"chevron-small-up"];
}

+ (FIIcon *)chevronSmallRightIcon {
    return [self iconWithName:@"chevron-small-right"];
}

+ (FIIcon *)chevronThinLeftIcon {
    return [self iconWithName:@"chevron-thin-left"];
}

+ (FIIcon *)chevronThinDownIcon {
    return [self iconWithName:@"chevron-thin-down"];
}

+ (FIIcon *)chevronThinUpIcon {
    return [self iconWithName:@"chevron-thin-up"];
}

+ (FIIcon *)chevronThinRightIcon {
    return [self iconWithName:@"chevron-thin-right"];
}

+ (FIIcon *)leftThinIcon {
    return [self iconWithName:@"left-thin"];
}

+ (FIIcon *)downThinIcon {
    return [self iconWithName:@"down-thin"];
}

+ (FIIcon *)upThinIcon {
    return [self iconWithName:@"up-thin"];
}

+ (FIIcon *)rightThinIcon {
    return [self iconWithName:@"right-thin"];
}

+ (FIIcon *)arrowComboIcon {
    return [self iconWithName:@"arrow-combo"];
}

+ (FIIcon *)threeDotsIcon {
    return [self iconWithName:@"three-dots"];
}

+ (FIIcon *)twoDotsIcon {
    return [self iconWithName:@"two-dots"];
}

+ (FIIcon *)dotIcon {
    return [self iconWithName:@"dot"];
}

+ (FIIcon *)ccIcon {
    return [self iconWithName:@"cc"];
}

+ (FIIcon *)ccbyIcon {
    return [self iconWithName:@"cc-by"];
}

+ (FIIcon *)ccncIcon {
    return [self iconWithName:@"cc-nc"];
}

+ (FIIcon *)ccnceuIcon {
    return [self iconWithName:@"cc-nc-eu"];
}

+ (FIIcon *)ccncjpIcon {
    return [self iconWithName:@"cc-nc-jp"];
}

+ (FIIcon *)ccsaIcon {
    return [self iconWithName:@"cc-sa"];
}

+ (FIIcon *)ccndIcon {
    return [self iconWithName:@"cc-nd"];
}

+ (FIIcon *)ccpdIcon {
    return [self iconWithName:@"cc-pd"];
}

+ (FIIcon *)cczeroIcon {
    return [self iconWithName:@"cc-zero"];
}

+ (FIIcon *)ccshareIcon {
    return [self iconWithName:@"cc-share"];
}

+ (FIIcon *)ccremixIcon {
    return [self iconWithName:@"cc-remix"];
}

+ (FIIcon *)dblogoIcon {
    return [self iconWithName:@"db-logo"];
}

+ (FIIcon *)dbshapeIcon {
    return [self iconWithName:@"db-shape"];
}

@end
