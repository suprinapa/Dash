<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 6/2/2022
  Time: 4:03 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
%{--Search Panel --}%
<div class="btn-group">
    <g:form controller="esewaRelease" action="search" method="GET">
        <div class="input-group" id="search-area">
            <g:select name="colName" class="form-control" from="[releaseName: 'Release Name',releaseVersion_code :'Release Version',releaseStatus : 'ReleaseStatus', createdDate: 'CreatedDate']" value="${params?.colName}" optionKey="key" optionValue="value"/>
            <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
            <span class="input-group-btn">
                <button class="btn btn-default" type="submit">Search</button>
            </span>
        </div>
    </g:form>
</div>

</body>
</html>