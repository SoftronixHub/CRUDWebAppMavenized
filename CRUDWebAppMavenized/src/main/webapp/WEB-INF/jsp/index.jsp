<!DOCTYPE html>
<html>
<head>
  <title>Spring MVC Ajax Demo</title>
  <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
  <script type="text/javascript">
    function doAjax() {
      alert("alert");
    }
  </script>
</head>
<body>
${message}
<button id="demo" onclick="doAjax()" title="Button">Get the time!</button>
<div id="time">
</div>
</body>
</html>
