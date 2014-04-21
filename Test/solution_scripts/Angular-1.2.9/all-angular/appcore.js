/// <reference path="angular.js" />

angular.module('moduleApp129', ['ngAnimate']).  // we need to inject the ngAnimate module
controller('CustomerController', ['$scope', function ($scope) {
    $scope.customers = [];
    $scope.getInnerData = function (name) { alert(name); }
    $scope.getData = function () {
        $scope.customers =
          [
                   { name: 'Ziggy stardust', city: 'Chicago' },
                   { name: 'Heedy Wahlin', city: 'Chandler' },
                   { name: 'Dave Jones', city: 'Phoenix' },
                   { name: 'Jamie Riley', city: 'Atlanta' },
                   { name: 'Thomas Winter', city: 'Seattle' }
          ];
    }
    $scope.nametosearch;
    $scope.$watch('nametosearch', function (newValue, oldValue) {
        //The callback is on initialization and each time the model changes
        if (newValue === oldValue) { return; }
        // here the code that fires on property change
    }, true);
    $scope.addCustomer = function () {
        $scope.customers.push({ name: $scope.inputData.name, city: $scope.inputData.city });
    };
}])
         .controller('OrderController', ['$scope', function ($scope) {
             $scope.codeName = "Diego Burlando";
         }])
         .controller('DetailsController', ['$scope', function ($scope) {
             $scope.detailName = "MAria Burlando";
         }]);
