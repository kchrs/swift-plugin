import AVFoundation
import UIKit

@objc(Ionplug) class Ionplug: CDVPlugin {

     // This objc part is required above all plugin functions that you call from ionic.
     // It allows us to communicate with Cordova from Swift.
    @objc(startPlugin:)
    func startPlugin(command: CDVInvokedUrlCommand) { // This is our swift function.
        // Always set the plugin status as ERROR, until you do what you need to do.
        var pluginResult = CDVPluginResult (status: CDVCommandStatus_ERROR);

        // Plugin Command Arguments
        // let x:Int = command.arguments![0] as! Int; // Change this accordingly.
        // let y:Int = command.arguments![1] as! Int; // Change this accordingly.

        // Whatever your plugin does after startup goes here.
        print("Ionplug ran correctly!");
        print("Thank you for using the Ionic-Plugin-Assistant");
        print("Written by Jordan Benge @Bengejd");


        let alert = UIAlertController(title: "Did you bring your toy?", message: "It's recommended you bring your toy before continuing.", preferredStyle: .alert)

alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

self.present(alert, animated: true)

        // We did the stuff, and now we're finished. Set the status as OK.
        pluginResult = CDVPluginResult(status: CDVCommandStatus_OK);
        self.commandDelegate!.send(pluginResult, callbackId: command.callbackId);
    }
}
