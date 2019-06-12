import AVFoundation
import UIKit

@objc(Ionplug) class Ionplug: CDVPlugin {

     // This objc part is required above all plugin functions that you call from ionic.
     // It allows us to communicate with Cordova from Swift.
    @objc(startPlugin:)
    func startPlugin(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR);
        print("Ionplug ran correctly!");
        let alert = UIAlertView()
        alert.title = "Alert"
        alert.message = "Here's a message"
        alert.addButton(withTitle: "Understood")
        alert.show()
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK);
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    }
}
