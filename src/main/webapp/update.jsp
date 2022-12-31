<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="WEB-INF/Components/header.jsp" %>
<%
    System.out.println(request.getAttribute("year").toString());
%>
<div class="col-lg-8 mx-auto p-4 py-md-5">
    <main>
        <form action="UpdateServlet" method="post">
            <input type="text" id="title" name="title" value="${requestScope.title}"><br>
            <input type="number" id="year" name="year" value="${requestScope.year}" ><br>
            <input type="text" id="director" name="director" value="${requestScope.director}" ><br>
            <input type="text" id="stars" name="stars" value="${requestScope.stars}" ><br>
            <input type="text" id="review" name="review" value="${requestScope.review}" ><br>
            <input type="hidden" id="id" name="id" value="${requestScope.id}">
            <input type="submit" value="Submit">
        </form>
    </main>
    <footer class="pt-5 my-5 text-muted border-top">

    </footer>
</div>

<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>