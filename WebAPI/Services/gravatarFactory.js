angular.module('myApp').factory("gravatar", function gravatarFactory() {
    var avatarSize = 80;
    var avatarURL = 'http://www.gravatar.com/avatar/';

    return  function (email) {
            return avatarURL + CryptoJS.MD5(email).toString() + "?size=" + avatarSize.toString();
        };
    })
