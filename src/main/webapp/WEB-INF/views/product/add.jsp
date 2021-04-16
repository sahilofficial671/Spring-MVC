<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<t:app>
	<jsp:attribute name="body">
		<div class="container mt-5 mb-5">
				<div class="row">
				
					<div class="col-sm-6 offset-sm-3">
						<jsp:include page="/WEB-INF/components/alert.jsp" />
						<div class="card">
						  <div class="card-header">
						    Add Product
						  </div>
						  <div class="card-body">
						 <form:form action="${pageContext.request.contextPath}/product/submit" method="post" modelAttribute="product">
							<div class="row g-3 mb-3">
							  <div class="col">
								  <form:errors path="name" cssStyle="color:#ff0000;" />
					              <form:input path="name" id="name" class="form-control" placeholder="Product Name *" autofocus="autofocus" required="required" />
							  </div>

							</div>
							<div class="row g-3 mb-3">
							  <div class="col">
								  <form:errors path="name" cssStyle="color:#ff0000;" />
					              <form:input type="number" path="price" id="price" class="form-control" placeholder="Price *" required="required"/>
							  </div>
							  <div class="col">
							  	  <form:errors path="quantity" cssStyle="color:#ff0000;" />
					              <form:input type="number" path="quantity" id="quantity" class="form-control" placeholder="Quantity *" required="required"/>
							  </div>
							</div>

							  <button type="submit" class="btn btn-primary">Add</button>
							  <a href="<c:url value="/" />" class="btn btn-light">Cancel</a>
							</form:form>
						  </div>
						</div>
						
					</div>
				</div>
			</div>
	</jsp:attribute>
</t:app>