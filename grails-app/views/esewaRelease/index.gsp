<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 4/27/2022
  Time: 12:06 PM
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'release.label', default: 'EsewaRelease')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
%{--<a href="#list-EsewaRelease" class="skip" tabindex="-1"><g:message code="back" default="Back"/></a>--}%
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="Create" args="[entityName]" /></g:link></li>
       %{-- <li><a class="list" href="${createLink(uri: '/esewaRelease/index')}"><g:message code="default.product.list"/></a></li>--}%
    </ul>
</div>
<div id="list-EsewaRelease" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"  /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table class="table table-striped">
        <tr>
            <th>Id</th>
            <th>Release Name</th>
            <th>Release Version</th>
            <th>Environment</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Action</th>
        </tr>

        <g:each var="release" in="${list}">
            <tr>
                <td>${release.id}</td>
                <td>${release.releaseName}</td>
                <td>${release.releaseVersion}</td>
                <td>${release.environment}</td>
                <td>${release.startDate}</td>
                <td>${release.endDate}</td>
                <td>
              %{--      <a href="/EsewaRelease/edit/${release.id}"><i class="fa fa-edit"></i></a>&NonBreakingSpace;
                    <a href="/EsewaRelease/delete/${release.id}"><i class="fa fa-trash" onclick="return confirm('Are you sure?');"></i></a>--}%
                    <g:link controller="esewaRelease" action="edit" class="btn btn-secondary" id="${release.id}"><i class="fas fa-edit"></i></g:link>
                    <g:link controller="esewaRelease" action="delete" id="${release.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>

                </td>
            </tr>
        </g:each>
    </table>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
</body>
</html>