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
					
					<form action="/product/remove" method="post" style="display:inline-block;">
						<input type="hidden" name="pno" value="${product.pno}">
						<button type="submit" class="btn btn-danger">REMOVE</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="mb-5">
	<label class="form-label fw-bold">Product Images</label>
	<div class="row">
		<c:choose>
			<c:when test="${not empty product.imageList}">
				<c:forEach var="image" items="${product.imageList}">
					<div class="col-md-3 mb-3">
						<div class="card">
							<a href="/images/${image.uuid}_${image.fileName}" target="_blank">
								<img src="/images/s_${image.uuid}_${image.fileName}" class="card-img-top img-fluid" alt="Product Image">
							</a>
						</div>
					</div>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div class="col-12 text-center text-muted">
					<p>등록된 이미지가 없습니다.</p>
				</div>
			</c:otherwise>
		</c:choose>
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
						<li>4점: <span class="badge bg-light text-dark">${reviewSummary.starCounts['4'] != null ? reviewSummary.starCounts['4'] : 0}</span>개</li>
						<li>3점: <span class="badge bg-light text-dark">${reviewSummary.starCounts['3'] != null ? reviewSummary.starCounts['3'] : 0}</span>개</li>
						<li>2점: <span class="badge bg-light text-dark">${reviewSummary.starCounts['2'] != null ? reviewSummary.starCounts['2'] : 0}</span>개</li>
						<li>1점: <span class="badge bg-light text-dark">${reviewSummary.starCounts['1'] != null ? reviewSummary.starCounts['1'] : 0}</span>개</li>
					</ul>
				</div>
			</c:if>
		</div>
	</div>
</div>

<div class="row justify-content-center mt-4">
	<div class="col-lg-12">
		<h4 class="mb-3">상품 리뷰 목록</h4>
		<div id="review-list">
			<c:choose>
				<c:when test="${not empty reviewList}">
					<c:forEach var="review" items="${reviewList}">
						<div class="review-card">
							<div class="review-header">
								<span class="review-rating">
									<c:forEach begin="1" end="${review.rating}">🌟</c:forEach>
									(${review.rating}점)
								</span>
								<span>작성자: <strong>${review.mid}</strong></span>
							</div>
							<div class="review-content">
								<p>${review.content}</p>
							</div>
							<div class="review-meta">
								<fmt:formatDate value="${review.regDate}" pattern="yyyy.MM.dd HH:mm"/>
									<button class="btn btn-sm btn-outline-secondary me-1">수정</button>
									<button class="btn btn-sm btn-outline-danger">삭제</button>
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<p class="text-muted">아직 등록된 리뷰가 없습니다. 첫 리뷰를 작성해보세요!</p>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</div>
<div class="row justify-content-center mt-5">
	<div class="col-lg-12">
		<h4 class="mb-3">리뷰 작성하기</h4>
		<div id="review-form" class="card p-4 shadow-sm">
			<form action="/reviews/register" method="post" class="needs-validation" novalidate>
			</form>
		</div>
	</div>
</div>

<script>

</script>

<%@include file="/WEB-INF/views/includes/footer.jsp" %>