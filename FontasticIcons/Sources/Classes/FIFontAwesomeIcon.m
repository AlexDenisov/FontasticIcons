//
//  FIFontAwesomeIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 17.11.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIFontAwesomeIcon.h"
#import "FIFont.h"

@implementation FIFontAwesomeIcon

+ (FIFont *)iconFont {
    return [FIFont fontAwesomeFont];
}

#pragma mark - Icons Dictionary

+ (NSDictionary *)iconsDictionary {
    return @{
    @"glass" : @"\U0001f378",
    @"music" : @"\U0000266b",
    @"search" : @"\U0001f50d",
    @"mail" : @"\U00002709",
    @"mail-alt" : @"\U0000f0e0",
    @"heart" : @"\U00002665",
    @"heart-empty" : @"\U00002661",
    @"star" : @"\U00002605",
    @"star-empty" : @"\U00002606",
    @"star-half" : @"\U0000e701",
    @"user" : @"\U0001f464",
    @"users" : @"\U0001f465",
    @"user-md" : @"\U0000f200",
    @"video" : @"\U0001f3ac",
    @"videocam" : @"\U0001f3a5",
    @"picture" : @"\U0001f304",
    @"camera" : @"\U0001f4f7",
    @"camera-alt" : @"\U0000e70f",
    @"th-large" : @"\U0000e708",
    @"th" : @"\U0000268f",
    @"th-list" : @"\U00002630",
    @"ok" : @"\U00002713",
    @"ok-circle" : @"\U00002714",
    @"ok-circle2" : @"\U0000e702",
    @"cancel" : @"\U00002715",
    @"cancel-circle" : @"\U00002716",
    @"cancel-circle2" : @"\U0000e703",
    @"plus" : @"\U00002b00",
    @"plus-circle" : @"\U00002795",
    @"minus" : @"\U00002d00",
    @"minus-circle" : @"\U00002796",
    @"help-circle" : @"\U0000e704",
    @"info-circle" : @"\U0000e705",
    @"home" : @"\U00002302",
    @"link" : @"\U0001f517",
    @"link-ext" : @"\U0000f08e",
    @"attach" : @"\U0001f4ce",
    @"lock" : @"\U0001f512",
    @"lock-open" : @"\U0001f513",
    @"pin" : @"\U0001f4cc",
    @"eye" : @"\U0000e70a",
    @"eye-off" : @"\U0000e70b",
    @"tag" : @"\U0000e70c",
    @"tags" : @"\U0000e70d",
    @"bookmark" : @"\U0001f516",
    @"bookmark-empty" : @"\U0000f097",
    @"flag" : @"\U00002691",
    @"thumbs-up" : @"\U0001f44d",
    @"thumbs-down" : @"\U0001f44e",
    @"download" : @"\U0001f4e5",
    @"upload" : @"\U0001f4e4",
    @"forward" : @"\U000027a6",
    @"export" : @"\U0000e715",
    @"pencil" : @"\U0000270e",
    @"edit" : @"\U0000270d",
    @"print" : @"\U0000e716",
    @"retweet" : @"\U0000e717",
    @"comment" : @"\U0000e718",
    @"chat" : @"\U0000e720",
    @"comment" : @"\U0000f0e5",
    @"chat" : @"\U0000f0e6",
    @"bell" : @"\U0001f514",
    @"attention" : @"\U000026a0",
    @"attention-circle" : @"\U00002757",
    @"location" : @"\U0000e724",
    @"trash" : @"\U0000e729",
    @"doc" : @"\U0001f4c4",
    @"docs" : @"\U0000f0c5",
    @"folder" : @"\U0001f4c1",
    @"folder-open" : @"\U0001f4c2",
    @"rss" : @"\U0000f09e",
    @"phone" : @"\U0001f4de",
    @"phone-squared" : @"\U0000f098",
    @"menu" : @"\U0000f0c9",
    @"cog" : @"\U00002699",
    @"cog-alt" : @"\U000026ef",
    @"wrench" : @"\U0001f527",
    @"basket" : @"\U0000e73d",
    @"calendar" : @"\U0001f4c5",
    @"login" : @"\U0000e740",
    @"logout" : @"\U0000e741",
    @"volume-off" : @"\U0001f507",
    @"volume-down" : @"\U0001f509",
    @"volume-up" : @"\U0001f50a",
    @"headphones" : @"\U0001f3a7",
    @"clock" : @"\U0001f554",
    @"block" : @"\U0001f6ab",
    @"resize-full" : @"\U0000e744",
    @"resize-full-alt" : @"\U0000f0b2",
    @"resize-small" : @"\U0000e746",
    @"resize-vertical" : @"\U00002b0c",
    @"resize-horizontal" : @"\U00002b0d",
    @"move" : @"\U0000f047",
    @"zoom-in" : @"\U0000e750",
    @"zoom-out" : @"\U0000e751",
    @"down-circle2" : @"\U0000e758",
    @"up-circle2" : @"\U0000e75b",
    @"down-dir" : @"\U000025be",
    @"up-dir" : @"\U000025b4",
    @"left-dir" : @"\U000025c2",
    @"right-dir" : @"\U000025b8",
    @"down-open" : @"\U0000e75c",
    @"left-open" : @"\U0000e75d",
    @"right-open" : @"\U0000e75e",
    @"up-open" : @"\U0000e75f",
    @"down" : @"\U00002193",
    @"left" : @"\U00002190",
    @"right" : @"\U00002192",
    @"up" : @"\U00002191",
    @"right-hand" : @"\U0000261e",
    @"left-hand" : @"\U0000261c",
    @"up-hand" : @"\U0000261d",
    @"down-hand" : @"\U0000261f",
    @"left-circled" : @"\U0000f0a8",
    @"right-circled" : @"\U0000f0a9",
    @"up-circled" : @"\U0000f0aa",
    @"down-circled" : @"\U0000f0ab",
    @"cw" : @"\U000027f3",
    @"ccw" : @"\U000027f2",
    @"arrows-cw" : @"\U0000e760",
    @"shuffle" : @"\U0001f500",
    @"play" : @"\U000025b6",
    @"play-circle2" : @"\U0000e761",
    @"stop" : @"\U000025aa",
    @"pause" : @"\U00002389",
    @"to-end" : @"\U000023ed",
    @"to-end-alt" : @"\U0000e762",
    @"to-start" : @"\U000023ee",
    @"to-start-alt" : @"\U0000e763",
    @"fast-fw" : @"\U000023e9",
    @"fast-bw" : @"\U000023ea",
    @"eject" : @"\U00002ecf",
    @"target" : @"\U0001f3af",
    @"signal" : @"\U0001f4f6",
    @"award" : @"\U0001f3c9",
    @"inbox" : @"\U0000e777",
    @"globe" : @"\U0001f30e",
    @"cloud" : @"\U00002601",
    @"flash" : @"\U000026a1",
    @"umbrella" : @"\U00002602",
    @"flight" : @"\U00002708",
    @"leaf" : @"\U0001f342",
    @"font" : @"\U0000e779",
    @"bold" : @"\U0000e77a",
    @"italic" : @"\U0000e77b",
    @"text-height" : @"\U0000e77c",
    @"text-width" : @"\U0000e77d",
    @"align-left" : @"\U0000e77e",
    @"align-center" : @"\U0000e77f",
    @"align-right" : @"\U0000e780",
    @"align-justify" : @"\U0000e781",
    @"list" : @"\U0000e782",
    @"indent-left" : @"\U0000e783",
    @"indent-right" : @"\U0000e784",
    @"list-bullet" : @"\U0000f0ca",
    @"list-numbered" : @"\U0000f0cb",
    @"strike" : @"\U0000f0cc",
    @"underline" : @"\U0000f0cd",
    @"table" : @"\U0000f0ce",
    @"columns" : @"\U0000f0db",
    @"scissors" : @"\U00002702",
    @"paste" : @"\U0000f0ea",
    @"briefcase" : @"\U0001f4bc",
    @"off" : @"\U0000e78e",
    @"road" : @"\U0000e78f",
    @"list-alt" : @"\U0000e790",
    @"qrcode" : @"\U0000e791",
    @"barcode" : @"\U0000e792",
    @"book" : @"\U0001f4d5",
    @"ajust" : @"\U0000e793",
    @"tint" : @"\U0000e794",
    @"check" : @"\U00002611",
    @"check-empty" : @"\U0000f096",
    @"asterisk" : @"\U00002731",
    @"gift" : @"\U0001f381",
    @"fire" : @"\U0001f525",
    @"magnet" : @"\U0000e7a1",
    @"chart-bar" : @"\U0001f4ca",
    @"credit-card" : @"\U0001f4b3",
    @"floppy" : @"\U0001f4be",
    @"megaphone" : @"\U0001f4e3",
    @"hdd" : @"\U0000f0a0",
    @"key" : @"\U0001f511",
    @"certificate" : @"\U0000f0a3",
    @"tasks" : @"\U0000f0ae",
    @"filter" : @"\U0000f0b0",
    @"beaker" : @"\U0000f0c3",
    @"magic" : @"\U0000f0d0",
    @"truck" : @"\U0001f69a",
    @"money" : @"\U0000f0d6",
    @"sort" : @"\U0000f0dc",
    @"sort-down" : @"\U0000f0dd",
    @"sort-up" : @"\U0000f0de",
    @"hammer" : @"\U0001f528",
    @"gauge" : @"\U0000f0e4",
    @"sitemap" : @"\U0000f0e8",
    @"github-squared" : @"\U0000f300",
    @"github" : @"\U0000f09b",
    @"twitter-squared" : @"\U0000f304",
    @"twitter" : @"\U0000f099",
    @"facebook-squared" : @"\U0000f308",
    @"facebook" : @"\U0000f09a",
    @"linkedin-squared" : @"\U0000f30c",
    @"linkedin" : @"\U0000f0e1",
    @"pinterest-circled" : @"\U0000f0d2",
    @"pinterest-squared" : @"\U0000f0d3",
    @"gplus-squared" : @"\U0000f0d4",
    @"gplus" : @"\U0000f0d5",
    @"blank" : @"\U0000f0c8",
    @"lemon" : @"\U0001f34b"
    };
}

