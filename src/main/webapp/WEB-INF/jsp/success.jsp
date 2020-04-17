<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>登录成功</h1>
 <table>
    <tr>
        <td>name</td>
        <td>${username}</td>
    </tr>
    <tr>
        <td>password</td>
        <td>${password}</td>
    </tr>
    <tr>
        <td>identity</td>
        <td>${identity}</td>
    </tr>
</table>  
</body>
</html>