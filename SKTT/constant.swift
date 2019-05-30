//
//  constant.swift
//  SKTT
//
//  Created by Kwan on 2019/5/30.
//  Copyright © 2019 Kwan. All rights reserved.
//

import Foundation
import UIKit


//屏幕宽度
let kScreenWith = UIScreen.main.bounds.size.width
//屏幕高度
let kScreenHeight = UIScreen.main.bounds.size.height


//判断是否为iPhone X 或 iPhone XS
let kIsIPhoneX_XS = UIScreen.main.bounds.size.equalTo(CGSize(width: 375.0, height: 812.0))
//判断是否为iPhone XR 或 iPhone XS Max
let kIsIPhoneXR_XSMax = UIScreen.main.bounds.size.equalTo(CGSize(width: 414.0, height: 896.0))
//判断是否为异性全面屏
let kIsFullScreen = (kIsIPhoneX_XS || kIsIPhoneXR_XSMax)
//Status Bar 高度
let kStatusBarHeight = kIsFullScreen ? 44.0 : 20.0
//Tabbar sage bottom 高度
let kTabbarSafeBtmHeight = kIsFullScreen ? 34.0 : 0
//NavgationBar 高度
let kNavHeight = kIsFullScreen ? 88.0 : 64.0






