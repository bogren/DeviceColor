//
//  UIDevice+DeviceColor.swift
//  DeviceColor
//
//  Created by Emil Bogren on 06/08/16.
//

import UIKit

@_silgen_name("_deviceInfoForKey:")
func _deviceInfoForKey(_ key: String) -> AnyObject

let invokeDeviceInfoForKey:(String) -> AnyObject = {
    let selector = Selector(("_deviceInfoForKey:"))
    guard case let method = class_getInstanceMethod(UIDevice.self, selector), method != nil else {
        fatalError("Failed: Could not find method for selector \(selector)")
    }
    
    typealias Prototype = @convention(c) (AnyClass, Selector, NSString) -> AnyObject
    let opaqueImplementation = method_getImplementation(method)
    let function = unsafeBitCast(opaqueImplementation, to: Prototype.self)
    return {key in function(UIDevice.self, selector, key as NSString)}
}()

extension UIDevice {
    func deviceInfoForKey(_ key: String) -> AnyObject {
        return invokeDeviceInfoForKey(key)
    }
}
