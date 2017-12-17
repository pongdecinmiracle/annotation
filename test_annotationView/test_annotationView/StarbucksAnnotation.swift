//
//  StarbucksAnnotation.swift
//  test_annotationView
//
//  Created by Pongdec><MacBook on 12/17/17.
//  Copyright © 2017 Pongdec><MacBook. All rights reserved.
//

import Foundation
import MapKit

class StarbucksAnnotation: NSObject, MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D
    var phone: String!
    var name: String!
    var address: String!    
    init(coordinate: CLLocationCoordinate2D) {
        self.coordinate = coordinate
    }
}
