//
//  StoreTableViewController.swift
//  jluTime
//
//  Created by 张帅 on 2017/9/17.
//  Copyright © 2017年 张帅. All rights reserved.
//

import UIKit

class StoreUITableViewCell : UITableViewCell{
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
    var Cell:UIView!
    var pic : UIImageView!
    var detail : UILabel!
    var gold : UIImageView!
    var number : UILabel!
    var line : UILabel!
    func setLocation(No : Int = 0) {
        detail = UILabel(frame: CGRect(x:212,y:8+(No*190),width:163,height:161))
        pic = UIImageView(frame:CGRect(x:0,y:8+(No*190),width: 204,height:161))
        gold  = UIImageView(frame:CGRect(x:309,y:8+(No*190),width: 22,height:23))
        number = UILabel(frame: CGRect(x:337,y:8+(No*190),width:30,height:22))
        line = UILabel(frame: CGRect(x:10,y:180+(No*190),width:355,height:2))
        Cell = UIView(frame: CGRect(x:0,y:0,width:375,height:190))
        
        
    }
    public func setACell()->UIView{
        detail.text = "商品详情"
        gold.image = #imageLiteral(resourceName: "金币")
        pic.image = #imageLiteral(resourceName: "劳动节")
        number.text = "10"
        Cell.addSubview(detail)
        Cell.addSubview(gold)
        Cell.addSubview(number)
        Cell.addSubview(pic)
        Cell.addSubview(line)
        return Cell
    }
    
    
};
class StoreTableViewController: UITableViewController {
    
    @IBOutlet weak var scroll: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        var No = 4
        for i in 0..<No{
            var a1 = StoreUITableViewCell()
            a1.setLocation(No:i)
            scroll.addSubview(a1.setACell())
        }
        scroll.contentSize = CGSize(width:375,height:No*190)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
