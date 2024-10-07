Pod::Spec.new do |s|
  s.name         = "SimplicityConnectSDK"
  s.version      = "2.5.2"
  s.summary      = "Simplicity Connect SDK"
  s.authors      = "SiliconLabs"
  s.homepage     = "https://github.com/mAarnos/EFRConnect-ios"
  s.source       = { :git => "https://github.com/mAarnos/EFRConnect-ios.git", :branch => 'lib' }
  s.header_mappings_dir = 'SiliconLabsApp'
  s.source_files = [ 'SiliconLabsApp/SupportingFiles/BlueGecko/BlueGecko.pch',
                     'SiliconLabsApp/Models/SILOTAFirmwareFile.{m,h}',
                     'SiliconLabsApp/Models/SILOTAFirmwareUpdateManager.{m,h}',
                     'SiliconLabsApp/Models/SILWeakNotificationPair.{m,h}',
                     'SiliconLabsApp/Models/SILUUIDProvider.{m,h}',
                     'SiliconLabsApp/Models/BluetoothModels/SILBluetoothFieldModel.{m,h}',
                     'SiliconLabsApp/Models/SILConnectedPeripheralDataModel.{m,h}',
                     'SiliconLabsApp/Models/AttributeTableModels/SILCharacteristicTableModel.{m,h}',
                     'SiliconLabsApp/BluetoothControllers/SILCentralManager.{m,h}',
                     'SiliconLabsApp/BluetoothControllers/SILConstants.{m,h}',
                     'SiliconLabsApp/Categories/NSError+SILHelpers.{m,h}',
                     'SiliconLabsApp/Categories/NSString+SILBrowserNotifications.{m,h}',
                     'SiliconLabsApp/Categories/NSDictionary+SILErrorCode.{m,h}',
                     'SiliconLabsApp/Categories/CBPeripheral+Services.{m,h}',
                     'SiliconLabsApp/Categories/CBService+Categories.{m,h}',
                     'SiliconLabsApp/Helpers/SILWeakTargetWrapper.{m,h}',
                     'SiliconLabsApp/Helpers/SILCharacteristicFieldValueResolver.{m,h}',
                     'SiliconLabsApp/Helpers/SILCharacteristicFieldValueResolverContext.{m,h}' ]
end
