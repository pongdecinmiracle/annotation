//
//  MapMaker.swift
//  anno
//
//  Created by Pongdec><MacBook on 12/17/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import Foundation
import MapKit

class MapMaker: NSObject, MKAnnotation {
//    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)
    var title: String?
    var idSign: Int!
    var coordinate: CLLocationCoordinate2D
    var imageName: UIImage!
    var redTram: String!
    var greenTram: String!
    var blueTram: String!
    var yellowTram: String!

    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
//    init(coordinate: CLLocationCoordinate2D,title:String,subtitle:String,imageName:String,redTram:String,greenTram:String,blueTram:String,yellowTram:String) {
//        self.coordinate = coordinate
//        self.title = title
//        self.subtitle = subtitle
//        self.imageName = imageName
//        self.redTram = redTram
//        self.greenTram = greenTram
//        self.blueTram = blueTram
//        self.yellowTram = yellowTram
//        
//        super.init()
//    }
}


//class CustomPointAnnotation: MKPointAnnotation,NSObject , MKAnnotation {
//    var imageName: String!
//    var redTram: String!
//    var greenTram: String!
//    var blueTram: String!
//    var yellowTram: String!
//}

