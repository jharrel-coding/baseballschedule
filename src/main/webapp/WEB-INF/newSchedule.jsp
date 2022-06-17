<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 6/16/2022
  Time: 9:50 PM
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
        <h1>Add a new game</h1>
    </div>
    <form:form action="/schedules/create" method="POST" modelAttribute="newSchedule">
        <div>
            <form:label path="gameDate">Game Date:</form:label>
            <strong> <form:errors path="gameDate" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="date" path="gameDate" />
        </div>

        <div>
            <form:label path="homeTeam">Home Team:</form:label>
            <strong> <form:errors path="homeTeam" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" path="homeTeam" />
        </div>

        <div>
            <form:label path="homeStartingPitcher">Home Starting Pitcher:</form:label>
            <strong> <form:errors path="homeStartingPitcher" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" path="homeStartingPitcher" />
        </div>

        <div>
            <form:label path="visitTeam">Visiting Team:</form:label>
            <strong> <form:errors path="visitTeam" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" path="visitTeam" />
        </div>

        <div>
            <form:label path="visitStartingPitcher">Visiting Starting Pitcher:</form:label>
            <strong> <form:errors path="visitStartingPitcher" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" path="visitStartingPitcher" />
        </div>

        <div>
            <form:label path="ballpark">Ballpark:</form:label>
            <strong> <form:errors path="ballpark" class="alert text-danger" /></strong>
            <form:input class="form-control mb-3" type="text" path="ballpark" />
        </div>

        <input class = "btn btn-primary" type="submit" value="Submit" />

    </form:form>

</div>




</body>
</html>