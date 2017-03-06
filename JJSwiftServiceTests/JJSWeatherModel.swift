//
//  JJSWeatherModel.swift
//  JJSwiftNetwork
//
//  Created by JJ on 3/3/17.
//  Copyright © 2017 jianjing. All rights reserved.
//

import UIKit

import JJSwiftNetwork

@testable import JJSwiftService

open class JJSWeatherModel: JJSNetworkBaseObject {
    
    var errNum: Int64?
    var errMsg: String?
    
    open override func successForBussiness() -> Bool {
        return true
    }
}
