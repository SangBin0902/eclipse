<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@include file="/WEB-INF/views/includes/header.jsp" %>

<style>
	
</style>

<div class="row justify-content-center">
	<div class="col-lg-12">
		<div class="card shadow mb-4">
			<div class="card-header py-3">
				<h6 class="m-0 fw-bold text-primary">Product Read</h6>
			</div>
			
			<div class="card-body">
				<div class="mb-3 input-group input-group-lg">
					<span class="input-group-text">No</span>
					<input type="text" class="form-control" value="<c:out value='${product.pno}'/>" readonly>
				</div>
				
				<div class="mb-3 input-group input-group-lg">
					<span class="input-group-text">Desc</span>
					<textarea class="form-control" name="content" rows="3" readonly><c:out value="${product.pdesc}"/></textarea>
				</div>
				
				<div class="mb-3 input-group input-group-lg">
					<span class="input-group-text">Writer</span>
					<input type="text" name="writer" class="form-control" value="<c:out value='${product.writer}'/>" readonly>
				</div>
				
				<div class="mb-3 input-group input-group-lg">
					<span class="input-group-text">Price</span>
					<input type="text" name="price" class="form-control" value="<c:out value='${product.price}'/>" readonly>
				</div>
				
				<div class="float-end">
					<a href='/product/list' class="btn">
						<button type="button" class="btn btn-info btnList"> LIST </button>
					</a>
					
					<a href='/product/modify/${product.pno}' class="btn">
						<button type="button" class="btn btn-warning btnModify">MODIFY</button>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="mb-3">
	<label class="form-label fw-bold">Product Images</label>
	<div class="row">
		<c:forEach var="image" items="${product.imageList}">
			<div class="col-md-3 mb-3">
				<div class="card">
					<a href="/images/${image.uuid}_${image.fileName}" target="_blank">
						<img src="/images/${image.uuid}_${image.fileName}" class="card-img-top img-fluid" alt="Product Image">
					</a>
				</div>
			</div>
		</c:forEach>
	</div>
</div>

<div class="row justify-content-center mt-5">
	<div class="col-lg-12">
		<div class="summary-box">
			<h4>리뷰 통계</h4>
			<p>
				총 리뷰 개수: <span class="badge bg-primary">${reviewSummary.totalReview != null ? reviewSummary.totalReview : 0}</span>개 <br>
				평균 별점: <span class="badge bg-warning text-dark">${reviewSummary.averageRating != null ? reviewSummary.averageRating : 'N/A'}</span> / 5
			</p>
			<c:if test="${reviewSummary.starCounts != null}">
				<div class="mt-2">
					<p class="mb-1"><strong>별점 분포:</strong></p>
					<ul class="list-unstyled">
						<li>5점: <span class="badge bg-light text-dark">${reviewSummary.starCounts['5'] != null ? reviewSummary.starCounts['5'] : 0}</span>개</li>
					</ul>
				</div>
			</c:if>
		</div>
	</div>
</div>

<script>

</script>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>