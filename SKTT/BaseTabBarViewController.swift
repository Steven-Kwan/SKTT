//
//  BaseTabBarViewController.swift
//  SKTT
//
//  Created by Kwan on 2019/5/30.
//  Copyright © 2019 Kwan. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initTabbar()

        // Do any additional setup after loading the view.
    }
    
    
    func initTabbar() {
        let itemTitleArr = ["首页","话题","","禅城生活","个人中心"];
        let icon_normal:Array = [
            "tabbar_icon_home",
            "tabbar_icon_friend",
            "tabbar_icon_publish" ,
            "tabbar_icon_all",
            "tabbar_icon_me" ]
        
        let icon_selected = [
            "tabbar_icon_home_selected",
            "tabbar_icon_friend_selected",
            "tabbar_icon_publish" ,
            "tabbar_icon_all_selected",
            "tabbar_icon_me_selected" ]
        
        let vcname = [
            "HomeViewController",
            "FriendRootController",
            "BaseViewController",
            "AllViewController",
            "MeViewController"]
        
        var vcArr:Array = [UIViewController]()
        
        for i in 0..<vcname.count {
            let appname = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
            
            let cls = NSClassFromString(appname + "." + vcname[i]) as! BaseViewController.Type
            var vc:UIViewController!
            vc = cls.init()
            let barItem  = UITabBarItem(title: itemTitleArr[i], image: UIImage(named: icon_normal[i])?.withRenderingMode(.alwaysOriginal) , selectedImage: UIImage(named: icon_selected[i])?.withRenderingMode(.alwaysOriginal))
            barItem.tag = i
            if i == 2 {
                barItem.imageInsets = UIEdgeInsets(top: 5, left: 0, bottom: -5, right: 0)
            }
            barItem.setTitleTextAttributes([.foregroundColor:UIColor.black], for: .selected)
            vc.tabBarItem = barItem
            vc.title = itemTitleArr[i]
            
            let navigationVC = BaseNavigationViewController(rootViewController: vc)
            vcArr.append(navigationVC)
        }
        viewControllers = vcArr
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
