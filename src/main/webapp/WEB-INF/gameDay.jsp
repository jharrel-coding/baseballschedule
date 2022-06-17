<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 6/17/2022
  Time: 12:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!-- for validations -->
<%@ page isErrorPage="true" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
    <!-- YOUR own local CSS -->
    <link rel="stylesheet" href="/css/style.css"/>
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/script.js"></script>

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<div class="container">
    <h1>${ schedule.homeTeam } vs. ${ schedule.visitTeam } Details</h1>
    <p>Home Starting Pitcher: ${schedule.homeStartingPitcher}</p>
    <p>visiting Starting Pitcher: ${schedule.visitStartingPitcher}</p>
    <p>Ballpark: ${schedule.ballpark}</p>
</div>

<button class="btn btn-primary">
    <a href="/">Return Home</a>
</button>

</body>
</html>