function YNMessage(content) {
    var ques;
    ques = confirm(content);
    if (ques == true) {
        return true
    }
    else {
        return false;
    }
};

function YMessage(content) {
    var ques;
    ques = confirm(content);
    if (ques == true) {
        return true
    }
}

function OpenChiTietGioHang(sogh) {
    var w = 720;
    var h = 500;
    var left = (screen.width / 2) - (w / 2);
    var top = (screen.height / 2) - (h / 2);
    return window.open("chi-tiet-gio-hang.aspx?sogh=" + sogh, '_blank', 'toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=no, resizable=no, copyhistory=no, width=' + w + ', height=' + h + ', top=' + top + ', left=' + left);
}