<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>목록</title>
<style>a{text-decoration:none;}</style>
<style type="text/css">
table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}

.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}
.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 0 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}

</style>
</head>
<body>
	<form method="get">
	</form>
	<section class="notice">
		<div class = "container">
		<h3>상품 문의</h3>
		<c:choose>
			<c:when test="${ empty boardLists }">
				<p>등록된 게시물이 없습니다</p>
			</c:when>
			<c:otherwise>
				<c:forEach items="${ boardLists }" var="row" varStatus="loop">
				<p>${ map.totalCount - (((map.pageNum-1) * map.pageSize) + loop.index)}
				</p>
				<p>${ row.name } </p>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
	</section>	
	<section class="notice">
  <div class="page-title">
        <div class="container">
            <h3>상품 문의</h3>
        </div>
    </div>
  
  <!-- board list area -->
    <div id="board-list">
        <div class="container">
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-writer">작성자</th>
                    <th scope="col" class="th-date">등록일</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>3</td>
                    <th>
                      <a href="#!">[공지사항] 개인정보 처리방침 변경안내처리방침</a>
                      <p>테스트</p>
                    </th>
                    <td>김진성</td>
                    <td>2017.07.13</td>
                </tr>

                <tr>
                    <td>2</td>
                    <th>
                    <a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a>
                    </th>
                    <td>김진성</td>
                    <td>2017.06.15</td>
                </tr>

                <tr>
                    <td>1</td>
                    <th>
                    <a href="#!">공지사항 안내입니다. 이용해주셔서 감사합니다</a>
                    </th>
                    <td>김진성</td>
                    <td>2017.06.15</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</section>
</body>
</html>