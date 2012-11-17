//
//  FIIconicIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 17.11.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIIconicIcon.h"
#import "FIFont.h"

@implementation FIIconicIcon

+ (FIFont *)iconFont {
    return [FIFont iconicFont];
}

#pragma mark - Icons Dictionary

+ (NSDictionary *)iconsDictionary {
    return @{
    @"hash"                 : @"\U00002300",
    @"question_mark"        : @"\U00003f00",
    @"at"                   : @"\U00000040",
    @"pilcrow"              : @"\U000000b6",
    @"info"                 : @"\U00002139",
    @"arrow_left"           : @"\U00002190",
    @"arrow_up"             : @"\U00002191",
    @"arrow_right"          : @"\U00002192",
    @"arrow_down"           : @"\U00002193",
    @"home"                 : @"\U00002302",
    @"sun_fill"             : @"\U00002600",
    @"cloud"                : @"\U00002601",
    @"umbrella"             : @"\U00002602",
    @"star"                 : @"\U00002605",
    @"moon_fill"            : @"\U0000263e",
    @"heart_fill"           : @"\U00002764",
    @"cog"                  : @"\U00002699",
    @"bolt"                 : @"\U000026a1",
    @"key_fill"             : @"\U000026bf",
    @"rain"                 : @"\U000026c6",
    @"denied"               : @"\U000026d4",
    @"mail"                 : @"\U00002709",
    @"pen"                  : @"\U0000270e",
    @"check"                : @"\U00002713",
    @"check_alt"            : @"\U00002714",
    @"x"                    : @"\U00002717",
    @"x_alt"                : @"\U00002718",
    @"left_quote"           : @"\U0000275d",
    @"right_quote"          : @"\U0000275e",
    @"plus"                 : @"\U00002795",
    @"minus"                : @"\U00002796",
    @"curved_arrow"         : @"\U00002935",
    @"document_alt_fill"    : @"\U0000e000",
    @"calendar"             : @"\U0000e001",
    @"map_pin_alt"          : @"\U0000e002",
    @"comment_alt1_fill"    : @"\U0000e003",
    @"comment_alt2_fill"    : @"\U0000e004",
    @"pen_alt_fill"         : @"\U0000e005",
    @"pen_alt2"             : @"\U0000e006",
    @"chat_alt_fill"        : @"\U0000e007",
    @"plus_alt"             : @"\U0000e008",
    @"minus_alt"            : @"\U0000e009",
    @"bars_alt"             : @"\U0000e00a",
    @"book_alt"             : @"\U0000e00b",
    @"aperture_alt"         : @"\U0000e00c",
    @"beaker_alt"           : @"\U0000e010",
    @"left_quote_alt"       : @"\U0000e011",
    @"right_quote_alt"      : @"\U0000e012",
    @"arrow_left_alt1"      : @"\U0000e013",
    @"arrow_up_alt1"        : @"\U0000e014",
    @"arrow_right_alt1"     : @"\U0000e015",
    @"arrow_down_alt1"      : @"\U0000e016",
    @"arrow_left_alt2"      : @"\U0000e017",
    @"arrow_up_alt2"        : @"\U0000e018",
    @"arrow_right_alt2"     : @"\U0000e019",
    @"arrow_down_alt2"      : @"\U0000e01a",
    @"brush"                : @"\U0000e01b",
    @"brush_alt"            : @"\U0000e01c",
    @"eyedropper"           : @"\U0000e01e",
    @"layers"               : @"\U0000e01f",
    @"layers_alt"           : @"\U0000e020",
    @"compass"              : @"\U0000e021",
    @"award_fill"           : @"\U0000e022",
    @"beaker"               : @"\U0000e023",
    @"steering_wheel"       : @"\U0000e024",
    @"eye"                  : @"\U0000e025",
    @"aperture"             : @"\U0000e026",
    @"image"                : @"\U0000e027",
    @"chart"                : @"\U0000e028",
    @"chart_alt"            : @"\U0000e029",
    @"target"               : @"\U0000e02a",
    @"tag_fill"             : @"\U0000e02b",
    @"rss"                  : @"\U0000e02c",
    @"rss_alt"              : @"\U0000e02d",
    @"share"                : @"\U0000e02e",
    @"undo"                 : @"\U0000e02f",
    @"reload"               : @"\U0000e030",
    @"reload_alt"           : @"\U0000e031",
    @"loop_alt1"            : @"\U0000e032",
    @"loop_alt2"            : @"\U0000e033",
    @"loop_alt3"            : @"\U0000e034",
    @"loop_alt4"            : @"\U0000e035",
    @"spin"                 : @"\U0000e036",
    @"spin_alt"             : @"\U0000e037",
    @"move_horizontal"      : @"\U0000e038",
    @"move_horizontal_alt1" : @"\U0000e039",
    @"move_horizontal_alt2" : @"\U0000e03a",
    @"move_vertical"        : @"\U0000e03b",
    @"move_vertical_alt1"   : @"\U0000e03c",
    @"move_vertical_alt2"   : @"\U0000e03d",
    @"move"                 : @"\U0000e03e",
    @"move_alt1"            : @"\U0000e03f",
    @"move_alt2"            : @"\U0000e040",
    @"transfer"             : @"\U0000e041",
    @"download"             : @"\U0000e042",
    @"upload"               : @"\U0000e043",
    @"cloud_download"       : @"\U0000e044",
    @"cloud_upload"         : @"\U0000e045",
    @"fork"                 : @"\U0000e046",
    @"play"                 : @"\U0000e047",
    @"play_alt"             : @"\U0000e048",
    @"pause"                : @"\U0000e049",
    @"stop"                 : @"\U0000e04a",
    @"eject"                : @"\U0000e04b",
    @"first"                : @"\U0000e04c",
    @"last"                 : @"\U0000e04d",
    @"fullscreen"           : @"\U0000e04e",
    @"fullscreen_alt"       : @"\U0000e04f",
    @"fullscreen_exit"      : @"\U0000e050",
    @"fullscreen_exit_alt"  : @"\U0000e051",
    @"equalizer"            : @"\U0000e052",
    @"article"              : @"\U0000e053",
    @"read_more"            : @"\U0000e054",
    @"list"                 : @"\U0000e055",
    @"list_nested"          : @"\U0000e056",
    @"cursor"               : @"\U0000e057",
    @"dial"                 : @"\U0000e058",
    @"new_window"           : @"\U0000e059",
    @"trash_fill"           : @"\U0000e05a",
    @"battery_half"         : @"\U0000e05b",
    @"battery_empty"        : @"\U0000e05c",
    @"battery_charging"     : @"\U0000e05d",
    @"chat"                 : @"\U0000e05e",
    @"mic"                  : @"\U0000e05f",
    @"movie"                : @"\U0000e060",
    @"headphones"           : @"\U0000e061",
    @"user"                 : @"\U0000e062",
    @"lightbulb"            : @"\U0000e063",
    @"cd"                   : @"\U0000e064",
    @"folder_fill"          : @"\U0000e065",
    @"document_fill"        : @"\U0000e066",
    @"pin"                  : @"\U0000e067",
    @"map_pin_fill"         : @"\U0000e068",
    @"book"                 : @"\U0000e069",
    @"book_alt2"            : @"\U0000e06a",
    @"box"                  : @"\U0000e06b",
    @"calendar_alt_fill"    : @"\U0000e06c",
    @"comment_fill"         : @"\U0000e06d",
    @"iphone"               : @"\U0000e06e",
    @"bars"                 : @"\U0000e06f",
    @"camera"               : @"\U0000e070",
    @"volume_mute"          : @"\U0000e071",
    @"volume"               : @"\U0000e072",
    @"battery_full"         : @"\U0000e073",
    @"magnifying_glass"     : @"\U0000e074",
    @"lock_fill"            : @"\U0000e075",
    @"unlock_fill"          : @"\U0000e076",
    @"link"                 : @"\U0000e077",
    @"wrench"               : @"\U0000e078",
    @"clock"                : @"\U0000e079",
    @"paperclip"            : @"\U0000e08a"
    };
}

