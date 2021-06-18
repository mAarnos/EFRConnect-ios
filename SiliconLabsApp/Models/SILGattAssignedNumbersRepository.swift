//
//  SILGattAssignedNumbersRepository.swift
//  BlueGecko
//
//  Created by Michał Lenart on 12/10/2020.
//  Copyright © 2020 SiliconLabs. All rights reserved.
//

import Foundation

class SILGattAssignedNumbersRepository {
    private var bluetoothXmlParser: SILBluetoothXMLParser = SILBluetoothXMLParser.shared()!
    
    private lazy var services: [SILGattAssignedNumberEntity] = {
        let dict = bluetoothXmlParser.servicesDictionary()!
        return dict.idKeys()!.map({
            let service = dict.object(forIdKey: ($0 as! NSObject)) as! SILBluetoothServiceModel
            
            return SILGattAssignedNumberEntity(uuid: service.uuidString, name: service.name)
        })
    }()
    
    private lazy var characteristics: [SILGattAssignedNumberEntity] = {
        let dict = bluetoothXmlParser.characteristicsDictionary()!
        return dict.idKeys()!.map({
            let characteristic = dict.object(forIdKey: ($0 as! NSObject)) as! SILBluetoothCharacteristicModel
            
            return SILGattAssignedNumberEntity(uuid: characteristic.uuidString, name: characteristic.name)
        })
    }()
    
    private lazy var iosAvailableDescriptors: [SILGattAssignedNumberEntity] = {
        return [
            SILGattAssignedNumberEntity(uuid: CBUUIDCharacteristicUserDescriptionString, name: "Characteristic User Description"),
            SILGattAssignedNumberEntity(uuid: CBUUIDCharacteristicFormatString, name: "Characteristic Presentation Format")
        ]
    }()
    
    func getServices() -> [SILGattAssignedNumberEntity] {
        return services
    }
    
    func getCharacteristics() -> [SILGattAssignedNumberEntity] {
        return characteristics
    }
    
    func getIosDescriptors() -> [SILGattAssignedNumberEntity] {
        return iosAvailableDescriptors
    }
    
    func getService(byUuid uuid: String) -> SILGattAssignedNumberEntity? {
        return services.first(where: { service in service.uuid == uuid })
    }
    
    func getCharacteristic(byUuid uuid: String) -> SILGattAssignedNumberEntity? {
        return characteristics.first(where: { service  in service.uuid == uuid })
    }
}
