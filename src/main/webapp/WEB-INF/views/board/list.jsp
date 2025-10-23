<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/includes/header.jsp" %>

<div class="row justify-content-center">
	<div class="col-lg-12">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 font-weight-bold text-primary">Board List</h6>
			</div>
			
			<div class="card-body">
			
				<table class="table table-bordered" id="dataTable">
					<thead>
						<tr>
							<th>Bno</th>
							<th>Title</th>
							<th>Writer</th>
							<th>RegDate</th>
						</tr>
					</thead>
					<tbody class="tbody">
						
						<c:forEach var="board" items="${list}">
							<tr data-bno="${board.bno}">
								<td><c:out value="${board.bno}" /></td>
								<td><c:out value="${board.title}" /></td>
								<td><c:out value="${board.writer}" /></td>
								<td><c:out value="${board.createdDate}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			
			</div>
		</div>
	</div>
</div>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>