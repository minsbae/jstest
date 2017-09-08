<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
	<title>Test</title>
	<script language="JavaScript">
		var xmlHttp;
	
		function createXMLHttpRequest() {
			if(window.ActiveXObject) {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			} else if(window.XMLHttpRequest) {
				xmlHttp = new XMLHttpRequest();
			}
		}
	
		function test() {
			createXMLHttpRequest();
			var url = "loader.jsp";
			xmlHttp.onreadystatechange = loader;
			xmlHttp.open("GET", url, true);
			xmlHttp.send(null);
		}
	
		function loader() {
			if(xmlHttp.readyState == 4) {
				if(xmlHttp.status == 200) {
					temp = xmlHttp.responseText;
					document.getElementById("content").innerHTML = temp;
				}
			}
		}
	</script>
</head>

<body>
	요 밑으로 글자 바뀜<br />
	<div id="content">
		요기?
	</div>	
	<input type="button" value="바꾸기" onClick="test()" />
</body>

</html>


출처: http://ggoreb.tistory.com/122 [나는 초보다]