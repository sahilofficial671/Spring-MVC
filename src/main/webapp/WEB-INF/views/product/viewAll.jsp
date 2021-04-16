<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<t:app>
	<jsp:attribute name="body">
		<div class="container mt-5 mb-5">
				<div class="row">
				
					<div class="col-sm-6 offset-sm-3">
						<jsp:include page="/WEB-INF/components/alert.jsp" />
						<h3>Checkout all out products</h3>
						<table class="table table-bordered table-hover">
							<thead>
								<tr>
									<th>ID</th>
									<th>Name</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
							    <c:forEach items="${products}" var="product">
									<tr>
										<td>${product.id}</td>
										<td>${product.name}</td>
										<td>${product.price}</td>
										<td>${product.quantity}</td>
										<td><a href="<spring:url value="/product/${product.id}" />" class="btn btn-light"><i class="far fa-eye">&nbsp; View</i></a></td>
									</tr>
								</c:forEach>

							    <c:if test="${products.isEmpty()}">
							    	<tr><td colspan="5">No product found.</td></tr>
							    </c:if>
							</tbody>
							
						</table>
						
					</div>
				</div>
			</div>
	</jsp:attribute>
</t:app>