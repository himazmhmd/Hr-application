<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix = "c" uri
="http://java.sun.com/jsp/jstl/core" %> <%@taglib prefix="fmt"
uri="http://java.sun.com/jsp/jstl/fmt" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> <%@ taglib
prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set var="context" value="${pageContext.request.contextPath}" />
<c:set var="contextPath" value="${pageContext.request.getPathInfo()}" />

<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="year" value="${now}" pattern="YYYY" />

<fmt:formatDate var="month" value="${now}" pattern="MM" />

<fmt:formatDate var="today" value="${now}" pattern="dd-MM-YYYY" />

<c:set var="imgPath" value="${context}/assets/img" />
<c:set var="cssPath" value="${context}/assets/css" />
<c:set var="jsPath" value="${context}/assets/js" />
<c:set var="libPath" value="${context}/assets/lib" />
<c:set var="webjarsPath" value="${context}/webjars" />

<c:set var="siteTitle" value="Mood Admin" />
