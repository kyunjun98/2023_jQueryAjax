<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스 - 자바스크립트</title>
<script type="text/javascript">
	var news=["[단독] ‘해결사’ 양평군 국장, 승진 직후 고속도로 변경안 결재",
		"예천서 실종된 해병대원, 14시간 만에 숨진 채 발견",
		"김건희 일가 ‘양평 특혜’ 기소 공무원이 도로 종점 변경안 제시",
		"서초 초등교사 극단 선택…교사노조 '학부모 항의 힘들어해'",
		"물가 3.3% 오를 때 최저임금 2.5% 인상…저임금 확대 불보듯",
		"‘남북 둘 중 하나 죽어야’ ‘박근혜 탄핵은 체제전복’ 규정"];
	var index = 0 ;
	var timer ;
	function start_news() {
		// 2초마다 showNews()를 실행 하자 (showNews() 콜백함수)
		timer = setInterval(showNews, 2000);
	}
	function showNews() {
		var div = document.getElementById("mydiv");
		div.innerHTML = news[index++];
		if(index== news.length){
			index=0;
		}
	}
	function stop_news() {
		// setInterval()를 중지 시키는 함수
		clearInterval(timer);
	}
</script>
</head>
<body>
	<div id="mydiv"></div>
	<button onclick="start_news()">뉴스보기</button>
	<button onclick="stop_news()">뉴스중지</button>
</body>
</html>