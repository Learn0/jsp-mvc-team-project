<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
	<head>
		<title>게시판</title>
		<style>
			.table > thead > tr > th:first-child {
				width: 80px;
			}
			.table > thead > tr > th:last-child {
				width: 100px;
			}
			.table > thead > tr > th:nth-child(3) {
				width: 150px;
			}
			.table > thead > tr > th:nth-child(4) {
				width: 200px;
			}
			.table > tbody > tr.listInner{
				cursor: pointer;
			}
		</style>
	</head>
	<body>
		<div id="main">
			<div class="row">
				<div class="col-xs-12">
					<div class="box-content">
						<div class="clearfix">
							<form action="<%=request.getContextPath()%>/board/list.do" method="get" class="form-horizontal">
								<div class="input-group">
									<input type="text" id="search" class="form-control" name="search" value="${search}" placeholder="키워드를 입력해 주세요." />
									<input type="hidden" name="page" value="1" />
									<div class="input-group-btn">
										<button type="submit"  style="border:0px; padding:8px 25px; color:white" class="btn btn-primary">검색</button>
									</div>
								</div>
							</form>
						</div>
						<div class="table-responsive clearfix">
							<table class="table table-hover">
								<thead>
									<tr class="warning">
										<th>번호</th>
										<th>제목</th>
										<th>작성자</th>
										<th>등록일</th>
										<th>조회 수</th>
									</tr>
								</thead>
								<tbody>
									<c:choose>
										<c:when test="${fn:length(boardList) > 0}">
											<c:forEach var="vo" items="${boardList}">
												<tr onClick="viewBoard(${vo.idx})" class="listInner">
													<td>${vo.idx}</td>
													<td>${vo.title}</td>
													<td>${vo.writer}</td>
													<td>
													<fmt:parseDate value="${vo.insertTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
													<fmt:formatDate value="${parsedDateTime}" pattern="yyyy-MM-dd" />
													</td>
													<td>${vo.viewCount}</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="5">조회된 결과가 없습니다.</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
							<div style="text-align:right">
								<button type="button" onclick="writeBoard()" class="btn btn-primary">글쓰기</button>
							</div>
							<c:if test="${fn:length(boardList) > 0}">
								<nav>
								  	<ul class="pagination justify-content-center">
										<c:forEach var="pageNo" begin="${minPage}" end="${maxPage}">
											<li onclick="movePage('${pageNo}')" class="page-item ${(pageNo eq page) ? 'active' : '' }">
												<a class="page-link" href="javascript:void(0)">${pageNo}</a>
											</li>
										</c:forEach>
								  	</ul>
								</nav>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript">
			const viewBoard=(idx)=>{
				let uri = "<%=request.getContextPath()%>/board/viewCount.do";
				let form = $("<form></form>");
				form.attr("action", uri);
				form.attr("method", "post");
				form.appendTo('body');
				form.append("<input type='hidden' name='idx' value="+idx+" />");
				form.submit();
			}

			const writeBoard=(idx)=>{
				if("${sessionScope.id}" === ""){
					alert("로그인 후 진행해주세요.");
					return;
				}
				let uri = "<%=request.getContextPath()%>/board/write.do";
				let form = $("<form></form>");
				form.attr("action", uri);
				form.attr("method", "post");
				form.appendTo('body');
				form.append("<input type='hidden' name='idx' value="+idx+" />");
				form.submit();
			}
	
			const movePage=(page)=>{
				location.replace("${requestScope['javax.servlet.forward.request_uri']}?search=${search}&page=" + page);
			}
		</script>
	</body>
</html>