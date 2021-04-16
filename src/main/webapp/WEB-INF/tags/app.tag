<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@attribute name="body" fragment="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
	<%@include file="/WEB-INF/components/headerStyles.jsp" %>
		<style>
			<%@include file="/WEB-INF/assets/css/style.css" %>
		</style>
		<meta charset="ISO-8859-1">
		<title>Product Store</title>
	</head>
	<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
		<%@include file="/WEB-INF/components/navbar.jsp" %>
		<jsp:invoke fragment="body"/>
		<%@include file="/WEB-INF/components/footer.jsp" %>
	</body>
</html>