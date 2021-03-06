<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consider registration page</title>
</head>
<body>

<h1 align="center">Consider registration</h1>

<form method="post" action="singleRegistration.htm">

	<table>
		<tr>
			<td>First name: </td>
			<td><input type="text" name="firstName" value="${regReq.firstName}"/></td>
		</tr>
		<tr>
			<td>Last name: </td>
			<td><input type="text" name="lastName" value="${regReq.lastName}"/></td>
		</tr>
		<tr>
			<td>Username: </td>
			<td><input type="text" name="username" value="${regReq.username}"/></td>
		</tr>
		<tr>
			<td>Password: </td>
			<td><input type="text" name="password" value="${regReq.password}"/></td>
		</tr>
		<tr>
			<td>Allowed films: </td>
			<td><input type="text" name="allowedFilms" value="${regReq.allowedFilms}"/></td>
		</tr>
		<tr>
			<td>Email: </td>
			<td><label>${regReq.email}</label></td>
		</tr>
		<tr>
			<td>Administrator: </td>
			<c:if test="${regReq.admin==true}">
			<td><input type="checkbox" name="admin" checked  /></td>
			</c:if>
			<c:if test="${regReq.admin==false}">
			<td><input type="checkbox" name="admin"/></td>
			</c:if>
		</tr>
		<tr>
			<td>Approve: </td>
			<td>
				<input type="radio" name="status" value="yes" checked="checked" />Yes
				<input type="radio" name="status" value="no" />No
			</td>
		</tr>
	</table>
	
	<input type="hidden" name="id" value="${regReq.id}"/>
	<input type="hidden" name="email" value="${regReq.email}"/>
	
	<p align="center"><button type="submit">Change</button></p>

</form>
	
	<p align="center"><a href="regManagmentPage.htm">Back</a></p>
	
	<c:if test="${not empty singleRegErr}">
		<p class="error" align="center">${singleRegErr}</p>	
	</c:if>
	
</body>
</html>