<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨기기/표시하기</title>
<style type="text/css"></style>
<%-- jQuery 라이브러이 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
  // $(선택자).fadeIn(),  $(선택자).fadeIn(speed)  
  // $(선택자).fadeOut(),  $(선택자).fadeOut(speed)
  // $(선택자).fadeToggle()  $(선택자).fadeToggle(speed)
  // $(선택자).fadeTo(spped, 불투명도())
 $(document).ready(function(){
	 	$("#hide").on("click", function() {
			$("#img").fadeOut(1600);
		});
	   	$("#show").on("click", function() {
			$("#img").fadeIn(2200);
		});
	   	// toggle이 아님
	   	$("#toggle").on("click", function() {
			$("#img").fadeTo("slow",0.1);
		});
  });
</script>
</head>
<body>
	<button id="hide">숨기기</button>
	<button id="show">표시하기</button>
	<button id="toggle">숨기기/표시하기</button>
	<hr>
	
	<p><img id="img" src="../images/pic_bulboff.gif"></p>
</body>
</html>