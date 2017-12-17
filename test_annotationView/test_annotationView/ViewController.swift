//
//  ViewController.swift
//  test_annotationView
//
//  Created by Pongdec><MacBook on 12/16/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    class CustomPointAnnotation: MKPointAnnotation {
        var imageName: String!
    }
    
    @IBOutlet weak var mapView: MKMapView!
    

    var pikachuPin = CustomPointAnnotation()
    
    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.mapView.delegate = self
//        mapView.showsUserLocation = true
//        myMap()
//
//        let pikachuCoordinates = CLLocationCoordinate2DMake(13.7946,100.3234)
//        pikachuPin.coordinate = pikachuCoordinates
//        pikachuPin.title = "Pikachu"
//        pikachuPin.imageName = "pin.png"
//        mapView.addAnnotation(pikachuPin)
//
//
    }
//    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?
//    {
//        if !(annotation is MKPointAnnotation) {
//            print("NOT REGISTERED AS MKPOINTANNOTATION")
//            return nil
//        }
//
//        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: "pokemonIdentitfier")
//        if annotationView == nil {
//            annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "pokemonIdentitfier")
//            annotationView!.canShowCallout = true
//        }
//
//        else {
//            annotationView!.annotation = annotation
//        }
//
//        let cpa = annotation as! CustomPointAnnotation
//        annotationView!.image = UIImage(named: cpa.imageName)
//
//        return annotationView
//    }
//    func myMap(){
//        let location = CLLocationCoordinate2D(latitude: 13.7946, longitude: 100.3234)
//
//        let region = MKCoordinateRegionMakeWithDistance(location, 500.0, 1500.0)
//        mapView.setRegion(region, animated: true)
//    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

//    func myMap(){
//        let location = CLLocationCoordinate2D(latitude: 13.7946, longitude: 100.3234)
//
//        let region = MKCoordinateRegionMakeWithDistance(location, 500.0, 1500.0)
//        mapView.setRegion(region, animated: true)
//    }
//
//    func addPinToMap() {
//        let Location = CLLocationCoordinate2DMake(13.7942321,100.3264753 )
//        let annotation = MapMaker(coordinate: Location, title: "ตึกอธิการ", subtitle: "OP Building")
//        mapView.addAnnotation(annotation)
//
//    }
    
    
    
    
    
    

}//class

// Addition

