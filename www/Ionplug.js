var exec = require('cordova/exec');

var PLUGIN_NAME = "Ionplug";

var Ionplug = function() {};

Ionplug.startPlugin = function(options, onSuccess, onError) {
	options = options || {};

	// Here are the function options. It's recommended to set a default value, shown below.
  options.x = options.x || 1;
  options.y = options.y || 2;

	exec(onSuccess, onError, PLUGIN_NAME, "startPlugin", [options.x, options.y]);
};

module.exports = Ionplug;