#pragma mark - Icons

+ (FIIcon *)hashIcon {
    return [self iconWithName:@"hash"];
}

+ (FIIcon *)questionMarkIcon {
    return [self iconWithName:@"question_mark"];
}

+ (FIIcon *)atIcon {
    return [self iconWithName:@"at"];
}

+ (FIIcon *)pilcrowIcon {
    return [self iconWithName:@"pilcrow"];
}

+ (FIIcon *)infoIcon {
    return [self iconWithName:@"info"];
}

+ (FIIcon *)arrowLeftIcon {
    return [self iconWithName:@"arrow_left"];
}

+ (FIIcon *)arrowUpIcon {
    return [self iconWithName:@"arrow_up"];
}

+ (FIIcon *)arrowRightIcon {
    return [self iconWithName:@"arrow_right"];
}

+ (FIIcon *)arrowDownIcon {
    return [self iconWithName:@"arrow_down"];
}

+ (FIIcon *)homeIcon {
    return [self iconWithName:@"home"];
}

+ (FIIcon *)sunFillIcon {
    return [self iconWithName:@"sun_fill"];
}

+ (FIIcon *)cloudIcon {
    return [self iconWithName:@"cloud"];
}

+ (FIIcon *)umbrellaIcon {
    return [self iconWithName:@"umbrella"];
}

