angular.module('myApp')
    .factory('productService', function productServiceFactory($http) {
    return {
        get: function () {
            return $http.get('/API/Product')
        }
    };
});
    
