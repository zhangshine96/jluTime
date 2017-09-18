//
//  DetailTableViewController.swift
//  jluTime
//
//  Created by 张帅 on 2017/9/18.
//  Copyright © 2017年 张帅. All rights reserved.
//

import UIKit
class DetailTableViewController: UITableViewController {
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var location: UILabel!
    @IBOutlet weak var text: UITextView!
    @IBOutlet weak var handon: UILabel!
    @IBOutlet weak var get: UILabel!
    @IBOutlet weak var exp: UILabel!
    @IBOutlet weak var love: UILabel!
    @IBOutlet weak var gold: UILabel!
    @IBOutlet weak var request: UILabel!
    @IBOutlet weak var danwei: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presentingViewController!.dismiss(animated: true, completion: nil)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

}
