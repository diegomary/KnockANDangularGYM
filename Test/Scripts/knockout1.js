// First example of Knockout initialization: by means of an Immediately-Invoked function expression
//(function () {

//    function AppViewModel() {
//        var self = this;
//        self.test = undefined;
//        self.thinkerName = ko.observable('Diego');
//        self.resultData = ko.observable(); // No initial value
//        self.getThoughts = function () {
//            $.ajax({
//                url: "/Home/GetData",
//                data: { Data: "**" },
//                beforeSend: function (xhr) { xhr.overrideMimeType("application/json; charset=utf-8"); }
//            })
//                .error(function (err) { alert('error'); })
//                .success(function (data) {
//                    var name = self.thinkerName();
//                    var simulatedResults = ko.observableArray([]);
//                    simulatedResults(data);// Observable initialized with standard  Javascript Array
//                    self.resultData({ retrievalDate: new Date(), topThoughts: simulatedResults });
//                });
//        }
//        self.clearResults = function () { self.resultData(undefined); }
//        self.addNewthought = function () {
//            self.resultData().topThoughts.push({ text: "" })
//        }
//        self.updateAllthoughts = function () {
//            $.ajax({
//                url: '/Home/PostData',
//                type: 'POST',
//                contentType: 'application/json; charset=utf-8',
//                data: JSON.stringify(self.resultData().topThoughts()),
//                success: function (result) {
//                    alert(result.Result);
//                },
//                error: function () { alert("error") }
//            });

//        }
//    }
//    ko.applyBindings(new AppViewModel());
//}());



// Second example by using a namespace and an  Immediately-Invoked function expression in the root of it
//window.myApp = {};
//(function () {

//    function AppViewModel() {
//        var self = this;
//        self.test = undefined;
//        self.thinkerName = ko.observable('Diego');
//        self.resultData = ko.observable(); // No initial value
//        self.getThoughts = function () {
//            $.ajax({
//                url: "/Home/GetData",
//                data: { Data: "**" },
//                beforeSend: function (xhr) { xhr.overrideMimeType("application/json; charset=utf-8"); }
//            })
//                .error(function (err) { alert('error'); })
//                .success(function (data) {
//                    var name = self.thinkerName();
//                    var simulatedResults = ko.observableArray([]);
//                    simulatedResults(data);// Observable initialized with standard  Javascript Array
//                    self.resultData({ retrievalDate: new Date(), topThoughts: simulatedResults });
//                });
//        }
//        self.clearResults = function () { self.resultData(undefined); }
//        self.addNewthought = function () {
//            self.resultData().topThoughts.push({ text: "" })
//        }
//        self.updateAllthoughts = function () {
//            $.ajax({
//                url: '/Home/PostData',
//                type: 'POST',
//                contentType: 'application/json; charset=utf-8',
//                data: JSON.stringify(self.resultData().topThoughts()),
//                success: function (result) {
//                    alert(result.Result);
//                },
//                error: function () { alert("error") }
//            });

//        }
//    }
//    ko.applyBindings(new AppViewModel());
//}(window.myApp));

// Third example by using an empty namespace and adding the initialization function  (needs invocation)
window.myApp = {};
window.myApp.init = function ()
{
  ko.applyBindings(new AppViewModel());
  function AppViewModel() {
            var self = this;
            self.test = undefined;
            self.thinkerName = ko.observable('Diego');
            self.resultData = ko.observable(); // No initial value
            self.getThoughts = function () {
                $.ajax({
                    url: "/Home/GetData",
                    data: { Data: "**" },
                    beforeSend: function (xhr) { xhr.overrideMimeType("application/json; charset=utf-8"); }
                })
                    .error(function (err) { alert('error'); })
                    .success(function (data) {
                        var name = self.thinkerName();
                        var simulatedResults = ko.observableArray([]);
                        simulatedResults(data);// Observable initialized with standard  Javascript Array
                        self.resultData({ retrievalDate: new Date(), topThoughts: simulatedResults });
                    });
            }
            self.clearResults = function () { self.resultData(undefined); }
            self.addNewthought = function () {
                self.resultData().topThoughts.push({ text: "" })
            }
            self.updateAllthoughts = function () {
                $.ajax({
                    url: '/Home/PostData',
                    type: 'POST',
                    contentType: 'application/json; charset=utf-8',
                    data: JSON.stringify(self.resultData().topThoughts()),
                    success: function (result) {
                        alert(result.Result);
                    },
                    error: function () { alert("error") }
                });

            }
        }
 // ko.applyBindings(new AppViewModel());
}
window.myApp.init();

    



