/*global cordova, module*/

module.exports = {
    greet: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Hello", "greet", [name]);
    }
};
window.execService = function(task,args,success,error) {
    cordova.exec(success, error, "Hello", task, args);
};
