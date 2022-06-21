<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 6/20/2022
  Time: 5:52 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>searchbyDate</title>
</head>

<body>

<g:form name="searchByDateForm" url="[controller: 'esewaRelease', action: 'searchByDate']"
                style="margin-bottom:5px;">
    <g:textField id="searchByDateField" name="searchByDate" placeholder="Search"
                 style="height:30px; width: 300px;"></g:textField>
</g:form>

</body>
</html>