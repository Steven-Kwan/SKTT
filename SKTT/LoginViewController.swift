//
//  LoginViewController.swift
//  SKTT
//
//  Created by Kwan on 2019/5/30.
//  Copyright © 2019 Kwan. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
    
    lazy var topImage: UIImageView = {
        let topImage = UIImageView()
        topImage.image = UIImage(named: "icon_lanuch")
        topImage.frame = CGRect(x: Double(CGFloat((kScreenWith-120)/2.0)), y: kNavHeight+40, width: 120.0, height: 120.0)
        return topImage
    }()
    
    
    lazy var accountField: UITextField = {
        let accountField = UITextField()
        accountField.placeholder = "请输入手机号"
        accountField.textAlignment = .center
        accountField.borderStyle = .none
        accountField.frame = CGRect(x: 20, y: self.topImage.frame.origin.y+120+40, width: kScreenWith-40, height: 30)
        return accountField
    }()
    
    lazy var underLine: UIView = {
        let underLine = UIView()
        underLine.backgroundColor = UIColor.lightGray
        underLine.frame = CGRect(x: 20, y: self.accountField.frame.origin.y+30, width: kScreenWith-40, height: 1.0)
        return underLine
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()

        // Do any additional setup after loading the view.
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

extension LoginViewController {
    
    func setUpUI() {
        view.addSubview(topImage);
        view.addSubview(accountField);
        view.addSubview(underLine);
        
    }
}
