<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href=<c:url value='/resources/Intro.css'/> rel="stylesheet">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>F.C.D</title>
</head>
<body>
	<div class="container">

		<a class="box" href="home">
			<h2>REGIST</h2>
			<p>Player regist</p>
			<p>Staff regist</p>
			<p>Wish Palyer regist</p>
		</a>

		<a class="box" href="listView">
			<h2>LISTS</h2>
			<p>Club Finance</p>
			<p>Player list</p>
			<p>Staff list</p>
			<p>Item list</p>
		</a>

		<a class="box" href="market">
			<h2>WISH LIST</h2>
			<p>want to join us</p>
			<p>want to release</p>
		</a>
	</div>
</body>
</html>