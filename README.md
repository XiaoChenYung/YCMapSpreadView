YCMapSpreadView
====================

![Platform](https://img.shields.io/cocoapods/p/TWPhotoPicker.svg)

YCMapSpreadView is an animation view like baidu map or gaode map app.

一款仿百度地图和高德地图定位动画的View，使用核心动画封装

## Screenshots
![image](https://github.com/XiaoChenYung/YCMapSpreadView/blob/master/images/gaode.PNG)
![image](https://github.com/XiaoChenYung/YCMapSpreadView/blob/master/images/mapView.png)
## Installation

With [CocoaPods](http://cocoapods.org/), add this line to your `Podfile`.

```
pod 'YCMapSpreadView'
```

and run `pod install`, then you're all done!

## How to use
###Code
you can creat mapSpreadView directly with frame or SB
```objc
YCMapSpreadView *mapView = [[YCMapSpreadView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
[self.view addSubview:mapView];

```
###SB
![image](https://github.com/XiaoChenYung/YCMapSpreadView/blob/master/images/SBPic.png)
## Requirements

* iOS 7.0+ 
* ARC

## License

YCMapSpreadView is available under the Apache license, see the LICENSE file for more information.     
