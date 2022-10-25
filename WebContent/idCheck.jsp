<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/reset2.css">
<style>
.frm {
    border: 2px solid rgb(76, 144, 221);
    padding: 24px;
    width: 400px;
    height: 50px;
    margin: 50px auto;
}

.in_dt {
	float: left;
    background-color: #fff;
    height: 25px;
    line-height: 25px;
    width: 200px;
    color: blue;
    font-size: 16px;
    text-indent: 0.5em;
    margin-top: 5px;
}

.in_btn {
    display: block;
    background-color: rgb(225, 222, 248);
    min-width: 125px;
    height: 32px;
    line-height: 32px;
    border-radius: 20px;
    margin-left: 70px;
    cursor: pointer;
    color: black;
    margin-top: 5px;
}

.in_btn:hover {
    background-color: rgb(182, 174, 231);
}
</style>

<title>아이디 중복 확인</title>
</head>
<body>
<div class="fr">
	<h2>아이디 중복 검사</h2>
	<form action="idCheckPro.jsp" method="post" class="frm" onsubmit="return invalidCheck(this)">
		<input type="text" name="id" id="id" placeholder="8~12 문자 및 숫자 입력" class="in_dt" required autofocus>
		<input type="submit" class="in_btn" value="중복확인">
	</form>
	<script>
	function invalidCheck(){
		var id = f.id.value;
		id = id.trim();
		if(id.length<8 || id.length>12){
			alert("아이디 글자수는 8글자 이상 12글자 이하 이어야 합니다.");
			return false;
		}
	}
	</script>
</div>
</body>
</html>