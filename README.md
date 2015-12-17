# GetDeviceInfoDemo
获取设备相关信息，如屏幕宽高、设备型号、系统版本
## 介绍
本工程获取三种常用的设备信息：
* 获取屏幕的宽高。用于在设置控件位置的时候计算相对屏幕的距离
* 获取设备的型号。5s和6+的屏幕大小相差很远，相应的控件位置、大小都需要做出调整，不然就会出现在6+上显得很空旷或者在5s上显示不全的问题。
* 获取系统版本。不同的系统版本有着不同的特性，举个栗子，iOS 9以下的版本就没有Live Photo；再举个栗子，iOS 7以上的系统版本往往需要调整一下边界

## 方法
以下方法均使用pch宏文件来设置，便于全局调用
* 获取屏幕的宽高
```Objective-c
// 设备宽度  
 [UIScreen mainScreen].bounds.size.width  
  
// 设备高度  
[UIScreen mainScreen].bounds.size.height  
```

* 获取设备的型号
```Objective-c
// 根据屏幕分辨率判断设备，是则返回YES，不是返回NO  
#define isiPhone5or5sor5c ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)  
#define isiPhone6or6s ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)  
#define isiPhone6plusor6splus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO) 
```

* 获取系统版本
```Objective-c
// 设备的系统版本  
#define SystemVersion ([[UIDevice currentDevice] systemVersion]) 

// 使用：
if ([SystemVersion floatValue] >= 7.0)  
{  
    ……  
}  
```
