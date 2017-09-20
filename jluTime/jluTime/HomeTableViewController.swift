//
//  HomeTableViewController.swift
//  jluTime
//
//  Created by 张帅 on 2017/9/7.
//  Copyright © 2017年 张帅. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class HomeTableViewController: UITableViewController {
    var MainMapView: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //使用代码创建
        self.MainMapView = MKMapView(frame:self.view.frame)
        self.view.addSubview(self.MainMapView)
        //地图类型设置 - 标准地图
        self.MainMapView.mapType = MKMapType.standard
        //创建一个MKCoordinateSpan对象，设置地图的范围（越小越精确）
        let latDelta = 0.01
        let longDelta = 0.01
        let currentLocationSpan:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        //定义地图区域和中心坐标（
        //使用当前位置
        //var center:CLLocation = locationManager.location.coordinate
        //使用自定义位置
        let center:CLLocation = CLLocation(latitude: 43.824153, longitude: 125.285104)
        let currentRegion:MKCoordinateRegion = MKCoordinateRegion(center: center.coordinate,span: currentLocationSpan)
        //设置显示区域
        self.MainMapView.setRegion(currentRegion, animated: true)
        
        //创建一个大头针对象
        let objectAnnotation = MKPointAnnotation()
        
        //设置大头针的显示位置
        objectAnnotation.coordinate = CLLocation(latitude: 43.824153,
            longitude: 125.285104).coordinate
        //设置点击大头针之后显示的标题
        objectAnnotation.title = "你的位置"
        //设置点击大头针之后显示的描述
        objectAnnotation.subtitle = "吉林大学五月花广场"
        //添加大头针
        self.MainMapView.addAnnotation(objectAnnotation)
        let des = MKPointAnnotation()
        des.coordinate = CLLocation(latitude: 43.8215041, longitude: 125.2821793).coordinate
        des.title = "领取任务"
        des.subtitle = "计算机学院"
        self.MainMapView.addAnnotation(des)
        MainMapView.showsUserLocation = true
        let user = MainMapView.userLocation.location?.coordinate
        //MainMapView.addAnnotation(user as! MKAnnotation)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    //自定义大头针样式
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation)
        -> MKAnnotationView? {
            if annotation is MKUserLocation {
                return nil
            }
            
            let reuserId = "pin"
            var pinView = mapView.dequeueReusableAnnotationView(withIdentifier: reuserId)
                as? MKPinAnnotationView
            if pinView == nil {
                //创建一个大头针视图
                pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: reuserId)
                pinView?.canShowCallout = true
                pinView?.animatesDrop = true
                //设置大头针颜色
                pinView?.pinTintColor = UIColor.green
                //设置大头针点击注释视图的右侧按钮样式
                pinView?.rightCalloutAccessoryView = UIButton(type: .detailDisclosure)
            }else{
                pinView?.annotation = annotation
            }
            
            return pinView
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

}
