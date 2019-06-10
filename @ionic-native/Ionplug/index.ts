import { Injectable } from '@angular/core';
import { Cordova, IonicNativePlugin, Plugin } from '@ionic-native/core';

/**
 * @name Ionplug
 * @description
 * 
 *
 * @interfaces
 * IonplugStartupOptions
 */

export interface Ionplug_INTERFACE_OPTIONS {
  option?: any;
}

@Plugin({
  pluginName: 'Ionplug',
  plugin: 'ionplug',
  pluginRef: 'Ionplug',
  repo: 'REPO',
  platforms: ['iOS'],
})
@Injectable()
export class Ionplug extends IonicNativePlugin {
  /**
   * Starts Ionplug.
   * @param {Ionplug_INTERFACE_OPTIONS} options
   * @return {Promise<any>}
   */
  @Cordova({
    successIndex: 1,
    errorIndex: 2,
  })
  startPlugin(options: PLUGIN_INTERFACE_OPTIONS): Promise<any> {
    return;
  }
}
