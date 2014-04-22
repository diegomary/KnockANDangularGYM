/// <reference path="angular.js" />

angular.module('moduleApp129', ['ngAnimate'])
    .factory('Customers', function ($http) {              
        this.getCustomers = function () {
        return $http({  // a Promise
                method: 'GET',           
                url: '/Home/GetData1'                                  
              });
        };
        return this;
    })
    .controller('CustomerController', ['$scope', 'Customers', function ($scope, Customers) {
        $scope.customers = [];
        $scope.getInnerData = function (name) { alert(name); }   
        $scope.getData = function () {
           Customers.getCustomers().then(function (dataResponse) {$scope.customers = dataResponse.data;});
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






























//angular.module('moduleApp129', ['ngAnimate'])
//    .factory('Customers', function ($http) {
//        var custs = {};
//        custs.getCustomers = function (callBackfunc) {
//            $http({
//                method: 'GET',
//                url: '/Home/GetData1',
//                params: 'limit=3, sort_by=city'
//            }).success(function (data) {
//                callBackfunc(data);
//            }).error(function () {
//                alert("error");
//            });

//        };
//        return custs;
//    })
//         .controller('CustomerController', ['$scope', 'Customers', function ($scope, Customers) {
//             $scope.customers = [];
//             $scope.getInnerData = function (name) { alert(name); }
//             $scope.getData = function () {
//                 Customers.getCustomers(function (dataResponse) {
//                     $scope.customers = dataResponse;
//                 });
//             }
//             $scope.nametosearch;
//             $scope.$watch('nametosearch', function (newValue, oldValue) {
//                 //The callback is on initialization and each time the model changes
//                 if (newValue === oldValue) { return; }
//                 // here the code that fires on property change
//             }, true);
//             $scope.addCustomer = function () {
//                 $scope.customers.push({ name: $scope.inputData.name, city: $scope.inputData.city });
//             };
//         }])
//         .controller('OrderController', ['$scope', function ($scope) {
//             $scope.codeName = "Diego Burlando";
//         }])
//         .controller('DetailsController', ['$scope', function ($scope) {
//             $scope.detailName = "MAria Burlando";
//         }]);
