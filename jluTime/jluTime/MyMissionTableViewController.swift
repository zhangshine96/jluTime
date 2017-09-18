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
    var line : UILabel!
    func setLocation(No:Int = 0){
        logo = UIImageView(frame: CGRect(x:6,y:6+(No*32),width:22,height:22))
        name = UILabel(frame: CGRect(x:30,y:0+(No*32),width:300,height:30))
        state = UILabel(frame: CGRect(x:330,y:7+(No*32),width:41,height:28))
        Cell = UIView(frame: CGRect(x: 0, y: 0+(No*32), width:375, height: 30))
        line = UILabel(frame: CGRect(x:10,y:30+(No*32),width:355,height:1))
    }
    func SetACell()->UIView{
        logo.image = #imageLiteral(resourceName: "劳动节")
        name.text = "任务1"
        state.text = "已完成"
        state.adjustsFontSizeToFitWidth = true
        if state.text == "已完成" {
            state.textColor = UIColor.green
        }
        else{
            state.textColor = UIColor.red
        }
        line.backgroundColor = UIColor.gray
        Cell.addSubview(logo)
        Cell.addSubview(name)
        Cell.addSubview(state)
        Cell.addSubview(line)
        return Cell
    }
};
class MyMissionTableViewController: UITableViewController {
    @IBOutlet weak var scrollview: UIScrollView!
    var b : [Missions] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        var No = 4
        //添加cell，活动内容
        for i in 0..<No {
            b.append(Missions())
            b[i].setLocation(No: i)
            scrollview.addSubview(b[i].SetACell())
            //b[i].SetACell().backgroundColor = UIColor.white
            
        }
        //scrollview.contentSize = CGSize(width: 375, height: 28+No*30)
        scrollview.frame = CGRect(x:0,y:28,width:375,height:No*40)
        //scrollview.backgroundColor = UIColor.white
        //self.view.backgroundColor = UIColor.gray
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   

}
