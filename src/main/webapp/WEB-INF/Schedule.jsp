<%--
  Created by IntelliJ IDEA.
  User: jason
  Date: 6/16/2022
  Time: 10:19 AM
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
<%--    <link rel="stylesheet" href="/css/style.css"/>--%>
    <script src="date.js"></script>
    <!-- For any Bootstrap that uses JS or jQuery-->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>

    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<div class="container">
<h2>Home Team Schedule</h2>
<a href="/schedules/new">Add A New Game</a>


    <div>
        <div>
            <table class="table table-condensed table-bordered">
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Home Team</th>
                    <th>Visiting Team</th>
                    <th>Starting Pitchers</th>
                    <th>Ballpark</th>
                </tr>
                </thead>
                <tbody>

                <c:forEach items="${ allSchedules }" var="schedule">
                <!-- Single event in a single day -->
                <tr>
                    <td>
                        <div  class="">
                            <fmt:formatDate dateStyle="short" pattern = "EEEE, MMMMM dd, yy" value = "${ schedule.gameDate }"/>
                        </div>
                    </td>
                    <td>
                            ${ schedule.homeTeam }
                    </td>
                    <td>
                        <div>
                                ${ schedule.visitTeam }
                        </div>
                    </td>
                    <td>
                        <div>
                            Home: ${ schedule.homeStartingPitcher }
                        </div>
                        <div>
                            Visitor: ${ schedule.visitStartingPitcher }
                        </div>
                    </td>
                    <td>
                        <div>
                                ${ schedule.ballpark }
                        </div>
                    </td>
                    <td>
                        <a href= "/schedules/${ schedule.id }">View</a> | <a href="/schedules/${ schedule.id }/edit">Edit</a> |
                        <form action="/schedules/${ schedule.id }/destroy" method = "POST">
                            <input type="hidden" name="_method" value="delete">
                            <input type="submit" value="Delete" />
                        </form>
                    </td>
                </tr>
                </tbody>
                </c:forEach>
            </table>
        </div>
    </div>
</div>
</body>
</html>




