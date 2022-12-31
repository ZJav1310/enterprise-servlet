<%@ page import="Models.Film" %>
<%@ page import="java.util.List" %>
<%@ page import="com.enterpriseproject.enterpriseservlet.controllers.CommandsBridge" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    List<Film> films;
    films = (List<Film>) new CommandsBridge().getAllFilms();
    request.setAttribute("allFilms", films);

%>
<!DOCTYPE html>
<html>

<%@ include file="WEB-INF/Components/header.jsp" %>

<div class="col-lg-8 mx-auto p-4 py-md-5">
    <main>
        <table class="table">
            <thead class="thead-dark">
            <tr>
                <td>Title</td>
                <td>Director</td>
                <td>Year</td>
                <td>Stars</td>
                <td>Review</td>
                <td></td>
            </tr>
            <thead class="thead-dark">

            <c:forEach var="element" items="${allFilms}">

            <tr>
                <td>${element.getTitle()}</td>
                <td>${element.getDirector()}</td>
                <td>${element.getYear()}</td>
                <td>${element.getStars()}</td>
                <td>${element.getReview()}</td>
                <td><
                    <form action="UpdateServlet" method="get">
                        <input name="id" type="hidden" value="${element.getId()}"/>
                        <input id="update" type="submit" value="Update"/>
                    </form>
                    <form action="DeleteServlet" method="post">
                        <input name="id" type="hidden" value="${element.getId()}"/>
                        <input id="delete" type="submit" value="Delete"/>
                    </form>
                </td>
            </tr>
            </c:forEach>

        </table>
    </main>
    <footer class="pt-5 my-5 text-muted border-top">

    </footer>
</div>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>