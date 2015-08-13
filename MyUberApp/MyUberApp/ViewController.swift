//
//  ViewController.swift
//  MyUberApp
//
//  Created by Shawn Li on 15/8/12.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
/*
//function
    Use CoreLocation and MpaKit to get the current user location,set the map zoomed in on current location
    update the location
*/

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var RequestAction: UIButton!
    var previousAddress: String!
    var geoCoder: CLGeocoder! = CLGeocoder()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func geoCode(location : CLLocation!){
        /* Only one reverse geocoding can be in progress at a time hence we need to cancel existing
        one if we are getting location updates */
        geoCoder.cancelGeocode()
        geoCoder.reverseGeocodeLocation(location, completionHandler: { (data, error)-> Void in
            let placeMarks: [CLPlacemark]
            if (data != nil){
                placeMarks = data as! [CLPlacemark]!
            }
            else {
                return
            }
            let loc: CLPlacemark = placeMarks[0]
            let addressDict : [NSString:NSObject] = loc.addressDictionary as! [NSString: NSObject]
            let addrList = addressDict["FormattedAddressLines"] as! [String]
            let address = ", ".join(addrList)
            print(address)
            self.addressLabel.text = address
            self.previousAddress = address
        })
        
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location: CLLocation = locations.first!
        self.mapView.centerCoordinate = location.coordinate
        let reg = MKCoordinateRegionMakeWithDistance(location.coordinate, 1500, 1500)
        self.mapView.setRegion(reg, animated: true)
        geoCode(location)
    }
    
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print(error)
    }
    
    func mapView(mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        let location = CLLocation(latitude: mapView.centerCoordinate.latitude, longitude: mapView.centerCoordinate.longitude)
        geoCode(location)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

