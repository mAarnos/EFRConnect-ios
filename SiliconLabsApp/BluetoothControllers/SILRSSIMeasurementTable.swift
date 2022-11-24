//
//  SILRSSIMeasurementTable.swift
//  BlueGecko
//
//  Created by Grzegorz Janosz on 09/03/2022.
//  Copyright © 2022 SiliconLabs. All rights reserved.
//

import Foundation
//import RxCocoa
//import RxSwift

struct SILRSSIMeasurement {
    let rssi: NSNumber
    let date: Date
}

@objcMembers
class SILRSSIMeasurementTable: NSObject {
    
    //let rssiMeasurements = BehaviorRelay<[SILRSSIMeasurement]>(value: [])
    var rssiMeasurements: [SILRSSIMeasurement] = []
    
    lazy var lastMeasurement: SILRSSIMeasurement? = rssiMeasurements.last
    
    func addRSSIMeasurement(_ RSSI: NSNumber) {
        if -100...18 ~= RSSI.intValue {
            rssiMeasurements.append(SILRSSIMeasurement(rssi: RSSI, date: Date()))
        }
    }

    func lastRSSIMeasurement() -> NSNumber? {
        return rssiMeasurements.last?.rssi
    }

    func hasRSSIMeasurement(inPastTimeInterval timeInterval: TimeInterval) -> Bool {
        guard let lastRSSIMeasurementDate = rssiMeasurements.last?.date else {
            return false
        }
        return Date().timeIntervalSince(lastRSSIMeasurementDate) < timeInterval
    }

    func averageRSSIMeasurement(inPastTimeInterval timeInterval: TimeInterval) -> NSNumber {
        let filtered = rssiMeasurements.filter { Date().timeIntervalSince($0.date) < timeInterval }
        
        if filtered.count > 0 {
            let rssiSum = filtered.reduce(0) { $0 + $1.rssi.intValue }
            return NSNumber(value: Double(rssiSum) / Double(filtered.count))
        } else {
            return NSNumber(value: 0)
        }
    }
}