+ (FIIcon *)starIcon {
    return [self iconWithName:@"star"];
}

+ (FIIcon *)moonFillIcon {
    return [self iconWithName:@"moon_fill"];
}

+ (FIIcon *)heartFillIcon {
    return [self iconWithName:@"heart_fill"];
}

+ (FIIcon *)cogIcon {
    return [self iconWithName:@"cog"];
}

+ (FIIcon *)boltIcon {
    return [self iconWithName:@"bolt"];
}

+ (FIIcon *)keyFillIcon {
    return [self iconWithName:@"key_fill"];
}

+ (FIIcon *)rainIcon {
    return [self iconWithName:@"rain"];
}

+ (FIIcon *)deniedIcon {
    return [self iconWithName:@"denied"];
}

+ (FIIcon *)mailIcon {
    return [self iconWithName:@"mail"];
}

+ (FIIcon *)penIcon {
    return [self iconWithName:@"pen"];
}

+ (FIIcon *)checkIcon {
    return [self iconWithName:@"check"];
}

+ (FIIcon *)checkAltIcon {
    return [self iconWithName:@"check_alt"];
}

+ (FIIcon *)xIcon {
    return [self iconWithName:@"x"];
}

+ (FIIcon *)xAltIcon {
    return [self iconWithName:@"x_alt"];
}

+ (FIIcon *)leftQuoteIcon {
    return [self iconWithName:@"left_quote"];
}

+ (FIIcon *)rightQuoteIcon {
    return [self iconWithName:@"right_quote"];
}

+ (FIIcon *)plusIcon {
    return [self iconWithName:@"plus"];
}

+ (FIIcon *)minusIcon {
    return [self iconWithName:@"minus"];
}

+ (FIIcon *)curvedArrowIcon {
    return [self iconWithName:@"curved_arrow"];
}

+ (FIIcon *)documentAltFillIcon {
    return [self iconWithName:@"document_alt_fill"];
}

+ (FIIcon *)calendarIcon {
    return [self iconWithName:@"calendar"];
}

+ (FIIcon *)mapPinAltIcon {
    return [self iconWithName:@"map_pin_alt"];
}

+ (FIIcon *)commentAlt1FillIcon {
    return [self iconWithName:@"comment_alt1_fill"];
}

+ (FIIcon *)commentAlt2FillIcon {
    return [self iconWithName:@"comment_alt2_fill"];
}

