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
    @"mail" : @"\U00002709", // deprecated
    @"envelope" : @"\U00002709",
    @"mail-alt" : @"\U0000f0e0", // deprecated
    @"envelope-alt" : @"\U0000f0e0",
    @"heart" : @"\U00002665",
    @"heart-empty" : @"\U00002661",
    @"star" : @"\U00002605",
    @"star-empty" : @"\U00002606",
    @"star-half" : @"\U0000e701",
    @"user" : @"\U0001f464",
    @"users" : @"\U0001f465", // deprecated
    @"group" : @"\U0001f465",
    @"user-md" : @"\U0000f200",
    @"video" : @"\U0001f3ac", // deprecated
    @"film" : @"\U0001f3ac",
    @"videocam" : @"\U0001f3a5", // deprecated
    @"facetime-video" : @"\U0001f3a5",
    @"picture" : @"\U0001f304",
    @"camera" : @"\U0001f4f7",
    @"camera-alt" : @"\U0000e70f", // deprecated
    @"camera-retro" : @"\U0000e70f",
    @"th-large" : @"\U0000e708",
    @"th" : @"\U0000268f",
    @"th-list" : @"\U00002630",
    @"ok" : @"\U00002713",
    @"ok-sign" : @"\U00002714",
    @"ok-circle2" : @"\U0000e702", // deprecated
    @"ok-circle" : @"\U0000e702", // renamed
    @"cancel" : @"\U00002715", // deprecated
    @"remove" : @"\U00002715",
    @"cancel-circle" : @"\U00002716", // deprecated
    @"remove-sign" : @"\U00002716",
    @"cancel-circle2" : @"\U0000e703", // deprecated
    @"remove-circle" : @"\U0000e703",
    @"plus" : @"\U00002b00",
    @"plus-circle" : @"\U00002795", // deprecated
    @"plus-sign" : @"\U00002795",
    @"minus" : @"\U00002d00",
    @"minus-circle" : @"\U00002796", // deprecated
    @"minus-sign" : @"\U00002796",
    @"help-circle" : @"\U0000e704", // deprecated
    @"question-sign" : @"\U0000e704",
    @"info-circle" : @"\U0000e705", // deprecated
    @"info-sign" : @"\U0000e705",
    @"home" : @"\U00002302",
    @"link" : @"\U0001f517",
    @"link-ext" : @"\U0000f08e", // deprecated
    @"external-link" : @"\U0000f08e",
    @"attach" : @"\U0001f4ce", // deprecated
    @"paper-clip" : @"\U0001f4ce",
    @"lock" : @"\U0001f512",
    @"lock-open" : @"\U0001f513", // deprecated
    @"unlock" : @"\U0001f513",
    @"pin" : @"\U0001f4cc", // deprecated
    @"pushpin" : @"\U0001f4cc",
    @"eye" : @"\U0000e70a", // deprecated
    @"eye-open" : @"\U0000e70a",
    @"eye-off" : @"\U0000e70b", // deprecated
    @"eye-close" : @"\U0000e70b",
    @"tag" : @"\U0000e70c",
    @"tags" : @"\U0000e70d",
    @"bookmark" : @"\U0001f516",
    @"bookmark-empty" : @"\U0000f097",
    @"flag" : @"\U00002691",
    @"thumbs-up" : @"\U0001f44d",
    @"thumbs-down" : @"\U0001f44e",
    @"download-alt" : @"\U0001f4e5",
    @"upload-alt" : @"\U0001f4e4",
    @"share-alt" : @"\U000027a6",
    @"export" : @"\U0000e715", // deprecated
    @"share" : @"\U0000e715",
    @"pencil" : @"\U0000270e",
    @"edit" : @"\U0000270d",
    @"print" : @"\U0000e716",
    @"retweet" : @"\U0000e717",
    @"comment" : @"\U0000e718", // renamed
    @"comments" : @"\U0000e720",
    @"comment-alt" : @"\U0000f0e5",
    @"chat" : @"\U0000f0e6", // deprecated
    @"comments-alt" : @"\U0000f0e6",
    @"bell" : @"\U0001f514",
    @"attention" : @"\U000026a0", // deprecated
    @"warning-sign" : @"\U000026a0",
    @"attention-circle" : @"\U00002757", // deprecated
    @"exclamation-sign" : @"\U00002757",
    @"location" : @"\U0000e724", // deprecated
    @"map-marker" : @"\U0000e724",
    @"trash" : @"\U0000e729",
    @"doc" : @"\U0001f4c4", // deprecated
    @"file" : @"\U0001f4c4",
    @"docs" : @"\U0000f0c5", // deprecated
    @"copy" : @"\U0000f0c5",
    @"folder" : @"\U0001f4c1", // deprecated
    @"folder-close" : @"\U0001f4c1",
    @"folder-open" : @"\U0001f4c2",
    @"rss" : @"\U0000f09e",
    @"phone" : @"\U0001f4de",
    @"phone-squared" : @"\U0000f098", // deprecated
    @"phone-sign" : @"\U0000f098",
    @"menu" : @"\U0000f0c9", // deprecated
    @"reorder" : @"\U0000f0c9",
    @"cog" : @"\U00002699",
    @"cog-alt" : @"\U000026ef", // deprecated
    @"cogs" : @"\U000026ef",
    @"wrench" : @"\U0001f527",
    @"basket" : @"\U0000e73d", // deprecated
    @"shopping-cart" : @"\U0000e73d",
    @"calendar" : @"\U0001f4c5",
    @"login" : @"\U0000e740", // deprecated
    @"signin" : @"\U0000e740",
    @"logout" : @"\U0000e741", // deprecated
    @"signout" : @"\U0000e741",
    @"volume-off" : @"\U0001f507",
    @"volume-down" : @"\U0001f509",
    @"volume-up" : @"\U0001f50a",
    @"headphones" : @"\U0001f3a7",
    @"clock" : @"\U0001f554", // deprecated
    @"time" : @"\U0001f554",
    @"block" : @"\U0001f6ab", // deprecated
    @"ban-circle" : @"\U0001f6ab",
    @"resize-full" : @"\U0000e744",
    @"resize-full-alt" : @"\U0000f0b2", // deprecated
    @"fullscreen" : @"\U0000f0b2",
    @"resize-small" : @"\U0000e746",
    @"resize-vertical" : @"\U00002b0c",
    @"resize-horizontal" : @"\U00002b0d",
    @"move" : @"\U0000f047",
    @"zoom-in" : @"\U0000e750",
    @"zoom-out" : @"\U0000e751",
    @"down-circle2" : @"\U0000e758", // deprecated
    @"download" : @"\U0000e758", // renamed
    @"up-circle2" : @"\U0000e75b", // deprecated
    @"upload" : @"\U0000e75b", // renamed
    @"down-dir" : @"\U000025be", // deprecated
    @"caret-down" : @"\U000025be",
    @"up-dir" : @"\U000025b4", // deprecated
    @"caret-up" : @"\U000025b4",
    @"left-dir" : @"\U000025c2", // deprecated
    @"caret-left" : @"\U000025c2",
    @"right-dir" : @"\U000025b8", // deprecated
    @"caret-right" : @"\U000025b8",
    @"down-open" : @"\U0000e75c", // deprecated
    @"chevron-down" : @"\U0000e75c",
    @"left-open" : @"\U0000e75d", // deprecated
    @"chevron-left" : @"\U0000e75d",
    @"right-open" : @"\U0000e75e", // deprecated
    @"chevron-right" : @"\U0000e75e",
    @"up-open" : @"\U0000e75f", // deprecated
    @"chevron-up" : @"\U0000e75f",
    @"down" : @"\U00002193", // deprecated
    @"arrow-down" : @"\U00002193",
    @"left" : @"\U00002190", // deprecated
    @"arrow-left" : @"\U00002190",
    @"right" : @"\U00002192", // deprecated
    @"arrow-right" : @"\U00002192",
    @"up" : @"\U00002191", // deprecated
    @"arrow-up" : @"\U00002191",
    @"right-hand" : @"\U0000261e", // deprecated
    @"hand-right" : @"\U0000261e",
    @"left-hand" : @"\U0000261c", // deprecated
    @"hand-left" : @"\U0000261c",
    @"up-hand" : @"\U0000261d", // deprecated
    @"hand-up" : @"\U0000261d",
    @"down-hand" : @"\U0000261f", // deprecated
    @"hand-down" : @"\U0000261f",
    @"left-circled" : @"\U0000f0a8", // deprecated
    @"circle-arrow-left" : @"\U0000f0a8",
    @"right-circled" : @"\U0000f0a9", // deprecated
    @"circle-arrow-right" : @"\U0000f0a9",
    @"up-circled" : @"\U0000f0aa", // deprecated
    @"circle-arrow-up" : @"\U0000f0aa",
    @"down-circled" : @"\U0000f0ab", // deprecated
    @"circle-arrow-down" : @"\U0000f0ab",
    @"cw" : @"\U000027f3", // deprecated
    @"repeat" : @"\U000027f3",
    @"ccw" : @"\U000027f2", // deprecated
    @"undo" : @"\U000027f2",
    @"arrows-cw" : @"\U0000e760", // deprecated
    @"refresh" : @"\U0000e760",
    @"shuffle" : @"\U0001f500", // deprecated
    @"random" : @"\U0001f500",
    @"play" : @"\U000025b6",
    @"play-circle2" : @"\U0000e761", // deprecated
    @"play-circle" : @"\U0000e761",
    @"stop" : @"\U000025aa",
    @"pause" : @"\U00002389",
    @"to-end" : @"\U000023ed", // deprecated
    @"step-forward" : @"\U000023ed",
    @"to-end-alt" : @"\U0000e762", // deprecated
    @"fast-forward" : @"\U0000e762",
    @"to-start" : @"\U000023ee", // deprecated
    @"step-backward" : @"\U000023ee",
    @"to-start-alt" : @"\U0000e763", // deprecated
    @"fast-backward" : @"\U0000e763",
    @"fast-fw" : @"\U000023e9", // deprecated
    @"forward" : @"\U000023e9", // renamed
    @"fast-bw" : @"\U000023ea", // deprecated
    @"backward" : @"\U000023ea",
    @"eject" : @"\U00002ecf",
    @"target" : @"\U0001f3af", // deprecated
    @"screenshot" : @"\U0001f3af",
    @"signal" : @"\U0001f4f6",
    @"award" : @"\U0001f3c9", // deprecated
    @"trophy" : @"\U0001f3c9",
    @"inbox" : @"\U0000e777",
    @"globe" : @"\U0001f30e",
    @"cloud" : @"\U00002601",
    @"flash" : @"\U000026a1", // deprecated
    @"bolt" : @"\U000026a1",
    @"umbrella" : @"\U00002602",
    @"flight" : @"\U00002708", // deprecated
    @"plane" : @"\U00002708",
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
    @"list-bullet" : @"\U0000f0ca", // deprecated
    @"list-ul" : @"\U0000f0ca",
    @"list-numbered" : @"\U0000f0cb", // deprecated
    @"list-ol" : @"\U0000f0cb",
    @"strike" : @"\U0000f0cc", // deprecated
    @"strikethrough" : @"\U0000f0cc",
    @"underline" : @"\U0000f0cd",
    @"table" : @"\U0000f0ce",
    @"columns" : @"\U0000f0db",
    @"scissors" : @"\U00002702", // deprecated
    @"cut" : @"\U00002702",
    @"paste" : @"\U0000f0ea",
    @"briefcase" : @"\U0001f4bc",
    @"off" : @"\U0000e78e",
    @"road" : @"\U0000e78f",
    @"list-alt" : @"\U0000e790",
    @"qrcode" : @"\U0000e791",
    @"barcode" : @"\U0000e792",
    @"book" : @"\U0001f4d5",
    @"ajust" : @"\U0000e793", // deprecated
    @"adjust" : @"\U0000e793",
    @"tint" : @"\U0000e794",
    @"check" : @"\U00002611",
    @"check-empty" : @"\U0000f096",
    @"asterisk" : @"\U00002731",
    @"gift" : @"\U0001f381",
    @"fire" : @"\U0001f525",
    @"magnet" : @"\U0000e7a1",
    @"chart-bar" : @"\U0001f4ca", // deprecated
    @"bar-chart" : @"\U0001f4ca",
    @"credit-card" : @"\U0001f4b3",
    @"floppy" : @"\U0001f4be", // deprecated
    @"save" : @"\U0001f4be",
    @"megaphone" : @"\U0001f4e3", // deprecated
    @"bullhorn" : @"\U0001f4e3",
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
    @"hammer" : @"\U0001f528", // deprecated
    @"legal" : @"\U0001f528",
    @"gauge" : @"\U0000f0e4",
    @"sitemap" : @"\U0000f0e8",
    @"github-squared" : @"\U0000f300", // deprecated
    @"github-sign" : @"\U0000f300",
    @"github" : @"\U0000f09b",
    @"twitter-squared" : @"\U0000f304", // deprecated
    @"twitter-sign" : @"\U0000f304",
    @"twitter" : @"\U0000f099",
    @"facebook-squared" : @"\U0000f308", // deprecated
    @"facebook-sign" : @"\U0000f308",
    @"facebook" : @"\U0000f09a",
    @"linkedin-squared" : @"\U0000f30c", // deprecated
    @"linkedin-sign" : @"\U0000f30c",
    @"linkedin" : @"\U0000f0e1",
    @"pinterest-circled" : @"\U0000f0d2", // deprecated
    @"pinterest" : @"\U0000f0d2",
    @"pinterest-squared" : @"\U0000f0d3", // deprecated
    @"pinterest-sign" : @"\U0000f0d3",
    @"gplus-squared" : @"\U0000f0d4", // deprecated
    @"google-plus-sign" : @"\U0000f0d4",
    @"gplus" : @"\U0000f0d5", // deprecated
    @"google-plus" : @"\U0000f0d5",
    @"blank" : @"\U0000f0c8", // deprecated
    @"sign-blank" : @"\U0000f0c8",
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