/*
 var latitude:Array<Double> = [13.7947309,13.792031,13.791929,13.788250,13.791935,13.791938,13.792274,13.794436,13.796363,13.796647,13.7978218,13.799085,13.799101,13.800278,13.798728,13.796751,13.796556,13.795178,13.795574,13.796647,13.793173,13.798249,13.796775,13.797546,13.798666,13.796733,13.796767,13.794938,13.791802,13.791812,13.791796,13.791801,13.7935803]
 var longitude:Array<Double> = [100.3183714,100.319609,100.322044,100.324335,100.323001,100.325034,100.326759,100.326043,100.326562,100.325760,100.3235552,100.321887,100.321042,100.320272,100.318685,100.319394,100.319925,100.324252,100.322833,100.321489,100.317310,100.320211,100.320577,100.321607,100.323790,100.324475,100.326137,100.326754,100.326223,100.325005,100.322961,100.322248,100.3228724]
 var signLocation:Array<String> = ["สถานีรถร่าง","หอพัก 8-9","คณะวิทยาศาสตร์ อาคาร 3-4","วิทยาลัยดุริยางคศิลป์","คณะวิทยาศาสตร์ อาคาร 1-2","คณะสังคมมนุษยศาสตร์","วิทยาลัยนานาชาติ","OP Building","EG gate 4","EG building 3","แปลงผักปลอดสารพิษ","โรงเรียนพยาบาลรามาฯ","หอพักพยาบาลรามาฯ","อาคารชุดพักอาศัย(คอนโด)","สถาบันฯเด็กและครอบครัว","สนามเปตอง","อาคารอเนกประสงค์","หอสมุด","คณะสิ่งแวดล้อมและทรัพยากรศาสตร์","วิทยาลัยวิทยาศาสตร์ฯกีฬา","หล่งนันทนาการทางน้ำ(MU Lake)","สนามฟุตบอล","คณะศิลปศาสตร์","คณะกายภาพบำบัด","คณะเทคนิคการแพทย์","สถาบันวิจัยประชากรและสังคม","สถาบันชีววิทยาศาสตร์โมเลกุล","gate 3","สถาบันฯสุขภาพอาเซียน","เรือนไทย","สถาบันวิจัยภาษาและวัฒนธรรม","ลานจอดรถ 2","MLC"]
 Red :
 13.7947309,100.3183714 : สถานีรถร่าง
 13.792031, 100.319609 : หอพัก 8-9
 13.791929, 100.322044 : คณะวิทยาศาสตร์ อาคาร 3-4
 13.788250, 100.324335 : วิทยาลัยดุริยางคศิลป์
 13.791935, 100.323001 : คณะวิทยาศาสตร์ อาคาร 1-2
 13.791938, 100.325034 : คณะสังคมมนุษยศาสตร์
 13.792274, 100.326759 : วิทยาลัยนานาชาติ
 13.794436, 100.326043 : OP
 13.796363, 100.326562 : EG gate 4
 13.796647, 100.325760 : EG building 3
 13.7978218, 100.3235552 : แปลงผักปลอดสารพิษ
 13.799085, 100.321887 : โรงเรียนพยาบาลรามาฯ
 13.799101, 100.321042 : หอพักพยาบาลรามาฯ
 13.800278, 100.320272 : อาคารชุดพักอาศัย(คอนโด)
 13.798728, 100.318685 : สถาบันฯเด็กและครอบครัว
 13.796751, 100.319394 : สนามเปตอง
 13.796556, 100.319925 : อาคารอเนกประสงค์
 
 Green :
 //13.7947309,100.3183714 : สถานีรถร่าง
 //13.792031, 100.319609 : หอพัก 8-9
 //13.791929, 100.322044 : คณะวิทยาศาสตร์ อาคาร 3-4
 //13.791935, 100.323001 : คณะวิทยาศาสตร์ อาคาร 1-2
 //13.791938, 100.325034 : คณะสังคมมนุษยศาสตร์
 //13.792274, 100.326759 : วิทยาลัยนานาชาติ
 //13.794436, 100.326043 : OP
 //13.796363, 100.326562 : EG gate 4
 //13.796647, 100.325760 : EG building 3
 13.795178, 100.324252 : หอสมุด
 13.795574, 100.322833 : คณะสิ่งแวดล้อมและทรัพยากรศาสตร์
 13.796647, 100.321489 : วิทยาลัยวิทยาศาสตร์ฯกีฬา
 //13.796556, 100.319925 : อาคารอเนกประสงค์
 
 Blue
 //13.7947309,100.3183714 : สถานีรถร่าง
 13.793173, 100.317310 : แหล่งนันทนาการทางน้ำ(MU Lake)
 //13.798728, 100.318685 : สถาบันฯเด็กและครอบครัว
 //13.800278, 100.320272 : อาคารชุดพักอาศัย(คอนโด)
 13.798249, 100.320211 : สนามฟุตบอล
 13.796775, 100.320577 : คณะศิลปศาสตร์
 13.797546, 100.321607 : คณะกายภาพบำบัด
 //13.799085, 100.321887 : โรงเรียนพยาบาลรามาฯ
 13.798666, 100.323790 : คณะเทคนิคการแพทย์
 13.796733, 100.324475 : สถาบันวิจัยประชากรและสังคม
 13.796767, 100.326137 : สถาบันชีววิทยาศาสตร์โมเลกุล
 13.794938, 100.326754 : gate 3
 //13.794436, 100.326043 : OP
 13.791802, 100.326223 : สถาบันฯสุขภาพอาเซียน
 13.791812, 100.325005 : เรือนไทย
 13.791796, 100.322961 : สถาบันวิจัยภาษาและวัฒนธรรม
 13.791801, 100.322248 : ลานจอดรถ 2
 
 Gold :
 13.7935803 , 100.3228724 : MLC
 //13.791929, 100.322044 : คณะวิทยาศาสตร์ อาคาร 3-4
 //13.791935, 100.323001 : คณะวิทยาศาสตร์ อาคาร 1-2
 //13.791938, 100.325034 : คณะสังคมมนุษยศาสตร์
 //13.792274, 100.326759 : วิทยาลัยนานาชาติ
 //13.794436, 100.326043 : OP
 //13.791802, 100.326223 : สถาบันฯสุขภาพอาเซียน
 //13.791812, 100.325005 : เรือนไทย
 //13.791796, 100.322961 : สถาบันวิจัยภาษาและวัฒนธรรม
 //13.791801, 100.322248 : ลานจอดรถ 2
*/
