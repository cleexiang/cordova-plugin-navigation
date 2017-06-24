var exec = require('cordova/exec');
var Navigation = {
	goBack: function() {
		exec(null, null, "Navigation", "goBack", []);
	},
	redirect: function(url) {
		exec(null, null, "Navigation", "redirect", [url]);
	}
};

module.exports = Navigation;