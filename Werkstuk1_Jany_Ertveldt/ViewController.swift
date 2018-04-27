//
//  ViewController.swift
//  Werkstuk1_Jany_Ertveldt
//
//  Created by Jany Ertveldt on 30/03/18.
//  Copyright © 2018 Jany Ertveldt. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate{
    var locationManager = CLLocationManager()
    
    var temp:Persoon?
    @IBOutlet weak var imagePersoon: UIImageView!
    @IBOutlet weak var voornaamPersoon: UILabel!
    @IBOutlet weak var naamPersoon: UILabel!
    @IBOutlet weak var adresPersoon: UILabel!
    @IBOutlet weak var mijnMapview: MKMapView!
    
    
    var nieuweGPSLatitude:Double?
    var nieuweGPSLongitude:Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePersoon.isUserInteractionEnabled = true
        
        self.voornaamPersoon.text = "Voornaam: \((temp?.voornaam)!)"
        self.naamPersoon.text = "Naam: \((temp?.naam)!)"
        self.adresPersoon.text = "Adres: \((temp?.straat)!) \(String(describing:(temp?.huisnummer)!))\n\(String(describing:(temp?.postcode)!)) \((temp?.gemeente)!)"
        self.imagePersoon.image = UIImage(named: temp!.image)
        self.imagePersoon.layer.cornerRadius = self.imagePersoon.frame.size.width / 4
        self.imagePersoon.clipsToBounds = true
        
        
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            locationManager.startUpdatingLocation()
        }
        
        nieuweGPSLatitude = temp?.gpsLatitude
        nieuweGPSLongitude = temp?.gpsLongitude
        
        
        
       
        
        let annotation = MKPointAnnotation()
        annotation.title = temp?.naam
        annotation.coordinate = CLLocationCoordinate2D(latitude: nieuweGPSLatitude!, longitude:nieuweGPSLongitude! )
        self.mijnMapview.addAnnotation(annotation)
        self.mijnMapview.showAnnotations(self.mijnMapview.annotations, animated: true)
        
        
        
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let toImageController = segue.destination as! ImageViewController
        toImageController.tempImage = temp!.image
    }
    
//    func mapView(_ mapview: MKMapView, didUpdate userLocation: MKUserLocation){
//
//        let span = MKCoordinateSpanMake(0.01, 0.01)
//
//        let center = CLLocationCoordinate2DMake(userLocation.coordinate.latitude, userLocation.coordinate.longitude)
//        let region = MKCoordinateRegion(center: center,span: span)
//        mapview.setRegion(region,animated: true)
//
//    }
    
//    @IBAction func naarVergroteFotoTab(_ sender: UITapGestureRecognizer) {
//        print("Er is op de image getabt!")
//    }
    
    
}

