//
//  googleMapsViewController.swift
//  maps
//
//  Created by Tasfia Addrita on 4/3/16.
//  Copyright © 2016 Elana Tee. All rights reserved.
//

import UIKit
import GoogleMaps

class googleMapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let latitude = 40.728864
        let longitude = -73.995283
        
        let camera = GMSCameraPosition.cameraWithLatitude(latitude, longitude: longitude, zoom: 15)
        let mapView = GMSMapView.mapWithFrame(CGRectZero, camera: camera)
        mapView.myLocationEnabled = true
        self.view = mapView
        
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2DMake(latitude, longitude)
        marker.title = "You are here!"
        marker.snippet = "You are here!"
        marker.map = mapView
        
        /******************************************NYU********************************************/
        
        // Create a path
        let nyu = GMSMutablePath()
        nyu.addCoordinate(CLLocationCoordinate2D(latitude: 40.737399, longitude: -73.99683))
        nyu.addCoordinate(CLLocationCoordinate2D(latitude: 40.734417, longitude: -73.989884))
        nyu.addCoordinate(CLLocationCoordinate2D(latitude: 40.724209, longitude: -73.992668))
        nyu.addCoordinate(CLLocationCoordinate2D(latitude: 40.728384, longitude: -74.002831))
        
        // Create the polygon, and assign it to the map.
        let nyuPolygon = GMSPolygon(path: nyu)
        nyuPolygon.fillColor = UIColor(red: 1, green: 1, blue: 1, alpha: 0.6);
        //nyuPolygon.fillColor = UIColor(red: 0.25, green: 0, blue: 0, alpha: 0.5);
        nyuPolygon.strokeColor = UIColor.blackColor()
        nyuPolygon.strokeWidth = 0
        nyuPolygon.map = mapView
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
