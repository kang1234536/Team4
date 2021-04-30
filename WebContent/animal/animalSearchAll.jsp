<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


  
	         <div class="a_listDIV">
				<c:forEach var="animal" items="${aniList }" varStatus="status">
					<c:if test="${status.count%2 eq 1}">
						<li class="animals"><img src="${animal.popfile}" width="150" height="150">
							<ul>
								<li><span>유기번호 : </span>${animal.animalID}</li>
								<li><span>발견장소 : </span>${animal.happenPlace}</li>
								<li><span>발견날짜 : </span>${animal.happenDate}</li>
								<li><span>상태 : </span>${animal.state}</li><br>
								<li><button	class="상세보기버튼" onclick="location.href='AnimalDetailServlet?animalId=${animal.animalID}'">상세보기</button></li>
							</ul>
						</li>
					</c:if>
				</c:forEach>
			</div>
			<div class="a_listDIV">
				<c:forEach var="animal" items="${aniList }" varStatus="status">
					<c:if test="${status.count%2 eq 0}">
						<li class="animals"><img src="${animal.popfile}" width="150" height="150">
							<ul>
								<li><span>유기번호 : </span>${animal.animalID}</li>
								<li><span>발견장소 : </span>${animal.happenPlace}</li>
								<li><span>발견날짜 : </span>${animal.happenDate}</li>
								<li><span>상태 : </span>${animal.state}</li><br>
								<li><button	class="상세보기버튼" onclick="location.href='AnimalDetailServlet?animalId=${animal.animalID}'">상세보기</button></li>
							</ul>
						</li>
					</c:if>
				</c:forEach>
			</div>
		
			<div id="paging">
				<c:set var="page" value="${totalPage}"/>
				<div>
				<c:forEach var="pageNum" begin="1" end="${page}" step="1">
					<a href="#" onclick="pageChange('${pageNum}')">${pageNum}&nbsp;&nbsp;&nbsp;</a>
				</c:forEach>
				</div>
			</div><!-- paging -->
      	  