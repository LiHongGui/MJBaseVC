//
//  MJMichaelSW.swift
//  MJSWBaseVC
//
//  Created by MichaelLi on 2020/11/19.
//

import UIKit
import Foundation

let kUIScreenBounds = UIScreen.main.bounds
let KUI_W = UIScreen.main.bounds.size.width
let KUI_H = UIScreen.main.bounds.size.height
let KStatusBarH = UIApplication.shared.statusBarFrame.size.height

class MJMichaelSW: NSObject {

}

extension MJMichaelSW {
    // MARK: 判断iPhoneX
    static var isIphoneX :Bool {
        let window = UIApplication.shared.windows[0]
        if #available(iOS 11.0, *) {
            if window.safeAreaInsets.bottom > 0 {
                return true
            }
        } else {
            return false
        }
        return false
    }
    static var isPadDevice :Bool {
        return UIDevice.current.model == "iPad" ?true:false
    }
    static var mjNavBarHeight:CGFloat {
        if UIApplication.shared.statusBarOrientation.rawValue != 1 {
            if MJMichaelSW.isPadDevice {
                return 70
            }else {
                return 32
            }
        }else {
            if MJMichaelSW.isPadDevice {
                return 70
            }else {
                return MJMichaelSW.isIphoneX ? 88: 64
            }
        }
            
        
    }
}