+ (FIIcon *)penAltFillIcon {
    return [self iconWithName:@"pen_alt_fill"];
}

+ (FIIcon *)penAlt2Icon {
    return [self iconWithName:@"pen_alt2"];
}

+ (FIIcon *)chatAltFillIcon {
    return [self iconWithName:@"chat_alt_fill"];
}

+ (FIIcon *)plusAltIcon {
    return [self iconWithName:@"plus_alt"];
}

+ (FIIcon *)minusAltIcon {
    return [self iconWithName:@"minus_alt"];
}

+ (FIIcon *)barsAltIcon {
    return [self iconWithName:@"bars_alt"];
}

+ (FIIcon *)bookAltIcon {
    return [self iconWithName:@"book_alt"];
}

+ (FIIcon *)apertureAltIcon {
    return [self iconWithName:@"aperture_alt"];
}

+ (FIIcon *)beakerAltIcon {
    return [self iconWithName:@"beaker_alt"];
}

+ (FIIcon *)leftQuoteAltIcon {
    return [self iconWithName:@"left_quote_alt"];
}

+ (FIIcon *)rightQuoteAltIcon {
    return [self iconWithName:@"right_quote_alt"];
}

+ (FIIcon *)arrowLeftAlt1Icon {
    return [self iconWithName:@"arrow_left_alt1"];
}

+ (FIIcon *)arrowUpAlt1Icon {
    return [self iconWithName:@"arrow_up_alt1"];
}

+ (FIIcon *)arrowRightAlt1Icon {
    return [self iconWithName:@"arrow_right_alt1"];
}

+ (FIIcon *)arrowDownAlt1Icon {
    return [self iconWithName:@"arrow_down_alt1"];
}

+ (FIIcon *)arrowLeftAlt2Icon {
    return [self iconWithName:@"arrow_left_alt2"];
}

+ (FIIcon *)arrowUpAlt2Icon {
    return [self iconWithName:@"arrow_up_alt2"];
}

+ (FIIcon *)arrowRightAlt2Icon {
    return [self iconWithName:@"arrow_right_alt2"];
}

+ (FIIcon *)arrowDownAlt2Icon {
    return [self iconWithName:@"arrow_down_alt2"];
}

+ (FIIcon *)brushIcon {
    return [self iconWithName:@"brush"];
}

+ (FIIcon *)brushAltIcon {
    return [self iconWithName:@"brush_alt"];
}

+ (FIIcon *)eyedropperIcon {
    return [self iconWithName:@"eyedropper"];
}

+ (FIIcon *)layersIcon {
    return [self iconWithName:@"layers"];
}

+ (FIIcon *)layersAltIcon {
    return [self iconWithName:@"layers_alt"];
}

+ (FIIcon *)compassIcon {
    return [self iconWithName:@"compass"];
}

+ (FIIcon *)awardFillIcon {
    return [self iconWithName:@"award_fill"];
}

+ (FIIcon *)beakerIcon {
    return [self iconWithName:@"beaker"];
}

+ (FIIcon *)steeringWheelIcon {
    return [self iconWithName:@"steering_wheel"];
}

+ (FIIcon *)eyeIcon {
    return [self iconWithName:@"eye"];
}

+ (FIIcon *)apertureIcon {
    return [self iconWithName:@"aperture"];
}

+ (FIIcon *)imageIcon {
    return [self iconWithName:@"image"];
}

+ (FIIcon *)chartIcon {
    return [self iconWithName:@"chart"];
}

+ (FIIcon *)chartAltIcon {
    return [self iconWithName:@"chart_alt"];
}

+ (FIIcon *)targetIcon {
    return [self iconWithName:@"target"];
}

+ (FIIcon *)tagFillIcon {
    return [self iconWithName:@"tag_fill"];
}

+ (FIIcon *)rssIcon {
    return [self iconWithName:@"rss"];
}

