<%--
  Created by IntelliJ IDEA.
  User: Tanay
  Date: 2020-04-11
  Time: 9:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>QR scanner</title>
    <!-- <link rel="shortcut icon" href="https://learncodeweb.com/demo/favicon.ico"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
          integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <script type="text/javascript">
        const USER_API_LINK = <%=request.getContextPath()%>  '/api/user';
    </script>
</head>

<body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
<div id="hello" style="position: absolute;z-index: 200;color: white;left: 215px;top: 312px;">scan QR</div>
<div class="col-sm-12">
    <video id="preview" class="p-1 border" style="width:500px;height:500px;"></video>
</div>
<script type="text/javascript">
    var scanner = new Instascan.Scanner({video: document.getElementById('preview'), scanPeriod: 5, mirror: false});
    scanner.addListener('scan', function (content) {
        if (parseInt(content) == NaN)
            alert("Invalid QR Code");
        else
            fetch(<%=request.getContextPath()%>"/api/user/addToCart?productId=" + content).then(response => {
                if (response.status === 208)
                    alert("Item is already in cart !");
                else if (response.status == 416)
                    alert("Invalid QR Code");
                window.location.href = <%=request.getContextPath()%>'/user/viewCart';
            });
        //window.location.href=content;
    });
    Instascan.Camera.getCameras().then(function (cameras) {
        if (cameras.length > 0) {
            scanner.start(cameras[0]);
            $('[name="options"]').on('change', function () {
                if ($(this).val() == 1) {
                    if (cameras[0] != "") {
                        scanner.start(cameras[0]);
                    } else {
                        alert('No Front camera found!');
                    }
                } else if ($(this).val() == 2) {
                    if (cameras[1] != "") {
                        scanner.start(cameras[1]);
                    } else {
                        alert('No Back camera found!');
                    }
                }
            });
        } else {
            console.error('No cameras found.');
            alert('No cameras found.');
        }
    }).catch(function (e) {
        console.error(e);
        alert(e);
    });
</script>
<div class="btn-group btn-group-toggle mb-5" data-toggle="buttons">
    <label class="btn btn-primary active">
        <input type="radio" name="options" value="1" autocomplete="off" checked> Front Camera
    </label>
    <label class="btn btn-secondary">
        <input type="radio" name="options" value="2" autocomplete="off"> Back Camera
    </label>
</div>
</div>
</div>
</div>

</body>
</html>

