<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 6/27/2022
  Time: 11:23 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
</head>

<div class="card">
    <div class="card-header">
            <div class="btn-group">
                <g:link controller="author" action="delete" class="btn btn-success"><g:message code="default.button.delete.label"/></g:link>
                <g:link controller="author" action="index" class="btn btn-primary"><g:message code="reload"/></g:link>
            </div>
<g:if test="${flash.message}">
    ${flash.message}
</g:if>
    </div>
</div>
</html>