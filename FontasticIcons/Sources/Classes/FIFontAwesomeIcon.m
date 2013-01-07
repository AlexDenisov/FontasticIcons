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
