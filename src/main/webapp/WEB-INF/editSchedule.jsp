<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 6/17/2022
  Time: 12:21 PM
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
    <div>
        <h1>Edit This Game</h1>
    </div>
    <form:form action="/schedules/${ schedule.id }/update" method="POST" modelAttribute="editSchedule">
        <input type="hidden" name="_method" value="put">
        <div>
            <form:label path="gameDate">Game Date:</form:label>
            <strong> <form:errors path="gameDate" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="date" value = "${ schedule.gameDate }" path="gameDate" />
        </div>

        <div>
            <form:label path="homeTeam">Home Team:</form:label>
            <strong> <form:errors path="homeTeam" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" value=" ${schedule.homeTeam}" path="homeTeam" />
        </div>

        <div>
            <form:label path="homeStartingPitcher">Home Starting Pitcher:</form:label>
            <strong> <form:errors path="homeStartingPitcher" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" value=" ${schedule.homeStartingPitcher}" path="homeStartingPitcher" />
        </div>

        <div>
            <form:label path="visitTeam">Visiting Team:</form:label>
            <strong> <form:errors path="visitTeam" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" value=" ${schedule.visitTeam}" path="visitTeam" />
        </div>

        <div>
            <form:label path="visitStartingPitcher">Visiting Starting Pitcher:</form:label>
            <strong> <form:errors path="visitStartingPitcher" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" value=" ${schedule.visitStartingPitcher}" path="visitStartingPitcher" />
        </div>

        <div>
            <form:label path="ballpark">Ballpark:</form:label>
            <strong> <form:errors path="ballpark" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" value=" ${schedule.ballpark}" path="ballpark" />
        </div>

        <input class = "btn btn-primary" type="submit" value="Edit" />

    </form:form>

</div>




</body>
</html>
