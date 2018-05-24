<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp" %>

<form:form commandName="user" cssClass="form-horizontal">
	
	<c:if test="${param.success eq true}">
		<div class="alert alert-success">Registration Successfull!</div>
	</c:if>
	
	<div class="form-group">
		<label for="name" class="col-sm-2 contrl-label">Name:</label>
		<div class="col-sm-10">
			<form:input path="name" cssClass="form-contrl" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 contrl-label">Email:</label>
		<div class="col-sm-10">
			<form:input path="email" cssClass="form-contrl" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 contrl-label">Password:</label>
		<div class="col-sm-10">
			<form:password path="password" cssClass="form-contrl" />
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-2">
			<input type="submit" value="Save" class="btn btn-lg btn-primary" />
		</div>
	</div>
</form:form>