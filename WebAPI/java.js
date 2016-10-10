var myApp = angular.module('myApp', ['Directives']);

angular.module('myApp').directive('myExample', function () {
    return {
        template: '<div> My Example Directive here!</div>'
    };
});


myApp.controller('myController', ['$http', '$scope', '$log', 'productService', 'gravatar', function ($http, $scope, $log, productService, gravatar) {
    $scope.model = [];

    productService.get().then(
        function (response) {
            $scope.model = response.data;
        },
                function (response) {
                    $scope.error = true;
                    $log.log(response.status);
                }
        )

    $scope.gravatarURL = function (email) {
        return gravatar(email);
    }
        
}]);


myApp.controller('ReviewController', function($http, $scope){
    $scope.review = {};

    $scope.addReview = function (product) {

        $http.post(product.review)

        //if (!product.reviews)
        //    product.reviews = [];

        //product.reviews.push($scope.review);
        //$scope.review = {};
    };
    
})






