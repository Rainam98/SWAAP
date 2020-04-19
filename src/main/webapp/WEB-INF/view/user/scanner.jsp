<!doctype html>
<html>
<head>
    <title>SWAAP - Scanner</title>
    <meta charset='utf-8'>
    <script type="text/javascript">
        const USER_API_LINK = <%=request.getContextPath()%>  '/api/user';
        const ROOT_PATH = <%=request.getContextPath()%>'';
    </script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/userResources/css/scanner.css" type="text/css"
          media="all">
    <script src="<%=request.getContextPath()%>/userResources/js/scanner.js">
    </script>
</head>
<body>
<div class="contentarea">
    <div class="fingerprint scanning"></div>
    <div class="camera">
        <video id="video">camera stream not available.</video>
    </div>
    <canvas id="canvas">
    </canvas>
</div>
</body>
</html>

