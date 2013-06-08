## FontasticIcons ![](http://cocoapod-badges.herokuapp.com/v/FontasticIcons/badge.png)

FontasticIcons is an Objective-C wrapper for iconic fonts.

![FontasticIcons example](https://github.com/AlexDenisov/FontasticIcons/blob/master/example.png?raw=true).

## Installation

### With CocoaPods

    pod 'FontasticIcons'

### Manual

Just add sources from `FontasticIcons/Sources/Classes` directory to your project.
 
## Usage

#### With UIView

```objective-c
#import <FontasticIcons.h>
...
FIIconView *iconView = [[FIIconView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
iconView.backgroundColor = [UIColor clearColor];
iconView.icon = [FIEntypoIcon leafIcon];
iconView.padding = 2;
iconView.iconColor = [UIColor greenColor];
[self.view addSubview:iconView];
```

#### With UITabBarItem

```objective-c
#import <FontasticIcons.h>
...
FIIcon *icon = [FIEntypoIcon leafIcon];    
UIImage *image = [icon imageWithBounds:CGRectMake(0, 0, 30, 30) color:[UIColor blackColor]];
[self.tabBarItem setImage:image];
```

#### With UIButton

```objective-c
#import <FontasticIcons.h>
...
UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
button.frame = CGRectMake(0, 0, 60, 40);
FIIcon *icon = [FIEntypoIcon leafIcon];    

FIIconLayer *layer = [FIIconLayer new];
layer.icon = icon;
layer.frame = button.bounds;
layer.iconColor = [UIColor greenColor];
[button.layer addSublayer:layer];
```

## Available fonts

 - Entypo pictograms by Daniel Bruce — www.entypo.com
 - FontAwesome by Dave Gandy - http://fortawesome.github.com/Font-Awesome/
 - Iconic font by P.J. Onori - http://somerandomdude.com/work/iconic/

## License

Source code distributed under MIT license.

**Note that all fonts have their own license.**

