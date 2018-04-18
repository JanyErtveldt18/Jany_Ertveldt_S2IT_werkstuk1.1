//
//  Persoon.swift
//  Werkstuk1_Jany_Ertveldt
//
//  Created by Jany Ertveldt on 31/03/18.
//  Copyright © 2018 Jany Ertveldt. All rights reserved.
//

import Foundation

class Persoon: NSObject {
    var naam:String = ""
    var voornaam:String = ""
    var image:String = ""
    var straat:String = ""
    var huisnummer:Int
    var postcode:Int
    var gemeente:String = ""
    var gpsLatitude:Double
    var gpsLongitude:Double
    var telefoonnummer:Int
    //gps coördinaten en een telefoonnummer
    
    init(voornaam:String,naam: String , image:String,straat:String,huisnummer:Int,postcode:Int,gemeente:String,gpsLatitude:Double,gpsLongitude:Double,telefoonnummer:Int) {
        self.voornaam = voornaam
        self.naam = naam
        self.image = image
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
        self.gpsLatitude = gpsLatitude
        self.gpsLongitude = gpsLongitude
        self.telefoonnummer = telefoonnummer
    }
    
}
