//
//  JJSWeatherService.swift
//  JJSwiftNetwork
//
//  Created by JJ on 3/3/17.
//  Copyright © 2017 jianjing. All rights reserved.
//

import UIKit

import JJSwiftNetwork

@testable import JJSwiftService

public class JJSWeatherService: JJSService {
    
    public func requestWeather(responseCallback: ((JJSResult<JJSNetworkBaseObjectProtocol>, [String: Any]) -> Void)?) {
        let weatherNetwork = JJSWeatherNetwork(parameters: nil, identity: "getWeather", isSaveToMemory: false, isSaveToDisk: true, jsonConvert: JJSNetworkJsonConvert<JJSWeatherModel>())
        weatherNetwork.responseCallback = responseCallback
        startRequest(request: weatherNetwork)
    }
}