+ (FIIcon *)rssAltIcon {
    return [self iconWithName:@"rss_alt"];
}

+ (FIIcon *)shareIcon {
    return [self iconWithName:@"share"];
}

+ (FIIcon *)undoIcon {
    return [self iconWithName:@"undo"];
}

+ (FIIcon *)reloadIcon {
    return [self iconWithName:@"reload"];
}

+ (FIIcon *)reloadAltIcon {
    return [self iconWithName:@"reload_alt"];
}

+ (FIIcon *)loopAlt1Icon {
    return [self iconWithName:@"loop_alt1"];
}

+ (FIIcon *)loopAlt2Icon {
    return [self iconWithName:@"loop_alt2"];
}

+ (FIIcon *)loopAlt3Icon {
    return [self iconWithName:@"loop_alt3"];
}

+ (FIIcon *)loopAlt4Icon {
    return [self iconWithName:@"loop_alt4"];
}

+ (FIIcon *)spinIcon {
    return [self iconWithName:@"spin"];
}

+ (FIIcon *)spinAltIcon {
    return [self iconWithName:@"spin_alt"];
}

+ (FIIcon *)moveHorizontalIcon {
    return [self iconWithName:@"move_horizontal"];
}

+ (FIIcon *)moveHorizontalAlt1Icon {
    return [self iconWithName:@"move_horizontal_alt1"];
}

+ (FIIcon *)moveHorizontalAlt2Icon {
    return [self iconWithName:@"move_horizontal_alt2"];
}

+ (FIIcon *)moveVerticalIcon {
    return [self iconWithName:@"move_vertical"];
}

+ (FIIcon *)moveVerticalAlt1Icon {
    return [self iconWithName:@"move_vertical_alt1"];
}

+ (FIIcon *)moveVerticalAlt2Icon {
    return [self iconWithName:@"move_vertical_alt2"];
}

+ (FIIcon *)moveIcon {
    return [self iconWithName:@"move"];
}

+ (FIIcon *)moveAlt1Icon {
    return [self iconWithName:@"move_alt1"];
}

+ (FIIcon *)moveAlt2Icon {
    return [self iconWithName:@"move_alt2"];
}

+ (FIIcon *)transferIcon {
    return [self iconWithName:@"transfer"];
}

+ (FIIcon *)downloadIcon {
    return [self iconWithName:@"download"];
}

+ (FIIcon *)uploadIcon {
    return [self iconWithName:@"upload"];
}

+ (FIIcon *)cloudDownloadIcon {
    return [self iconWithName:@"cloud_download"];
}

+ (FIIcon *)cloudUploadIcon {
    return [self iconWithName:@"cloud_upload"];
}

+ (FIIcon *)forkIcon {
    return [self iconWithName:@"fork"];
}

+ (FIIcon *)playIcon {
    return [self iconWithName:@"play"];
}

+ (FIIcon *)playAltIcon {
    return [self iconWithName:@"play_alt"];
}

+ (FIIcon *)pauseIcon {
    return [self iconWithName:@"pause"];
}

+ (FIIcon *)stopIcon {
    return [self iconWithName:@"stop"];
}

+ (FIIcon *)ejectIcon {
    return [self iconWithName:@"eject"];
}

+ (FIIcon *)firstIcon {
    return [self iconWithName:@"first"];
}

+ (FIIcon *)lastIcon {
    return [self iconWithName:@"last"];
}

+ (FIIcon *)fullscreenIcon {
    return [self iconWithName:@"fullscreen"];
}

+ (FIIcon *)fullscreenAltIcon {
    return [self iconWithName:@"fullscreen_alt"];
}

+ (FIIcon *)fullscreenExitIcon {
    return [self iconWithName:@"fullscreen_exit"];
}

+ (FIIcon *)fullscreenExitAltIcon {
    return [self iconWithName:@"fullscreen_exit_alt"];
}

+ (FIIcon *)equalizerIcon {
    return [self iconWithName:@"equalizer"];
}

