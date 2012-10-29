## FontasticIcons

FontasticIcons is an Objective-C wrapper for iconic fonts.

![FontasticIcons example](https://github.com/AlexDenisov/FontasticIcons/blob/master/example.png?raw=true).

## Installation

### With CocoaPods

    pod 'FontasticIcons'

### Manual

Just add sources from `FontasticIcons/Sources/Classes` directory to your project.
 
## Usage

    FIIconView *iconView = [[FIIconView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    iconView.backgroundColor = [UIColor clearColor];
    iconView.icon = [FIEntypoIcon leafIcon];
    iconView.padding = 2;
    iconView.iconColor = [UIColor greenColor];
    [self.view addSubview:iconView];
    
## Available fonts

Right now added only [Entypo](http://www.entypo.com/) font.

## License

Source code distributed under MIT license.

**Note that all fonts have it's own license.**

