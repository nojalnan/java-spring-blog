<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/taglib.jsp" %>

<h1>${user.name}</h1>

<button class="btn btn-primary btn=lg" data-toggle="modal" data-target="#myModal">
	New Blog
</button>

<form:form commandName="blog" cssClass="form-horizontal">
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
	        <h4 class="modal-title" id="myModalLabel">New blog</h4>
	      </div>
		<div class="modal-body">
			<div class="form-group">
				<label for="name" class="col-sm-2 contrl-label">Name:</label>
				<div class="col-sm-10">
					<form:input path="name" cssClass="form-contrl" />
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 contrl-label">URL:</label>
				<div class="col-sm-10">
					<form:input path="url" cssClass="form-contrl" />
				</div>
			</div>
		</div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        <input type="submit" class="btn btn-primary" value="Save" />
	      </div>
	    </div>
	  </div>
	</div>
</form:form>

<br /><br />

<script type="text/javascript">
$(document).ready(function() {
	$('nav-tabs a:first').tab('show'); // Select first tab
});
</script>

<!-- Nav tabs -->
<ul class="nav nav-tabs">
	<c:forEach items="${user.blogs}" var="blog">
	<li><a href="#blog_${blog.id}" data-toggle="tab">${blog.name}</a></li>
	</c:forEach>
</ul>

<!-- Tab panes -->
<div class="tab-content">
	<c:forEach items="${user.blogs}" var="blog">
		<div class="tab-pane" id="blog_${blog.id}">
			<h1>${blog.name}</h1>
			<p>${blog.url}</p>

			<table class="table table-bordered table-hover table-striped">
				<thead>
					<tr>
						<th>Title</th>
						<th>Link</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${blog.items}" var="item">
						<tr>
							<td>${item.title}</td>
							<td>${item.link}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</c:forEach>
</div>
