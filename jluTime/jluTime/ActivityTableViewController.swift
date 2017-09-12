//
//  ActivityTableViewController.swift
//  jluTime
//
//  Created by 张帅 on 2017/9/9.
//  Copyright © 2017年 张帅. All rights reserved.
//

import UIKit
class Requst{
    
}
//class Activity:NSObject{
//    private var person : Person     //接受任务的人
//    private var glod : Int          //此任务奖励的金币
//    private var exp : Int           //此任务奖励的经验
//    private var location : [Int]   //此任务的接受地点（经纬度）
//    private var requst : Requst     //此任务的完成要求
//    //需要初始化 人物 金币 经验 领取任务地点 任务完成的要求
//    init(p:Person , gold : Int = 0 , exp : Int = 0 , location : [Int] = [0,0] , requst : Requst = Requst()) {
//        person = p
//        self.glod = gold
//        self.exp = exp
//        self.location = location
//        self.requst = requst
//    }
//
//}
class actUIViewCellController : UITableViewCell{
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier);
        //调用单元格初始化方法
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:)has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    //详细信息
    var detail: UILabel!
    //领取任务地点
    var location: UILabel!
    //任务类型
    var type: UIImageView!
    //活动标题
    var title1: UILabel!
    //任务类型
    var type2: UIImageView!
    //前往下个界面
    var go_detail: UIButton!
    //金币图标
    var gold: UIImageView!
    //整个cell块
    var Cell: UIView!
    //金币数量
    var gold_number: UILabel!
    //奖励任务类型的数量
    var type_number: UILabel!
    func setLocation(No : Int = 0){
        //详细信息
        detail = UILabel(frame: CGRect(x: 0, y: 65+(No*190), width:347, height: 129))
        //领取任务地点
        location = UILabel(frame: CGRect(x: 28, y: 36+(No*190), width:319, height: 21))
        //任务类型
        type = UIImageView(frame: CGRect(x: 0, y: 16+(No*190), width: 20, height: 17))
        //活动标题
        title1 = UILabel(frame: CGRect(x: 28, y: 8+(No*190), width:340, height: 32))
        //任务类型
         type2 = UIImageView(frame: CGRect(x: 305, y: 140+(No*190), width: 23, height: 18))
        //前往下个界面
         //go_detail: UIButton!
        //金币图标
        gold = UIImageView(frame: CGRect(x: 305, y: 114+(No*190), width: 23, height: 18))
        //整个cell块
        Cell = UIView(frame: CGRect(x: 0, y: 52, width:375, height: 190))
        //金币数量
        gold_number = UILabel(frame: CGRect(x: 331, y: 114+(No*190), width:25, height: 21))
        //奖励任务类型的数量
        type_number = UILabel(frame: CGRect(x: 331, y: 137+(No*190), width:25, height: 32))
    }
    func setACell() -> UIView{
        detail.text = "活动详情"
        type.image = #imageLiteral(resourceName: "劳动节")
        title1.text = "活动一"
        location.text = "活动地点"
        gold_number.text = "10"
        type_number.text = "10"
        gold.image = #imageLiteral(resourceName: "金币")
        type2.image = #imageLiteral(resourceName: "劳动节")
        Cell.addSubview(location)
        Cell.addSubview(gold)
        Cell.addSubview(gold_number)
        Cell.addSubview(type2)
        Cell.addSubview(type_number)
        Cell.addSubview(detail)
        Cell.addSubview(title1)
        Cell.addSubview(type)
        return Cell
        
    }
    
}
class ActivityTableViewController: UITableViewController {
    @IBOutlet weak var scrollview: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        var No = 4
        
        //添加cell，活动内容
        for i in 0..<No {
            var a1 = actUIViewCellController()
            a1.setLocation(No: i)
            scrollview.addSubview(a1.setACell())
            
        }
        scrollview.contentSize = CGSize(width: 375, height: 50+No*190)
        //self.view.addSubview(scrollview)
        

    }
   }