+ (FIIcon *)mailIcon { // deprecated
    return [self iconWithName:@"mail"];
}

+ (FIIcon *)envelopeIcon {
    return [self iconWithName:@"envelope"];
}

+ (FIIcon *)mailAltIcon { // deprecated
    return [self iconWithName:@"mail-alt"];
}

+ (FIIcon *)envelopeAltIcon {
    return [self iconWithName:@"envelope-alt"];
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

+ (FIIcon *)usersIcon { // deprecated
    return [self iconWithName:@"users"];
}

+ (FIIcon *)groupIcon {
    return [self iconWithName:@"group"];
}

+ (FIIcon *)userMdIcon {
    return [self iconWithName:@"user-md"];
}

+ (FIIcon *)videoIcon { // deprecated
    return [self iconWithName:@"video"];
}

+ (FIIcon *)filmIcon {
    return [self iconWithName:@"film"];
}

+ (FIIcon *)videocamIcon { // deprecated
    return [self iconWithName:@"videocam"];
}

+ (FIIcon *)facetimeVideoIcon {
    return [self iconWithName:@"facetime-video"];
}

+ (FIIcon *)pictureIcon {
    return [self iconWithName:@"picture"];
}

+ (FIIcon *)cameraIcon {
    return [self iconWithName:@"camera"];
}

+ (FIIcon *)cameraAltIcon { // deprecated
    return [self iconWithName:@"camera-alt"];
}

+ (FIIcon *)cameraRetroIcon {
    return [self iconWithName:@"camera-retro"];
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

+ (FIIcon *)okSignIcon {
    return [self iconWithName:@"ok-sign"];
}

+ (FIIcon *)okCircle2Icon { // deprecated
    return [self iconWithName:@"ok-circle2"];
}

+ (FIIcon *)okCircleIcon { // renamed
    return [self iconWithName:@"ok-circle"];
}

+ (FIIcon *)cancelIcon { // deprecated
    return [self iconWithName:@"cancel"];
}

+ (FIIcon *)removeIcon {
    return [self iconWithName:@"remove"];
}

+ (FIIcon *)cancelCircleIcon { // deprecated
    return [self iconWithName:@"cancel-circle"];
}

+ (FIIcon *)removeCircleIcon {
    return [self iconWithName:@"remove-circle"];
}

+ (FIIcon *)cancelCircle2Icon { // deprecated
    return [self iconWithName:@"cancel-circle2"];
}

+ (FIIcon *)removeSignIcon {
    return [self iconWithName:@"remove-sign"];
}

+ (FIIcon *)plusIcon {
    return [self iconWithName:@"plus"];
}

+ (FIIcon *)plusCircleIcon { // deprecated
    return [self iconWithName:@"plus-circle"];
}

+ (FIIcon *)plusSignIcon {
    return [self iconWithName:@"plus-sign"];
}

+ (FIIcon *)minusIcon {
    return [self iconWithName:@"minus"];
}

+ (FIIcon *)minusCircleIcon { // deprecated
    return [self iconWithName:@"minus-circle"];
}

+ (FIIcon *)minusSignIcon {
    return [self iconWithName:@"minus-sign"];
}

+ (FIIcon *)helpCircleIcon { // deprecated
    return [self iconWithName:@"help-circle"];
}

+ (FIIcon *)questionSignIcon {
    return [self iconWithName:@"question-sign"];
}

+ (FIIcon *)infoCircleIcon { // deprecated
    return [self iconWithName:@"info-circle"];
}

+ (FIIcon *)infoSignIcon {
    return [self iconWithName:@"info-sign"];
}

+ (FIIcon *)homeIcon {
    return [self iconWithName:@"home"];
}

+ (FIIcon *)linkIcon {
    return [self iconWithName:@"link"];
}

+ (FIIcon *)linkExtIcon { // deprecated
    return [self iconWithName:@"link-ext"];
}

+ (FIIcon *)externalLinkIcon {
    return [self iconWithName:@"external-link"];
}

+ (FIIcon *)attachIcon { // deprecated
    return [self iconWithName:@"attach"];
}

+ (FIIcon *)paperClipIcon {
    return [self iconWithName:@"paper-clip"];
}

+ (FIIcon *)lockIcon {
    return [self iconWithName:@"lock"];
}

+ (FIIcon *)lockOpenIcon { // deprecated
    return [self iconWithName:@"lock-open"];
}

+ (FIIcon *)unlockIcon {
    return [self iconWithName:@"unlock"];
}

+ (FIIcon *)pinIcon { // deprecated
    return [self iconWithName:@"pin"];
}

+ (FIIcon *)pushpinIcon {
    return [self iconWithName:@"pushpin"];
}

+ (FIIcon *)eyeIcon { // deprecated
    return [self iconWithName:@"eye"];
}

+ (FIIcon *)eyeOpenIcon {
    return [self iconWithName:@"eye-open"];
}

+ (FIIcon *)eyeOffIcon { // deprecated
    return [self iconWithName:@"eye-off"];
}

+ (FIIcon *)eyeCloseIcon {
    return [self iconWithName:@"eye-close"];
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

+ (FIIcon *)downloadAltIcon {
    return [self iconWithName:@"download-alt"];
}

+ (FIIcon *)uploadAltIcon {
    return [self iconWithName:@"upload-alt"];
}

+ (FIIcon *)shareAltIcon {
    return [self iconWithName:@"share-alt"];
}

+ (FIIcon *)exportIcon { // deprecated
    return [self iconWithName:@"export"];
}

+ (FIIcon *)shareIcon {
    return [self iconWithName:@"share"];
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

+ (FIIcon *)commentIcon { // renamed
    return [self iconWithName:@"comment"];
}

+ (FIIcon *)commentsIcon {
    return [self iconWithName:@"comments"];
}

+ (FIIcon *)commentAltIcon {
    return [self iconWithName:@"comment-alt"];
}

+ (FIIcon *)chatIcon { // deprecated
    return [self iconWithName:@"chat"];
}

+ (FIIcon *)commentsAltIcon {
    return [self iconWithName:@"comments-alt"];
}

+ (FIIcon *)bellIcon {
    return [self iconWithName:@"bell"];
}

+ (FIIcon *)attentionIcon { // deprecated
    return [self iconWithName:@"attention"];
}

+ (FIIcon *)warningSignIcon {
    return [self iconWithName:@"warning-sign"];
}

+ (FIIcon *)attentionCircleIcon { // deprecated
    return [self iconWithName:@"attention-circle"];
}

+ (FIIcon *)exclamationSignIcon {
    return [self iconWithName:@"exclamation-sign"];
}

+ (FIIcon *)locationIcon { // deprecated
    return [self iconWithName:@"location"];
}

+ (FIIcon *)mapMarkerIcon {
    return [self iconWithName:@"map-marker"];
}

+ (FIIcon *)trashIcon {
    return [self iconWithName:@"trash"];
}

+ (FIIcon *)docIcon { // deprecated
    return [self iconWithName:@"doc"];
}

+ (FIIcon *)fileIcon {
    return [self iconWithName:@"file"];
}

+ (FIIcon *)docsIcon { // deprecated
    return [self iconWithName:@"docs"];
}

+ (FIIcon *)copyIcon {
    return [self iconWithName:@"copy"];
}

+ (FIIcon *)folderIcon { // deprecated
    return [self iconWithName:@"folder"];
}

+ (FIIcon *)folderCloseIcon {
    return [self iconWithName:@"folder-close"];
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

+ (FIIcon *)phoneSquaredIcon { // deprecated
    return [self iconWithName:@"phone-squared"];
}

+ (FIIcon *)phoneSignIcon {
    return [self iconWithName:@"phone-sign"];
}

+ (FIIcon *)menuIcon { // deprecated
    return [self iconWithName:@"menu"];
}

+ (FIIcon *)reorderIcon {
    return [self iconWithName:@"reorder"];
}

+ (FIIcon *)cogIcon {
    return [self iconWithName:@"cog"];
}

+ (FIIcon *)cogAltIcon { // deprecated
    return [self iconWithName:@"cog-alt"];
}

+ (FIIcon *)cogsIcon {
    return [self iconWithName:@"cogs"];
}

+ (FIIcon *)wrenchIcon {
    return [self iconWithName:@"wrench"];
}

+ (FIIcon *)basketIcon { // deprecated
    return [self iconWithName:@"basket"];
}

+ (FIIcon *)shoppingCartIcon {
    return [self iconWithName:@"shopping-cart"];
}

+ (FIIcon *)calendarIcon {
    return [self iconWithName:@"calendar"];
}

+ (FIIcon *)loginIcon { // deprecated
    return [self iconWithName:@"login"];
}

+ (FIIcon *)signinIcon {
    return [self iconWithName:@"signin"];
}

+ (FIIcon *)logoutIcon { // deprecated
    return [self iconWithName:@"logout"];
}

+ (FIIcon *)signoutIcon {
    return [self iconWithName:@"signout"];
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

+ (FIIcon *)clockIcon { // deprecated
    return [self iconWithName:@"clock"];
}

+ (FIIcon *)timeIcon {
    return [self iconWithName:@"time"];
}

+ (FIIcon *)blockIcon { // deprecated
    return [self iconWithName:@"block"];
}

+ (FIIcon *)banCircleIcon {
    return [self iconWithName:@"ban-circle"];
}

+ (FIIcon *)resizeFullIcon {
    return [self iconWithName:@"resize-full"];
}

+ (FIIcon *)resizeFullAltIcon { // deprecated
    return [self iconWithName:@"resize-full-alt"];
}

+ (FIIcon *)fullscreenIcon {
    return [self iconWithName:@"fullscreen"];
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

+ (FIIcon *)downCircle2Icon { // deprecated
    return [self iconWithName:@"down-circle2"];
}

+ (FIIcon *)downloadIcon { // renamed
    return [self iconWithName:@"download"];
}

+ (FIIcon *)upCircle2Icon { // deprecated
    return [self iconWithName:@"up-circle2"];
}

+ (FIIcon *)uploadIcon { // renamed
    return [self iconWithName:@"upload"];
}

+ (FIIcon *)downDirIcon { // deprecated
    return [self iconWithName:@"down-dir"];
}

+ (FIIcon *)caretDownIcon {
    return [self iconWithName:@"caret-down"];
}

+ (FIIcon *)upDirIcon { // deprecated
    return [self iconWithName:@"up-dir"];
}

+ (FIIcon *)caretUpIcon {
    return [self iconWithName:@"caret-up"];
}

+ (FIIcon *)leftDirIcon { // deprecated
    return [self iconWithName:@"left-dir"];
}

+ (FIIcon *)caretLeftIcon {
    return [self iconWithName:@"caret-left"];
}

+ (FIIcon *)rightDirIcon { // deprecated
    return [self iconWithName:@"right-dir"];
}

+ (FIIcon *)caretRightIcon {
    return [self iconWithName:@"caret-right"];
}

+ (FIIcon *)downOpenIcon { // deprecated
    return [self iconWithName:@"down-open"];
}

+ (FIIcon *)chevronDownIcon {
    return [self iconWithName:@"chevron-down"];
}

+ (FIIcon *)leftOpenIcon { // deprecated
    return [self iconWithName:@"left-open"];
}

+ (FIIcon *)chevronLeftIcon {
    return [self iconWithName:@"chevron-left"];
}

+ (FIIcon *)rightOpenIcon { // deprecated
    return [self iconWithName:@"right-open"];
}

+ (FIIcon *)chevronRightIcon {
    return [self iconWithName:@"chevron-right"];
}

+ (FIIcon *)upOpenIcon { // deprecated
    return [self iconWithName:@"up-open"];
}

+ (FIIcon *)chevronUpIcon {
    return [self iconWithName:@"chevron-up"];
}

+ (FIIcon *)downIcon { // deprecated
    return [self iconWithName:@"down"];
}

+ (FIIcon *)arrowDownIcon {
    return [self iconWithName:@"arrow-down"];
}

+ (FIIcon *)leftIcon { // deprecated
    return [self iconWithName:@"left"];
}

+ (FIIcon *)arrowLeftIcon {
    return [self iconWithName:@"arrow-left"];
}

+ (FIIcon *)rightIcon { // deprecated
    return [self iconWithName:@"right"];
}

+ (FIIcon *)arrowRightIcon {
    return [self iconWithName:@"arrow-right"];
}

+ (FIIcon *)upIcon { // deprecated
    return [self iconWithName:@"up"];
}

+ (FIIcon *)arrowUpIcon {
    return [self iconWithName:@"arrow-up"];
}

+ (FIIcon *)rightHandIcon { // deprecated
    return [self iconWithName:@"right-hand"];
}

+ (FIIcon *)handRightIcon {
    return [self iconWithName:@"hand-right"];
}

+ (FIIcon *)leftHandIcon { // deprecated
    return [self iconWithName:@"left-hand"];
}

+ (FIIcon *)handLeftIcon {
    return [self iconWithName:@"hand-left"];
}

+ (FIIcon *)upHandIcon { // deprecated
    return [self iconWithName:@"up-hand"];
}

+ (FIIcon *)handUpIcon {
    return [self iconWithName:@"hand-up"];
}

+ (FIIcon *)downHandIcon { // deprecated
    return [self iconWithName:@"down-hand"];
}

+ (FIIcon *)handDownIcon {
    return [self iconWithName:@"hand-down"];
}

+ (FIIcon *)leftCircledIcon { // deprecated
    return [self iconWithName:@"left-circled"];
}

+ (FIIcon *)circleArrowLeftIcon {
    return [self iconWithName:@"circle-arrow-left"];
}

+ (FIIcon *)rightCircledIcon { // deprecated
    return [self iconWithName:@"right-circled"];
}

+ (FIIcon *)circleArrowRightIcon {
    return [self iconWithName:@"circle-arrow-right"];
}

+ (FIIcon *)upCircledIcon { // deprecated
    return [self iconWithName:@"up-circled"];
}

+ (FIIcon *)circleArrowUpIcon {
    return [self iconWithName:@"circle-arrow-up"];
}

+ (FIIcon *)downCircledIcon { // deprecated
    return [self iconWithName:@"down-circled"];
}

+ (FIIcon *)circleArrowDownIcon {
    return [self iconWithName:@"circle-arrow-down"];
}

+ (FIIcon *)cwIcon { // deprecated
    return [self iconWithName:@"cw"];
}

+ (FIIcon *)repeatIcon {
    return [self iconWithName:@"repeat"];
}

+ (FIIcon *)ccwIcon { // deprecated
    return [self iconWithName:@"ccw"];
}

+ (FIIcon *)undoIcon {
    return [self iconWithName:@"undo"];
}

+ (FIIcon *)arrowsCwIcon { // deprecated
    return [self iconWithName:@"arrows-cw"];
}

+ (FIIcon *)refreshIcon {
    return [self iconWithName:@"refresh"];
}

+ (FIIcon *)shuffleIcon { // deprecated
    return [self iconWithName:@"shuffle"];
}

+ (FIIcon *)randomIcon {
    return [self iconWithName:@"random"];
}

+ (FIIcon *)playIcon {
    return [self iconWithName:@"play"];
}

+ (FIIcon *)playCircle2Icon { // deprecated
    return [self iconWithName:@"play-circle2"];
}

+ (FIIcon *)playCircleIcon {
    return [self iconWithName:@"play-circle"];
}

+ (FIIcon *)stopIcon {
    return [self iconWithName:@"stop"];
}

+ (FIIcon *)pauseIcon {
    return [self iconWithName:@"pause"];
}

+ (FIIcon *)toEndIcon { // deprecated
    return [self iconWithName:@"to-end"];
}

+ (FIIcon *)stepForwardIcon {
    return [self iconWithName:@"step-forward"];
}

+ (FIIcon *)toEndAltIcon { // deprecated
    return [self iconWithName:@"to-end-alt"];
}

+ (FIIcon *)fastForwardIcon {
    return [self iconWithName:@"fast-forward"];
}

+ (FIIcon *)toStartIcon { // deprecated
    return [self iconWithName:@"to-start"];
}

+ (FIIcon *)stepBackwardIcon {
    return [self iconWithName:@"step-backward"];
}

+ (FIIcon *)toStartAltIcon { // deprecated
    return [self iconWithName:@"to-start-alt"];
}

+ (FIIcon *)fastBackwardIcon {
    return [self iconWithName:@"fast-backward"];
}

+ (FIIcon *)fastFwIcon { // deprecated
    return [self iconWithName:@"fast-fw"];
}

+ (FIIcon *)forwardIcon { // renamed
    return [self iconWithName:@"forward"];
}

+ (FIIcon *)fastBwIcon { // deprecated
    return [self iconWithName:@"fast-bw"];
}

+ (FIIcon *)backwardIcon {
    return [self iconWithName:@"backward"];
}

+ (FIIcon *)ejectIcon {
    return [self iconWithName:@"eject"];
}

+ (FIIcon *)targetIcon { // deprecated
    return [self iconWithName:@"target"];
}

+ (FIIcon *)screenshotIcon {
    return [self iconWithName:@"screenshot"];
}

+ (FIIcon *)signalIcon {
    return [self iconWithName:@"signal"];
}

+ (FIIcon *)awardIcon { // deprecated
    return [self iconWithName:@"award"];
}

+ (FIIcon *)trophyIcon {
    return [self iconWithName:@"trophy"];
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

+ (FIIcon *)flashIcon { // deprecated
    return [self iconWithName:@"flash"];
}

+ (FIIcon *)boltIcon {
    return [self iconWithName:@"bolt"];
}

+ (FIIcon *)umbrellaIcon {
    return [self iconWithName:@"umbrella"];
}

+ (FIIcon *)flightIcon { // deprecated
    return [self iconWithName:@"flight"];
}

+ (FIIcon *)planeIcon {
    return [self iconWithName:@"plane"];
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

+ (FIIcon *)listBulletIcon { // deprecated
    return [self iconWithName:@"list-bullet"];
}

+ (FIIcon *)listUlIcon {
    return [self iconWithName:@"list-ul"];
}

+ (FIIcon *)listNumberedIcon { // deprecated
    return [self iconWithName:@"list-numbered"];
}

+ (FIIcon *)listOlIcon {
    return [self iconWithName:@"list-ol"];
}

+ (FIIcon *)strikeIcon { // deprecated
    return [self iconWithName:@"strike"];
}

+ (FIIcon *)strikethroughIcon {
    return [self iconWithName:@"strikethrough"];
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

+ (FIIcon *)scissorsIcon { // deprecated
    return [self iconWithName:@"scissors"];
}

+ (FIIcon *)cutIcon {
    return [self iconWithName:@"cut"];
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

+ (FIIcon *)ajustIcon { // deprecated
    return [self iconWithName:@"ajust"];
}

+ (FIIcon *)adjustIcon {
    return [self iconWithName:@"adjust"];
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

+ (FIIcon *)chartBarIcon { // deprecated
    return [self iconWithName:@"chart-bar"];
}

+ (FIIcon *)barChartIcon {
    return [self iconWithName:@"bar-chart"];
}

+ (FIIcon *)creditCardIcon {
    return [self iconWithName:@"credit-card"];
}

+ (FIIcon *)floppyIcon { // deprecated
    return [self iconWithName:@"floppy"];
}

+ (FIIcon *)saveIcon {
    return [self iconWithName:@"save"];
}

+ (FIIcon *)megaphoneIcon { // deprecated
    return [self iconWithName:@"megaphone"];
}

+ (FIIcon *)bullhornIcon {
    return [self iconWithName:@"bullhorn"];
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

+ (FIIcon *)hammerIcon { // deprecated
    return [self iconWithName:@"hammer"];
}

+ (FIIcon *)legalIcon {
    return [self iconWithName:@"legal"];
}

+ (FIIcon *)gaugeIcon {
    return [self iconWithName:@"gauge"];
}

+ (FIIcon *)sitemapIcon {
    return [self iconWithName:@"sitemap"];
}

+ (FIIcon *)githubSquaredIcon { // deprecated
    return [self iconWithName:@"github-squared"];
}

+ (FIIcon *)githubSignIcon {
    return [self iconWithName:@"github-sign"];
}

+ (FIIcon *)githubIcon {
    return [self iconWithName:@"github"];
}

+ (FIIcon *)twitterSquaredIcon { // deprecated
    return [self iconWithName:@"twitter-squared"];
}

+ (FIIcon *)twitterSignIcon {
    return [self iconWithName:@"twitter-sign"];
}

+ (FIIcon *)twitterIcon {
    return [self iconWithName:@"twitter"];
}

+ (FIIcon *)facebookSquaredIcon { // deprecated
    return [self iconWithName:@"facebook-squared"];
}

+ (FIIcon *)facebookSignIcon {
    return [self iconWithName:@"facebook-sign"];
}

+ (FIIcon *)facebookIcon {
    return [self iconWithName:@"facebook"];
}

+ (FIIcon *)linkedinSquaredIcon { // deprecated
    return [self iconWithName:@"linkedin-squared"];
}

+ (FIIcon *)linkedinSignIcon {
    return [self iconWithName:@"linkedin-sign"];
}

+ (FIIcon *)linkedinIcon {
    return [self iconWithName:@"linkedin"];
}

+ (FIIcon *)pinterestCircledIcon { // deprecated
    return [self iconWithName:@"pinterest-circled"];
}

+ (FIIcon *)pinterestIcon {
    return [self iconWithName:@"pinterest"];
}

+ (FIIcon *)pinterestSquaredIcon { // deprecated
    return [self iconWithName:@"pinterest-squared"];
}

+ (FIIcon *)pinterestSignIcon {
    return [self iconWithName:@"pinterest-sign"];
}

+ (FIIcon *)gplusSquaredIcon { // deprecated
    return [self iconWithName:@"gplus-squared"];
}

+ (FIIcon *)googlePlusSignIcon {
    return [self iconWithName:@"google-plus-sign"];
}

+ (FIIcon *)gplusIcon { // deprecated
    return [self iconWithName:@"gplus"];
}

+ (FIIcon *)googlePlusIcon {
    return [self iconWithName:@"google-plus"];
}

+ (FIIcon *)blankIcon { // deprecated
    return [self iconWithName:@"blank"];
}

+ (FIIcon *)signBlankIcon {
    return [self iconWithName:@"sign-blank"];
}

+ (FIIcon *)lemonIcon {
    return [self iconWithName:@"lemon"];
}

@end
