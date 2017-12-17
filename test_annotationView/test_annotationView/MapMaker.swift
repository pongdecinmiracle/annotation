//
//  MapMaker.swift
//  test_annotationView
//
//  Created by Pongdec><MacBook on 12/17/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import Foundation
import MapKit

class MapMaker: NSObject , MKAnnotation {
    var coordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(0, 0)

    var title: String?
    var subtitle: String?
    init(coordinate: CLLocationCoordinate2D,title:String,subtitle:String) {
        self.coordinate = coordinate
        self.title = title
        self.subtitle = subtitle
        super.init()
    }
}
