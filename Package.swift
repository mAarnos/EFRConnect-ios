// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "EFRSDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "EFRSDK",
            targets: ["EFRSDK"])
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "EFRSDK",
	    path: "SiliconLabsApp",
	    exclude: [
		"Base.lproj",
		"ViewControllers",
		"Storyboards",
		"Fonts",
		"SupportingFiles",
		"ThunderBoard",
		"Views",
		"XML"
	    ],
            sources: [
		"Models/SILUUIDProvider.m",
		"Models/SILConnectedPeripheralDataModel.m",
		"Helpers/SILWeakTargetWrapper.m",
		"Models/BluetoothModels/SILBluetoothFieldModel.m",
		"Categories/NSError+SILHelpers.m",
		"BluetoothControllers/SILConstants.m",
		"Categories/CBPeripheral+Services.m",
		"Categories/CBService+Categories.m",
		"Categories/NSDictionary+SILErrorCode.m",
		"BluetoothControllers/SILCentralManager.m",
		"Helpers/SILCharacteristicFieldValueResolver.m",
		"Models/SILOTAFirmwareUpdateManager.m",
		"Models/AttributeTableModels/SILCharacteristicTableModel.m",
		"Categories/NSString+SILBrowserNotifications.m",
		"Models/SILOTAFirmwareFile.m",
		"Models/SILWeakNotificationPair.m"
	    ],
	    publicHeadersPath: "EFRSDK"
        )
    ]
)
