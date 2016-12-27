//
//  ViewController.swift
//  DeviceColor
//
//  Created by Emil Bogren on 06/08/16.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        let device = UIDevice.current
        print(device.deviceInfoForKey("DeviceColor"))
    }
    
}

