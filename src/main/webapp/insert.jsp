<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="WEB-INF/Components/header.jsp" %>

<div class="col-lg-8 mx-auto p-4 py-md-5">
    <main>
        <form action="InsertServlet" method="post">
            <input type="text" id="title" name="title"><br>
            <input type="number" id="year" name="year"><br>
            <input type="text" id="director" name="director"><br>
            <input type="text" id="stars" name="stars"><br>
            <input type="text" id="review" name="review"><br>
            <input type="submit" value="Submit">
        </form>
    </main>
    <footer class="pt-5 my-5 text-muted border-top">

    </footer>
</div>


<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>