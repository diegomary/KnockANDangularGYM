var counter = 12;
function Poll(interval, fin, fout) {
    var x = setInterval(function () {
        if (counter-- == 1) { clearInterval(x); counter = 12; }
        $("#mytext").load("/Home/GetImage", { Pi: '3.141592653', Message: 'msg' }, function () {
            var color = $("#mytext").text().split(' ');
            $('#myimage').attr('src', color[0]);
            $("#mytext").text(color[0].replace('../Images/Kings/', '').replace('.jpg', ''));
            $("#excontainer").css({ backgroundColor: color[1] });
        });
        $('#myimage').fadeOut(fout);
        $('#myimage').fadeIn(fin);

    }, interval);
}



function go() {
    $('#myimage').attr('src', $("#mytext").text());

}

function ChangeAllImages(imagecontainer, hiddentextcontainer, interval, divc) {
    var x = setInterval(function () {
        hiddentextcontainer.load("/Home/GetImage", { Pi: '3.141592653', Message: 'msg' }, function () {
            var color = hiddentextcontainer.text().split(' ');
            imagecontainer.attr('src', color[0]);
            hiddentextcontainer.text(color[0].replace('../Images/Kings/', '').replace('.jpg', ''));
            divc.css("backgroundColor", color[1]);
        });


    }, interval);
}


function ChangeAllImages1(imagecontainer, hiddentextcontainer, interval) {
    var x = setInterval(function () {
        hiddentextcontainer.load("/Home/GetImage", { Pi: '3.141592653', Message: 'msg' }, function () {
            var color = hiddentextcontainer.text().split(' ');
            imagecontainer.attr('src', color[0]);
            hiddentextcontainer.text(color[0].replace('../Images/Kings/', '').replace('.jpg', ''));
        });
    }, interval);
}



function StartRandom(interval, divbody) {

    ChangeAllImages($('#img1'), $('#hd1'), interval + 10, divbody)
    ChangeAllImages1($('#img2'), $('#hd2'), interval - 10)
    ChangeAllImages1($('#img3'), $('#hd3'), interval + 9)
    ChangeAllImages1($('#img4'), $('#hd4'), interval - 9)
    ChangeAllImages1($('#img5'), $('#hd5'), interval + 8)
    ChangeAllImages1($('#img6'), $('#hd6'), interval - 8)
    ChangeAllImages1($('#img7'), $('#hd7'), interval + 20)
    ChangeAllImages1($('#img8'), $('#hd8'), interval - 15)
    ChangeAllImages1($('#img9'), $('#hd9'), interval + 14)
    ChangeAllImages1($('#img10'), $('#hd10'), interval - 34)
    ChangeAllImages1($('#img11'), $('#hd11'), interval + 12)
    ChangeAllImages1($('#img12'), $('#hd12'), interval - 21)
    ChangeAllImages1($('#img13'), $('#hd13'), interval + 23)
    ChangeAllImages1($('#img14'), $('#hd14'), interval - 4)
    ChangeAllImages1($('#img15'), $('#hd15'), interval + 16)


}