#pragma mark - Icons

+ (FIIcon *)glassIcon {
    return [self iconWithName:@"glass"];
}

+ (FIIcon *)musicIcon {
    return [self iconWithName:@"music"];
}

+ (FIIcon *)searchIcon {
    return [self iconWithName:@"search"];
}

+ (FIIcon *)mailIcon {
    return [self iconWithName:@"mail"];
}

+ (FIIcon *)mailAltIcon {
    return [self iconWithName:@"mail-alt"];
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

+ (FIIcon *)starHalfIcon {
    return [self iconWithName:@"star-half"];
}

+ (FIIcon *)userIcon {
    return [self iconWithName:@"user"];
}

+ (FIIcon *)usersIcon {
    return [self iconWithName:@"users"];
}

+ (FIIcon *)userMdIcon {
    return [self iconWithName:@"user-md"];
}

+ (FIIcon *)videoIcon {
    return [self iconWithName:@"video"];
}

+ (FIIcon *)videocamIcon {
    return [self iconWithName:@"videocam"];
}

+ (FIIcon *)pictureIcon {
    return [self iconWithName:@"picture"];
}

+ (FIIcon *)cameraIcon {
    return [self iconWithName:@"camera"];
}

+ (FIIcon *)cameraAltIcon {
    return [self iconWithName:@"camera-alt"];
}

+ (FIIcon *)thLargeIcon {
    return [self iconWithName:@"th-large"];
}

+ (FIIcon *)thIcon {
    return [self iconWithName:@"th"];
}

+ (FIIcon *)thListIcon {
    return [self iconWithName:@"th-list"];
}

+ (FIIcon *)okIcon {
    return [self iconWithName:@"ok"];
}

+ (FIIcon *)okCircleIcon {
    return [self iconWithName:@"ok-circle"];
}

+ (FIIcon *)okCircle2Icon {
    return [self iconWithName:@"ok-circle2"];
}

+ (FIIcon *)cancelIcon {
    return [self iconWithName:@"cancel"];
}

+ (FIIcon *)cancelCircleIcon {
    return [self iconWithName:@"cancel-circle"];
}

+ (FIIcon *)cancelCircle2Icon {
    return [self iconWithName:@"cancel-circle2"];
}

+ (FIIcon *)plusIcon {
    return [self iconWithName:@"plus"];
}

+ (FIIcon *)plusCircleIcon {
    return [self iconWithName:@"plus-circle"];
}

+ (FIIcon *)minusIcon {
    return [self iconWithName:@"minus"];
}

+ (FIIcon *)minusCircleIcon {
    return [self iconWithName:@"minus-circle"];
}

+ (FIIcon *)helpCircleIcon {
    return [self iconWithName:@"help-circle"];
}

+ (FIIcon *)infoCircleIcon {
    return [self iconWithName:@"info-circle"];
}

+ (FIIcon *)homeIcon {
    return [self iconWithName:@"home"];
}

+ (FIIcon *)linkIcon {
    return [self iconWithName:@"link"];
}

+ (FIIcon *)linkExtIcon {
    return [self iconWithName:@"link-ext"];
}

+ (FIIcon *)attachIcon {
    return [self iconWithName:@"attach"];
}

+ (FIIcon *)lockIcon {
    return [self iconWithName:@"lock"];
}

+ (FIIcon *)lockOpenIcon {
    return [self iconWithName:@"lock-open"];
}

+ (FIIcon *)pinIcon {
    return [self iconWithName:@"pin"];
}

+ (FIIcon *)eyeIcon {
    return [self iconWithName:@"eye"];
}

+ (FIIcon *)eyeOffIcon {
    return [self iconWithName:@"eye-off"];
}

+ (FIIcon *)tagIcon {
    return [self iconWithName:@"tag"];
}

+ (FIIcon *)tagsIcon {
    return [self iconWithName:@"tags"];
}

+ (FIIcon *)bookmarkIcon {
    return [self iconWithName:@"bookmark"];
}

+ (FIIcon *)bookmarkEmptyIcon {
    return [self iconWithName:@"bookmark-empty"];
}

+ (FIIcon *)flagIcon {
    return [self iconWithName:@"flag"];
}

+ (FIIcon *)thumbsUpIcon {
    return [self iconWithName:@"thumbs-up"];
}

+ (FIIcon *)thumbsDownIcon {
    return [self iconWithName:@"thumbs-down"];
}

+ (FIIcon *)downloadIcon {
    return [self iconWithName:@"download"];
}

+ (FIIcon *)uploadIcon {
    return [self iconWithName:@"upload"];
}

+ (FIIcon *)forwardIcon {
    return [self iconWithName:@"forward"];
}

+ (FIIcon *)exportIcon {
    return [self iconWithName:@"export"];
}

+ (FIIcon *)pencilIcon {
    return [self iconWithName:@"pencil"];
}

+ (FIIcon *)editIcon {
    return [self iconWithName:@"edit"];
}

+ (FIIcon *)printIcon {
    return [self iconWithName:@"print"];
}

+ (FIIcon *)retweetIcon {
    return [self iconWithName:@"retweet"];
}

+ (FIIcon *)commentIcon {
    return [self iconWithName:@"comment"];
}

+ (FIIcon *)chatIcon {
    return [self iconWithName:@"chat"];
}

+ (FIIcon *)bellIcon {
    return [self iconWithName:@"bell"];
}

+ (FIIcon *)attentionIcon {
    return [self iconWithName:@"attention"];
}

+ (FIIcon *)attentionCircleIcon {
    return [self iconWithName:@"attention-circle"];
}

+ (FIIcon *)locationIcon {
    return [self iconWithName:@"location"];
}

+ (FIIcon *)trashIcon {
    return [self iconWithName:@"trash"];
}

+ (FIIcon *)docIcon {
    return [self iconWithName:@"doc"];
}

+ (FIIcon *)docsIcon {
    return [self iconWithName:@"docs"];
}

+ (FIIcon *)folderIcon {
    return [self iconWithName:@"folder"];
}

+ (FIIcon *)folderOpenIcon {
    return [self iconWithName:@"folder-open"];
}

+ (FIIcon *)rssIcon {
    return [self iconWithName:@"rss"];
}

+ (FIIcon *)phoneIcon {
    return [self iconWithName:@"phone"];
}

+ (FIIcon *)phoneSquaredIcon {
    return [self iconWithName:@"phone-squared"];
}

+ (FIIcon *)menuIcon {
    return [self iconWithName:@"menu"];
}

+ (FIIcon *)cogIcon {
    return [self iconWithName:@"cog"];
}

+ (FIIcon *)cogAltIcon {
    return [self iconWithName:@"cog-alt"];
}

+ (FIIcon *)wrenchIcon {
    return [self iconWithName:@"wrench"];
}

+ (FIIcon *)basketIcon {
    return [self iconWithName:@"basket"];
}

+ (FIIcon *)calendarIcon {
    return [self iconWithName:@"calendar"];
}

+ (FIIcon *)loginIcon {
    return [self iconWithName:@"login"];
}

+ (FIIcon *)logoutIcon {
    return [self iconWithName:@"logout"];
}

+ (FIIcon *)volumeOffIcon {
    return [self iconWithName:@"volume-off"];
}

+ (FIIcon *)volumeDownIcon {
    return [self iconWithName:@"volume-down"];
}

+ (FIIcon *)volumeUpIcon {
    return [self iconWithName:@"volume-up"];
}

+ (FIIcon *)headphonesIcon {
    return [self iconWithName:@"headphones"];
}

+ (FIIcon *)clockIcon {
    return [self iconWithName:@"clock"];
}

+ (FIIcon *)blockIcon {
    return [self iconWithName:@"block"];
}

+ (FIIcon *)resizeFullIcon {
    return [self iconWithName:@"resize-full"];
}

+ (FIIcon *)resizeFullAltIcon {
    return [self iconWithName:@"resize-full-alt"];
}

+ (FIIcon *)resizeSmallIcon {
    return [self iconWithName:@"resize-small"];
}

+ (FIIcon *)resizeVerticalIcon {
    return [self iconWithName:@"resize-vertical"];
}

+ (FIIcon *)resizeHorizontalIcon {
    return [self iconWithName:@"resize-horizontal"];
}

+ (FIIcon *)moveIcon {
    return [self iconWithName:@"move"];
}

+ (FIIcon *)zoomInIcon {
    return [self iconWithName:@"zoom-in"];
}

+ (FIIcon *)zoomOutIcon {
    return [self iconWithName:@"zoom-out"];
}

+ (FIIcon *)downCircle2Icon {
    return [self iconWithName:@"down-circle2"];
}

+ (FIIcon *)upCircle2Icon {
    return [self iconWithName:@"up-circle2"];
}

+ (FIIcon *)downDirIcon {
    return [self iconWithName:@"down-dir"];
}

+ (FIIcon *)upDirIcon {
    return [self iconWithName:@"up-dir"];
}

+ (FIIcon *)leftDirIcon {
    return [self iconWithName:@"left-dir"];
}

+ (FIIcon *)rightDirIcon {
    return [self iconWithName:@"right-dir"];
}

+ (FIIcon *)downOpenIcon {
    return [self iconWithName:@"down-open"];
}

+ (FIIcon *)leftOpenIcon {
    return [self iconWithName:@"left-open"];
}

+ (FIIcon *)rightOpenIcon {
    return [self iconWithName:@"right-open"];
}

+ (FIIcon *)upOpenIcon {
    return [self iconWithName:@"up-open"];
}

+ (FIIcon *)downIcon {
    return [self iconWithName:@"down"];
}

+ (FIIcon *)leftIcon {
    return [self iconWithName:@"left"];
}

+ (FIIcon *)rightIcon {
    return [self iconWithName:@"right"];
}

+ (FIIcon *)upIcon {
    return [self iconWithName:@"up"];
}

+ (FIIcon *)rightHandIcon {
    return [self iconWithName:@"right-hand"];
}

+ (FIIcon *)leftHandIcon {
    return [self iconWithName:@"left-hand"];
}

+ (FIIcon *)upHandIcon {
    return [self iconWithName:@"up-hand"];
}

+ (FIIcon *)downHandIcon {
    return [self iconWithName:@"down-hand"];
}

+ (FIIcon *)leftCircledIcon {
    return [self iconWithName:@"left-circled"];
}

+ (FIIcon *)rightCircledIcon {
    return [self iconWithName:@"right-circled"];
}

+ (FIIcon *)upCircledIcon {
    return [self iconWithName:@"up-circled"];
}

+ (FIIcon *)downCircledIcon {
    return [self iconWithName:@"down-circled"];
}

+ (FIIcon *)cwIcon {
    return [self iconWithName:@"cw"];
}

+ (FIIcon *)ccwIcon {
    return [self iconWithName:@"ccw"];
}

+ (FIIcon *)arrowsCwIcon {
    return [self iconWithName:@"arrows-cw"];
}

+ (FIIcon *)shuffleIcon {
    return [self iconWithName:@"shuffle"];
}

+ (FIIcon *)playIcon {
    return [self iconWithName:@"play"];
}

+ (FIIcon *)playCircle2Icon {
    return [self iconWithName:@"play-circle2"];
}

+ (FIIcon *)stopIcon {
    return [self iconWithName:@"stop"];
}

+ (FIIcon *)pauseIcon {
    return [self iconWithName:@"pause"];
}

+ (FIIcon *)toEndIcon {
    return [self iconWithName:@"to-end"];
}

+ (FIIcon *)toEndAltIcon {
    return [self iconWithName:@"to-end-alt"];
}

+ (FIIcon *)toStartIcon {
    return [self iconWithName:@"to-start"];
}

+ (FIIcon *)toStartAltIcon {
    return [self iconWithName:@"to-start-alt"];
}

+ (FIIcon *)fastFwIcon {
    return [self iconWithName:@"fast-fw"];
}

+ (FIIcon *)fastBwIcon {
    return [self iconWithName:@"fast-bw"];
}

+ (FIIcon *)ejectIcon {
    return [self iconWithName:@"eject"];
}

+ (FIIcon *)targetIcon {
    return [self iconWithName:@"target"];
}

+ (FIIcon *)signalIcon {
    return [self iconWithName:@"signal"];
}

+ (FIIcon *)awardIcon {
    return [self iconWithName:@"award"];
}

+ (FIIcon *)inboxIcon {
    return [self iconWithName:@"inbox"];
}

+ (FIIcon *)globeIcon {
    return [self iconWithName:@"globe"];
}

+ (FIIcon *)cloudIcon {
    return [self iconWithName:@"cloud"];
}

+ (FIIcon *)flashIcon {
    return [self iconWithName:@"flash"];
}

+ (FIIcon *)umbrellaIcon {
    return [self iconWithName:@"umbrella"];
}

+ (FIIcon *)flightIcon {
    return [self iconWithName:@"flight"];
}

+ (FIIcon *)leafIcon {
    return [self iconWithName:@"leaf"];
}

+ (FIIcon *)fontIcon {
    return [self iconWithName:@"font"];
}

+ (FIIcon *)boldIcon {
    return [self iconWithName:@"bold"];
}

+ (FIIcon *)italicIcon {
    return [self iconWithName:@"italic"];
}

+ (FIIcon *)textHeightIcon {
    return [self iconWithName:@"text-height"];
}

+ (FIIcon *)textWidthIcon {
    return [self iconWithName:@"text-width"];
}

+ (FIIcon *)alignLeftIcon {
    return [self iconWithName:@"align-left"];
}

+ (FIIcon *)alignCenterIcon {
    return [self iconWithName:@"align-center"];
}

+ (FIIcon *)alignRightIcon {
    return [self iconWithName:@"align-right"];
}

+ (FIIcon *)alignJustifyIcon {
    return [self iconWithName:@"align-justify"];
}

+ (FIIcon *)listIcon {
    return [self iconWithName:@"list"];
}

+ (FIIcon *)indentLeftIcon {
    return [self iconWithName:@"indent-left"];
}

+ (FIIcon *)indentRightIcon {
    return [self iconWithName:@"indent-right"];
}

+ (FIIcon *)listBulletIcon {
    return [self iconWithName:@"list-bullet"];
}

+ (FIIcon *)listNumberedIcon {
    return [self iconWithName:@"list-numbered"];
}

+ (FIIcon *)strikeIcon {
    return [self iconWithName:@"strike"];
}

+ (FIIcon *)underlineIcon {
    return [self iconWithName:@"underline"];
}

+ (FIIcon *)tableIcon {
    return [self iconWithName:@"table"];
}

+ (FIIcon *)columnsIcon {
    return [self iconWithName:@"columns"];
}

+ (FIIcon *)scissorsIcon {
    return [self iconWithName:@"scissors"];
}

+ (FIIcon *)pasteIcon {
    return [self iconWithName:@"paste"];
}

+ (FIIcon *)briefcaseIcon {
    return [self iconWithName:@"briefcase"];
}

+ (FIIcon *)offIcon {
    return [self iconWithName:@"off"];
}

+ (FIIcon *)roadIcon {
    return [self iconWithName:@"road"];
}

+ (FIIcon *)listAltIcon {
    return [self iconWithName:@"list-alt"];
}

+ (FIIcon *)qrcodeIcon {
    return [self iconWithName:@"qrcode"];
}

+ (FIIcon *)barcodeIcon {
    return [self iconWithName:@"barcode"];
}

+ (FIIcon *)bookIcon {
    return [self iconWithName:@"book"];
}

+ (FIIcon *)ajustIcon {
    return [self iconWithName:@"ajust"];
}

+ (FIIcon *)tintIcon {
    return [self iconWithName:@"tint"];
}

+ (FIIcon *)checkIcon {
    return [self iconWithName:@"check"];
}

+ (FIIcon *)checkEmptyIcon {
    return [self iconWithName:@"check-empty"];
}

+ (FIIcon *)asteriskIcon {
    return [self iconWithName:@"asterisk"];
}

+ (FIIcon *)giftIcon {
    return [self iconWithName:@"gift"];
}

+ (FIIcon *)fireIcon {
    return [self iconWithName:@"fire"];
}

+ (FIIcon *)magnetIcon {
    return [self iconWithName:@"magnet"];
}

+ (FIIcon *)chartBarIcon {
    return [self iconWithName:@"chart-bar"];
}

+ (FIIcon *)creditCardIcon {
    return [self iconWithName:@"credit-card"];
}

+ (FIIcon *)floppyIcon {
    return [self iconWithName:@"floppy"];
}

+ (FIIcon *)megaphoneIcon {
    return [self iconWithName:@"megaphone"];
}

+ (FIIcon *)hddIcon {
    return [self iconWithName:@"hdd"];
}

+ (FIIcon *)keyIcon {
    return [self iconWithName:@"key"];
}

+ (FIIcon *)certificateIcon {
    return [self iconWithName:@"certificate"];
}

+ (FIIcon *)tasksIcon {
    return [self iconWithName:@"tasks"];
}

+ (FIIcon *)filterIcon {
    return [self iconWithName:@"filter"];
}

+ (FIIcon *)beakerIcon {
    return [self iconWithName:@"beaker"];
}

+ (FIIcon *)magicIcon {
    return [self iconWithName:@"magic"];
}

+ (FIIcon *)truckIcon {
    return [self iconWithName:@"truck"];
}

+ (FIIcon *)moneyIcon {
    return [self iconWithName:@"money"];
}

+ (FIIcon *)sortIcon {
    return [self iconWithName:@"sort"];
}

+ (FIIcon *)sortDownIcon {
    return [self iconWithName:@"sort-down"];
}

+ (FIIcon *)sortUpIcon {
    return [self iconWithName:@"sort-up"];
}

+ (FIIcon *)hammerIcon {
    return [self iconWithName:@"hammer"];
}

+ (FIIcon *)gaugeIcon {
    return [self iconWithName:@"gauge"];
}

+ (FIIcon *)sitemapIcon {
    return [self iconWithName:@"sitemap"];
}

+ (FIIcon *)githubSquaredIcon {
    return [self iconWithName:@"github-squared"];
}

+ (FIIcon *)githubIcon {
    return [self iconWithName:@"github"];
}

+ (FIIcon *)twitterSquaredIcon {
    return [self iconWithName:@"twitter-squared"];
}

+ (FIIcon *)twitterIcon {
    return [self iconWithName:@"twitter"];
}

+ (FIIcon *)facebookSquaredIcon {
    return [self iconWithName:@"facebook-squared"];
}

+ (FIIcon *)facebookIcon {
    return [self iconWithName:@"facebook"];
}

+ (FIIcon *)linkedinSquaredIcon {
    return [self iconWithName:@"linkedin-squared"];
}

+ (FIIcon *)linkedinIcon {
    return [self iconWithName:@"linkedin"];
}

+ (FIIcon *)pinterestCircledIcon {
    return [self iconWithName:@"pinterest-circled"];
}

+ (FIIcon *)pinterestSquaredIcon {
    return [self iconWithName:@"pinterest-squared"];
}

+ (FIIcon *)gplusSquaredIcon {
    return [self iconWithName:@"gplus-squared"];
}

+ (FIIcon *)gplusIcon {
    return [self iconWithName:@"gplus"];
}

+ (FIIcon *)blankIcon {
    return [self iconWithName:@"blank"];
}

+ (FIIcon *)lemonIcon {
    return [self iconWithName:@"lemon"];
}

@end
