//
//  FIEntypoSocialIcon.m
//  FontasticIcons
//
//  Created by Alex Denisov on 29.10.12.
//  Copyright (c) 2012 Alex Denisov. All rights reserved.
//

#import "FIEntypoSocialIcon.h"
#import "FIFont.h"

@implementation FIEntypoSocialIcon

+ (FIFont *)iconFont {
    return [FIFont entypoSocialFont];
}

+ (NSDictionary *)iconsDictionary {
    return @{
        @"github":@"\U0000F300",
        @"c-github":@"\U0000F301",
        @"flickr":@"\U0000F303",
        @"c-flickr":@"\U0000F304",
        @"vimeo":@"\U0000F306",
        @"c-vimeo":@"\U0000F307",
        @"twitter":@"\U0000F309",
        @"c-twitter":@"\U0000F30A",
        @"facebook":@"\U0000F30C",
        @"c-facebook":@"\U0000F30D",
        @"s-facebook":@"\U0000F30E",
        @"google+":@"\U0000F30F",
        @"c-google+":@"\U0000F310",
        @"pinterest":@"\U0000F312",
        @"c-pinterest":@"\U0000F313",
        @"tumblr":@"\U0000F315",
        @"c-tumblr":@"\U0000F316",
        @"linkedin":@"\U0000F318",
        @"c-linkedin":@"\U0000F319",
        @"dribbble":@"\U0000F31B",
        @"c-dribbble":@"\U0000F31C",
        @"stumbleupon":@"\U0000F31E",
        @"c-stumbleupon":@"\U0000F31F",
        @"lastfm":@"\U0000F321",
        @"c-lastfm":@"\U0000F322",
        @"rdio":@"\U0000F324",
        @"c-rdio":@"\U0000F325",
        @"spotify":@"\U0000F327",
        @"c-spotify":@"\U0000F328",
        @"qq":@"\U0000F32A",
        @"instagram":@"\U0000F32D",
        @"dropbox":@"\U0000F330",
        @"evernote":@"\U0000F333",
        @"flattr":@"\U0000F336",
        @"skype":@"\U0000F339",
        @"c-skype":@"\U0000F33A",
        @"renren":@"\U0000F33C",
        @"sina-weibo":@"\U0000F33F",
        @"paypal":@"\U0000F342",
        @"picasa":@"\U0000F345",
        @"soundcloud":@"\U0000F348",
        @"mixi":@"\U0000F34B",
        @"behance":@"\U0000F34E",
        @"google-circles":@"\U0000F351",
        @"vk":@"\U0000F354"
    };
}

#pragma mark - Icons

+ (FIIcon *)githubIcon {
    return [self iconWithName:@"github"];
}

+ (FIIcon *)githubCircleIcon {
    return [self iconWithName:@"c-github"];
}

+ (FIIcon *)flickrIcon {
    return [self iconWithName:@"flickr"];
}

+ (FIIcon *)flickrCircleIcon {
    return [self iconWithName:@"c-flickr"];
}

+ (FIIcon *)vimeoIcon {
    return [self iconWithName:@"vimeo"];
}

+ (FIIcon *)vimeoCircleIcon {
    return [self iconWithName:@"c-vimeo"];
}

+ (FIIcon *)twitterIcon {
    return [self iconWithName:@"twitter"];
}

+ (FIIcon *)twitterCircleIcon {
    return [self iconWithName:@"c-twitter"];
}

+ (FIIcon *)facebookIcon {
    return [self iconWithName:@"facebook"];
}

+ (FIIcon *)facebookCircleIcon {
    return [self iconWithName:@"c-facebook"];
}

+ (FIIcon *)facebookSquareIcon {
    return [self iconWithName:@"s-facebook"];
}

+ (FIIcon *)googlePlusIcon {
    return [self iconWithName:@"google+"];
}

+ (FIIcon *)googlePlusCircleIcon {
    return [self iconWithName:@"c-google+"];
}

+ (FIIcon *)pinterestIcon {
    return [self iconWithName:@"pinterest"];
}

+ (FIIcon *)pinterestCircleIcon {
    return [self iconWithName:@"c-pinterest"];
}

+ (FIIcon *)tumblrIcon {
    return [self iconWithName:@"tumblr"];
}

+ (FIIcon *)tumblrCircleIcon {
    return [self iconWithName:@"c-tumblr"];
}

+ (FIIcon *)linkedinIcon {
    return [self iconWithName:@"linkedin"];
}

+ (FIIcon *)linkedinCircleIcon {
    return [self iconWithName:@"c-linkedin"];
}

+ (FIIcon *)dribbbleIcon {
    return [self iconWithName:@"dribbble"];
}

+ (FIIcon *)dribbbleCircleIcon {
    return [self iconWithName:@"c-dribbble"];
}

+ (FIIcon *)stumbleuponIcon {
    return [self iconWithName:@"stumbleupon"];
}

+ (FIIcon *)stumbleuponCircleIcon {
    return [self iconWithName:@"c-stumbleupon"];
}

+ (FIIcon *)lastfmIcon {
    return [self iconWithName:@"lastfm"];
}

+ (FIIcon *)lastfmCircleIcon {
    return [self iconWithName:@"c-lastfm"];
}

+ (FIIcon *)rdioIcon {
    return [self iconWithName:@"rdio"];
}

+ (FIIcon *)rdioCircleIcon {
    return [self iconWithName:@"c-rdio"];
}

+ (FIIcon *)spotifyIcon {
    return [self iconWithName:@"spotify"];
}

+ (FIIcon *)spotifyCircleIcon {
    return [self iconWithName:@"c-spotify"];
}

+ (FIIcon *)qqIcon {
    return [self iconWithName:@"qq"];
}

+ (FIIcon *)instagramIcon {
    return [self iconWithName:@"instagram"];
}

+ (FIIcon *)dropboxIcon {
    return [self iconWithName:@"dropbox"];
}

+ (FIIcon *)evernoteIcon {
    return [self iconWithName:@"evernote"];
}

+ (FIIcon *)flattrIcon {
    return [self iconWithName:@"flattr"];
}

+ (FIIcon *)skypeIcon {
    return [self iconWithName:@"skype"];
}

+ (FIIcon *)skypeCircleIcon {
    return [self iconWithName:@"c-skype"];
}

+ (FIIcon *)renrenIcon {
    return [self iconWithName:@"renren"];
}

+ (FIIcon *)sinaWeiboIcon {
    return [self iconWithName:@"sina-weibo"];
}

+ (FIIcon *)paypalIcon {
    return [self iconWithName:@"paypal"];
}

+ (FIIcon *)picasaIcon {
    return [self iconWithName:@"picasa"];
}

+ (FIIcon *)soundcloudIcon {
    return [self iconWithName:@"soundcloud"];
}

+ (FIIcon *)mixiIcon {
    return [self iconWithName:@"mixi"];
}

+ (FIIcon *)behanceIcon {
    return [self iconWithName:@"behance"];
}

+ (FIIcon *)googleCirclesIcon {
    return [self iconWithName:@"google-circles"];
}

+ (FIIcon *)vkIcon {
    return [self iconWithName:@"vk"];
}

@end
