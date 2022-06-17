<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 6/17/2022
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- for forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
        <h1>${ schedule.homeTeam } vs. ${ schedule.visitTeam}</h1>
        <h3><fmt:formatDate dateStyle="short" pattern = "EEEE, MMMMM dd, yy" value = "${ schedule.gameDate }"/> | ${ schedule.ballpark }</h3>
        <p>Starting Pitchers: ${ schedule.homeStartingPitcher } vs. ${ schedule.visitStartingPitcher}</p>

    <div>
        <button>
            <a href="/">Return Home </a>
        </button>
    </div>
    </div>
</body>
</html>
