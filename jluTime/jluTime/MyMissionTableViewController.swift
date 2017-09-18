//
//  MyMissionTableViewController.swift
//  jluTime
//
//  Created by 张帅 on 2017/9/18.
//  Copyright © 2017年 张帅. All rights reserved.
//

import UIKit
class Missions : UITableViewCell{
    var logo : UIImageView!
    var name : UILabel!
    var state : UILabel!
    var Cell:UIView!
    func setLocation(No:Int = 0){
        logo = UIImageView(frame: CGRect(x:6,y:11+(No*43),width:22,height:22))
        name = UILabel(frame: CGRect(x:30,y:0+(No*43),width:300,height:44))
        state = UILabel(frame: CGRect(x:334,y:7+(No*43),width:41,height:28))
        Cell = UIView(frame: CGRect(x: 0, y: 0+(No*43), width:375, height: 43))
    }
    func SetACell()->UIView{
        logo.image = #imageLiteral(resourceName: "劳动节")
        name.text = "任务1"
        state.text = "已完成"
        if state.text == "已完成" {
            state.textColor = UIColor.green
        }
        else{
            state.textColor = UIColor.red
        }
        Cell.addSubview(logo)
        Cell.addSubview(name)
        Cell.addSubview(state)
        return Cell
    }
};
class MyMissionTableViewController: UITableViewController {
    @IBOutlet weak var scrollview: UIScrollView!
    var a : [actUIViewCellController] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        var No = 4
        //添加cell，活动内容
        for i in 0..<No {
            a.append(actUIViewCellController())
            a[i].setLocation(No: i)
            scrollview.addSubview(a[i].setACell())
            
        }
        scrollview.contentSize = CGSize(width: 375, height: No*190+50)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

}
