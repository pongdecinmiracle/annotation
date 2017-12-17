//
//  ViewController.swift
//  anno
//
//  Created by Pongdec><MacBook on 12/17/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit
import MapKit
import Firebase

class ViewController: UIViewController,MKMapViewDelegate {

    
    @IBOutlet weak var mapView: MKMapView!
    var ref: DatabaseReference!
    //
    var latitude:Array<Double> = [13.7947309,13.792031,13.791929,13.788250,13.791935,13.791938,13.792274,13.794436,13.796363,13.796647,13.7978218,13.799085,13.799101,13.800278,13.798728,13.796751,13.796556,13.795178,13.795574,13.796647,13.793173,13.798249,13.796775,13.797546,13.798666,13.796733,13.796767,13.794938,13.791802,13.791812,13.791796,13.791801,13.7935803]
    var longitude:Array<Double> = [100.3183714,100.319609,100.322044,100.324335,100.323001,100.325034,100.326759,100.326043,100.326562,100.325760,100.3235552,100.321887,100.321042,100.320272,100.318685,100.319394,100.319925,100.324252,100.322833,100.321489,100.317310,100.320211,100.320577,100.321607,100.323790,100.324475,100.326137,100.326754,100.326223,100.325005,100.322961,100.322248,100.3228724]
    var signLocation:Array<String> = ["สถานีรถร่าง","หอพัก 8-9","คณะวิทยาศาสตร์ อาคาร 3-4","วิทยาลัยดุริยางคศิลป์","คณะวิทยาศาสตร์ อาคาร 1-2","คณะสังคมมนุษยศาสตร์","วิทยาลัยนานาชาติ","OP Building","EG gate 4","EG building 3","แปลงผักปลอดสารพิษ","โรงเรียนพยาบาลรามาฯ","หอพักพยาบาลรามาฯ","อาคารชุดพักอาศัย(คอนโด)","สถาบันฯเด็กและครอบครัว","สนามเปตอง","อาคารอเนกประสงค์","หอสมุด","คณะสิ่งแวดล้อมและทรัพยากรศาสตร์","วิทยาลัยวิทยาศาสตร์ฯกีฬา","หล่งนันทนาการทางน้ำ(MU Lake)","สนามฟุตบอล","คณะศิลปศาสตร์","คณะกายภาพบำบัด","คณะเทคนิคการแพทย์","สถาบันวิจัยประชากรและสังคม","สถาบันชีววิทยาศาสตร์โมเลกุล","gate 3","สถาบันฯสุขภาพอาเซียน","เรือนไทย","สถาบันวิจัยภาษาและวัฒนธรรม","ลานจอดรถ 2","MLC"]
    var i:Int = 0
    //
    var redTime = 1
    var greenTime = 1
    var blueTime = 1
    var yellowTime = 1
    
    func getTime(){
        ref.child("users").child("Blue").child("Time").observe(DataEventType.value, with: { (snapshot) in
            let valueFir = snapshot.value as! NSDictionary
            let bleTime   = valueFir.value(forKey: "Time") as! Int
            print("bleTime+\(bleTime)")
            self.blueTime = bleTime
        })
    }
    
