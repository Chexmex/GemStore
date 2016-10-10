var app = angular.module('Directives', []);
app.directive('product', function () {
    return {
        restrict: 'E',
        templateUrl: 'product.html'
    };
});

app.directive('review', function () {
    return {
        restrict: 'E',
        templateUrl: 'review.html'
    };
});


app.directive('productpanels', function () {
    return {
        restrict: 'E',
        templateUrl: 'productpanels.html',
        controller: function ($scope) {
            $scope.tab = 1;

            $scope.selectTab = function (setTab) {
                $scope.tab = setTab;
            };

            $scope.isSelected = function (checkTab) {
                return $scope.tab === checkTab;
            }

        },
    }
});
