//
//  ViewController.swift
//  Brooklyn Bridge
//
//  Created by sophia on 6/20/19.
//  Copyright © 2019 fyunka. All rights reserved.
//  Integrating Maps Into Apps

import UIKit
import MapKit

final class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet private var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Brooklyn Bridge coordinates -> 40.706606, -73.996746
        
        let latitude: CLLocationDegrees = 40.706606
        
        let longitude: CLLocationDegrees = -73.996746
        
        let lanDelta: CLLocationDegrees = 0.05
        
        let lonDelta: CLLocationDegrees = 0.05
        
        let span = MKCoordinateSpan(latitudeDelta: lanDelta, longitudeDelta: lonDelta)
        
        let coordinates = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region = MKCoordinateRegion(center: coordinates, span: span)
        
        map.setRegion(region, animated: true)
        
        
    }


}

