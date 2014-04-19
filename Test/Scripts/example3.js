// Remember that knockout needs the DOM to be ready in order to work. 
// It is important to place the reference of this script at the end of the body tag in the html page.
window.myAppKing = {};
window.myAppKing.initking = function () {
    ko.applyBindings(new AppViewModel());
    function AppViewModel() {
        var self = this;
        self.pagingVisible = ko.observable(false);
        self.resultData = ko.observable(); // No initial value
        var allResults = ko.observableArray([]);
        //Pagination       
        self.pageSize = ko.observable(3);
        self.availablePageSizes = ko.observableArray([1,2,3,5,7,9,11,13,15,17,19,21])
        // We subscribe to the change of pageSize as follows
        self.pageSize.subscribe(function (newPageSize) {
            self.currentPageIndex(0)
            // Initial Pagination                      
            startIndex = self.pageSize() * self.currentPageIndex(),
            endIndex = startIndex + self.pageSize();
            pagedPortion = allResults.slice(startIndex, endIndex);
            // End initial pagination
            self.resultData({ retrievalDate: new Date(), topKings: pagedPortion });           
        });
        self.currentPageIndex = ko.observable(0);
        var pagedPortion = []; 
        self.nextPage = function () {
            if (((self.currentPageIndex() + 1) * self.pageSize()) < allResults().length) {
                self.currentPageIndex(self.currentPageIndex() + 1);
                startIndex = self.pageSize() * self.currentPageIndex(),
                endIndex = startIndex + self.pageSize();
                pagedPortion = allResults.slice(startIndex, endIndex);
                self.resultData({ retrievalDate: new Date(), topKings: pagedPortion });
            }
            else {
                self.resultData({ retrievalDate: new Date(), topKings: pagedPortion });
            }
        };
        self.previousPage = function () {
            if (self.currentPageIndex() > 0) {
                self.currentPageIndex(self.currentPageIndex() - 1);
                startIndex = self.pageSize() * self.currentPageIndex();
                endIndex = startIndex + self.pageSize();
                pagedPortion = allResults.slice(startIndex, endIndex);
                self.resultData({ retrievalDate: new Date(), topKings: pagedPortion });
            }
            else {
                self.resultData({ retrievalDate: new Date(), topKings: pagedPortion });
            }
        };
        // End Pagination       
        self.getKings = function () {
            $.ajax({
                url: "/Kings/GetKings",
                data: { Data: "**" },
                cache: false, // ONLY for  Internet explorer caches the responses to AJAX calls to the same URL so me need to tell him not to cache
                beforeSend: function (xhr) { xhr.overrideMimeType("application/json; charset=utf-8"); }
            })
                .error(function (err) { alert('error'); })
                .success(function (data) {
                    allResults(data);// Observable initialized with standard  Javascript Array
                    // Initial Pagination                      
                    startIndex = self.pageSize() * self.currentPageIndex(),
                    endIndex = startIndex + self.pageSize();
                    pagedPortion = allResults.slice(startIndex, endIndex);
                    // End initial pagination
                    self.resultData({ retrievalDate: new Date(), topKings: pagedPortion });
                    self.pagingVisible(true);
                });
        }
        self.clearResults = function () { self.resultData(undefined); self.pagingVisible(false); self.currentPageIndex(0);}
        self.addNewKing = function () {
            var mylen = allResults().length
            var newId = allResults()[mylen - 1].Id + 1
            allResults.push({ Id: newId, Name: "New", Description: "New Description", ImagePath: "", KingColor: "" })
        }
        self.updateAllKings = function () {
            $.ajax({
                url: '/Kings/PostKing',
                type: 'POST',
                contentType: 'application/json; charset=utf-8',
                data: JSON.stringify(allResults()),
                success: function (result) {
                    alert(result.Result);
                },
                error: function () { alert("error") }
            });
        }
        self.updateSingleRow = function (idtoUpdate, textToupdate) { alert(idtoUpdate + " " + textToupdate); }
    }

}
$(function () { window.myAppKing.initking(); });