<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<t:app>
	<jsp:attribute name="body">
		<div class="container mt-5 mb-5">
				<div class="row">
				
					<div class="col-sm-6 offset-sm-3">
						<jsp:include page="/WEB-INF/components/alert.jsp" />
						
					        <div class="container">
					            <div class="row">
					                <div class="col-md-5">
					                    <h3>${product.getName()}</h3>
					                    <p>Rs. ${product.getPrice()}</p>
					                    <p>${product.getQuantity() }</p>
					                    <br/>
					                    <p><a href="<c:url value = "/products" />" class="btn btn-light">Back</a></p>
					                </div>
					            </div>
					        </div>
						
					</div>
				</div>
			</div>
	</jsp:attribute>
</t:app>