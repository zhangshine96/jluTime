//
//  SignUpViewController.swift
//  jluTime
//
//  Created by 万家兵 on 2017/9/12.
//  Copyright © 2017年 张帅. All rights reserved.
//

import UIKit
import LeanCloud




class SignUpViewController: UIViewController{

    @IBOutlet weak var UserName: UITextField!
    @IBOutlet weak var UserPassward: UITextField!
    
    @IBAction func signUp(_ sender: UIButton) {
        let username = UserName.text!
        let pass = UserPassward.text!
        LCUser.logIn(username: username, password: pass) { result in
            switch result {
            case .success(let user):
                self.performSegue(withIdentifier: "signUp", sender:nil )
            case .failure(let error):
                let alertController = UIAlertController(title: "用户名或密码错误，请重新输入。",
                                                        message: nil, preferredStyle: .alert)
                //显示提示框
                self.present(alertController, animated: true, completion: nil)
                //两秒钟后自动消失
                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
                    self.presentedViewController?.dismiss(animated: false, completion: nil)
                }
                self.UserName.text = ""
                self.UserPassward.text = ""
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