+ (FIIcon *)articleIcon {
    return [self iconWithName:@"article"];
}

+ (FIIcon *)readMoreIcon {
    return [self iconWithName:@"read_more"];
}

+ (FIIcon *)listIcon {
    return [self iconWithName:@"list"];
}

+ (FIIcon *)listNestedIcon {
    return [self iconWithName:@"list_nested"];
}

+ (FIIcon *)cursorIcon {
    return [self iconWithName:@"cursor"];
}

+ (FIIcon *)dialIcon {
    return [self iconWithName:@"dial"];
}

+ (FIIcon *)windowIcon {
    return [self iconWithName:@"new_window"];
}

+ (FIIcon *)trashFillIcon {
    return [self iconWithName:@"trash_fill"];
}

+ (FIIcon *)batteryHalfIcon {
    return [self iconWithName:@"battery_half"];
}

+ (FIIcon *)batteryEmptyIcon {
    return [self iconWithName:@"battery_empty"];
}

+ (FIIcon *)batteryChargingIcon {
    return [self iconWithName:@"battery_charging"];
}

+ (FIIcon *)chatIcon {
    return [self iconWithName:@"chat"];
}

+ (FIIcon *)micIcon {
    return [self iconWithName:@"mic"];
}

+ (FIIcon *)movieIcon {
    return [self iconWithName:@"movie"];
}

+ (FIIcon *)headphonesIcon {
    return [self iconWithName:@"headphones"];
}

+ (FIIcon *)userIcon {
    return [self iconWithName:@"user"];
}

+ (FIIcon *)lightbulbIcon {
    return [self iconWithName:@"lightbulb"];
}

+ (FIIcon *)cdIcon {
    return [self iconWithName:@"cd"];
}

+ (FIIcon *)folderFillIcon {
    return [self iconWithName:@"folder_fill"];
}

+ (FIIcon *)documentFillIcon {
    return [self iconWithName:@"document_fill"];
}

+ (FIIcon *)pinIcon {
    return [self iconWithName:@"pin"];
}

+ (FIIcon *)mapPinFillIcon {
    return [self iconWithName:@"map_pin_fill"];
}

+ (FIIcon *)bookIcon {
    return [self iconWithName:@"book"];
}

+ (FIIcon *)bookAlt2Icon {
    return [self iconWithName:@"book_alt2"];
}

+ (FIIcon *)boxIcon {
    return [self iconWithName:@"box"];
}

+ (FIIcon *)calendarAltFillIcon {
    return [self iconWithName:@"calendar_alt_fill"];
}

+ (FIIcon *)commentFillIcon {
    return [self iconWithName:@"comment_fill"];
}

+ (FIIcon *)iphoneIcon {
    return [self iconWithName:@"iphone"];
}

+ (FIIcon *)barsIcon {
    return [self iconWithName:@"bars"];
}

+ (FIIcon *)cameraIcon {
    return [self iconWithName:@"camera"];
}

+ (FIIcon *)volumeMuteIcon {
    return [self iconWithName:@"volume_mute"];
}

+ (FIIcon *)volumeIcon {
    return [self iconWithName:@"volume"];
}

+ (FIIcon *)batteryFullIcon {
    return [self iconWithName:@"battery_full"];
}

+ (FIIcon *)magnifyingGlassIcon {
    return [self iconWithName:@"magnifying_glass"];
}

+ (FIIcon *)lockFillIcon {
    return [self iconWithName:@"lock_fill"];
}

+ (FIIcon *)unlockFillIcon {
    return [self iconWithName:@"unlock_fill"];
}

+ (FIIcon *)linkIcon {
    return [self iconWithName:@"link"];
}

+ (FIIcon *)wrenchIcon {
    return [self iconWithName:@"wrench"];
}

+ (FIIcon *)clockIcon {
    return [self iconWithName:@"clock"];
}

+ (FIIcon *)e08aIcon {
    return [self iconWithName:@"e08a"];
}

@end
