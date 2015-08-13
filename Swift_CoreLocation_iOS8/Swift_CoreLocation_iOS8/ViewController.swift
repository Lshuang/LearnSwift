//
//  ViewController.swift
//  Swift_CoreLocation_iOS8
//
//  Created by Shawn Li on 15/8/13.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit
/**
    getting CoreLocation to Work in ios8
    Two news keys are added to the info.plist and one of them is mandatory if you want to use location in your app.
    NSLocationAlwaysUsageDescription
    NSLocationWhenInUseUsageDescription
    The value of the keys is the message which you want to display when requesting the authorization.

For CoreLocation
Make sure the view controller conforms to protocol CLLocationManagerDelegate.
Set the CLLocationManager delegate to self.
Set the desired accuracy to best
If you app will access the location only in the foreground or when the app is in use, request for requestWhenInUseAuthorization().
Finally you need to implement func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!)
If you want to display the map view we could use the location coordinate which we just got in didUpdateLocation and set it up as a mapView region as shown in the code below.
For Region Monitoring
Make sure the view controller conforms to protocol CLLocationManagerDelegate.
Set the CLLocationManager delegate to self.
Set the desired accuracy to best
We need to request for requestAlwaysAuthorization().
Finally you need to implement didEnterRegion and didExitRegion and put any custom login in those functions.
*/

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

