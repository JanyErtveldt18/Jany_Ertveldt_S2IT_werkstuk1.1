//
//  TweedeTabbladViewController.swift
//  Werkstuk1_Jany_Ertveldt
//
//  Created by Jany Ertveldt on 6/04/18.
//  Copyright © 2018 Jany Ertveldt. All rights reserved.
//

import UIKit
import MapKit

class TweedeTabbladViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    var locations = [
        ["title": "Cristiano",    "latitude": 50.872762, "longitude": 4.248058],
        ["title": "Messi ",   "latitude": 50.870849, "longitude": 4.252981],
        ["title": "Neymar ",   "latitude": 50.871028, "longitude": 4.265655]
    ]
    @IBOutlet weak var mijnMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation()
        }
        
        for location in locations {
            let annotation = MKPointAnnotation()
            annotation.title = location["title"] as? String
            annotation.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! Double, longitude: location["longitude"] as! Double)
            self.mijnMapView.addAnnotation(annotation)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func mapView(_ mapview: MKMapView, didUpdate userLocation: MKUserLocation){
        
        let span = MKCoordinateSpanMake(0.01, 0.01)
        
        let center = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
        let region = MKCoordinateRegion(center: center,span: span)
        mapview.setRegion(region,animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