    var point:Array<MapMaker> = []
    
    
    func addMaker(){
        
        for _ in signLocation{
            
                ref.child("users").child("Blue").child("Time").observe(DataEventType.value, with: { (snapshot) in
                    let valueFir = snapshot.value as! NSDictionary
                    let bleTime   = valueFir.value(forKey: "Time") as! Int
//                    bleTime = bleTime -
                    print("bleTime+\(bleTime)")
                    
                    //            let Location = CLLocationCoordinate2DMake(latitude[self.i],longitude[self.i] )
                    let Location = CLLocationCoordinate2DMake(self.latitude[self.i],self.longitude[self.i] )
                    //            let annotation = MapMaker(coordinate: Location, title: "\(signLocation[i])", subtitle: "\(signLocation[i])", imageName: "pin.png", redTram: self.redTime, greenTram: self.greenTime, blueTram: self.blueTime, yellowTram: self.yellowTime)
                    if(self.i<33){
                        let point = MapMaker(coordinate: CLLocationCoordinate2D(latitude: self.latitude[self.i] , longitude: self.longitude[self.i] ))
                        point.coordinate = Location
                        point.title = self.signLocation[self.i]
                        point.idSign = self.i
                        point.imageName = UIImage(named: "pin")
                        point.redTram = "Red Tram : \(self.redTime) min"
                        point.greenTram = "Green Tram : \(self.greenTime) min"
                        point.blueTram = "Blue Tram : \(bleTime) min"
                        point.yellowTram = "Yellow Tram : \(self.yellowTime) min"
                        self.mapView.addAnnotation(point)
                        self.i = self.i + 1
                    }
                })
            
        }
        
//            let Location1 = CLLocationCoordinate2DMake(latitude[1],longitude[1] )
//            let point1 = MapMaker(coordinate: CLLocationCoordinate2D(latitude: latitude[1] , longitude: longitude[1] ))
//            point1.coordinate = Location1
//            point1.title = signLocation[1]
//            point1.imageName = UIImage(named: "pin")
//            point1.redTram = "Red Tram : \(redTime)"
//            point1.greenTram = "Green Tram : \(greenTime)"
//            point1.blueTram = "Blue Tram : \(blueTime)"
//            point1.yellowTram = "Yellow Tram : \(yellowTime)"
//            mapView.addAnnotation(point1)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        ref = Database.database().reference()
        self.mapView.delegate = self
        mapView.showsUserLocation = true
        myMap()
        addMaker()
//        getTime()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
    {
        if !(annotation is MKPointAnnotation) {
            print("NOT REGISTERED AS MKPOINTANNOTATION")
            return nil
        }
        
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "myIdentitfier")
        if annotationView == nil {
            annotationView = AnnotationView(annotation: annotation, reuseIdentifier: "myIdentitfier")
            annotationView!.canShowCallout = true
        }
            
        else {
            annotationView!.annotation = annotation
        }
        
//        let cpa = annotation as! CustomPointAnnotation
//        let cpa = annotation as! MapMaker
        annotationView!.image = UIImage(named: "pin")
        return annotationView
    }
    func mapView(_ mapView: MKMapView,
                 didSelect view: MKAnnotationView)
    {
        // 1
        if view.annotation is MKUserLocation
        {
            // Don't proceed with custom callout
            return
        }
        // 2
        let starbucksAnnotation = view.annotation as! MapMaker
        let views = Bundle.main.loadNibNamed("CustomCalloutView", owner: nil, options: nil)
        let calloutView = views?[0] as! CustomCalloutView
        calloutView.locationName.text = starbucksAnnotation.title
        calloutView.redTime.text = starbucksAnnotation.redTram
        calloutView.greenTime.text = starbucksAnnotation.greenTram
        calloutView.blueTime.text = starbucksAnnotation.blueTram
        calloutView.yellowTime.text = starbucksAnnotation.yellowTram
        //

        //
//        let button = UIButton(frame: calloutView.starbucksPhone.frame)
//        button.addTarget(self, action: #selector(ViewController.callPhoneNumber(sender:)), for: .touchUpInside)
//        calloutView.addSubview(button)
//        calloutView.starbucksImage.image = starbucksAnnotation.image
        // 3
        calloutView.center = CGPoint(x: view.bounds.size.width / 2, y: -calloutView.bounds.size.height*0.52)
        view.addSubview(calloutView)
        mapView.setCenter((view.annotation?.coordinate)!, animated: true)
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        print("click")
        if view.isKind(of: AnnotationView.self)
        {
            for subview in view.subviews
            {
                subview.removeFromSuperview()
            }
            self.mapView.reloadInputViews()
        }
    }
    
    func myMap(){
        let location = CLLocationCoordinate2D(latitude: 13.7946, longitude: 100.3234)
        
        let region = MKCoordinateRegionMakeWithDistance(location, 500.0, 1500.0)
        mapView.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

