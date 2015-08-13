//
//  PhotoCaptureViewController.swift
//  SellAnythingDemo
//
//  Created by Shawn Li on 15/8/13.
//  Copyright (c) 2015年 Shawn Li. All rights reserved.
//

import UIKit

class PhotoCaptureViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @IBOutlet weak var titleField: UITextField!
    @IBOutlet weak var desField: UITextField!
    @IBOutlet weak var priceField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func tapped(sender: AnyObject) {
    }
    @IBAction func cancel(sender: AnyObject) {
    }
    @IBAction func post(sender: AnyObject) {
        let currTitle = self.titleField.text, info = self.desField.text, price = self.priceField.text, imageData = UIImageJPEGRepresentation(self.imageView.image, 0.1)
        
    }
}
