/// <reference path="../Scripts/angular.js" />

// In order to have angular intellisense enabled in this javascript file we can add the following line. However this is not sufficient to have angulare
// functionality in the flow. The reference to angular.jas must be present in the html page prior the present file




var moduleApp = angular.module('moduleApp', []);


moduleApp.controller('CustomerController', ['$scope', function ($scope) {
    $scope.customers = [];
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
             $scope.detailName = "MAria Burlando";}])



  
