<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'EsewaRelease')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <g:link controller="esewaRelease" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
    <div class="card-header">
        %{--Search Panel --}%
        <div class="btn-group">
            <g:formRemote url="[controller: 'esewaRelease', action: 'search']" method="GET" name="myform"
                          update="gridList">
                <div class="input-group" id="search-area">
                    <g:select name="colName" class="form-control"
                              from="[releaseName: 'Release Name', releaseVersion: 'Release Version']"
                              value="${params?.colName}" optionKey="key" optionValue="value"/>
                    <g:textField class="form-control" id="searchField" name="searchText"
                                 placeholder="Search"></g:textField>
                    <span class="input-group-btn">
                        <button class="btn btn-success" type="submit">Search</button>
                    </span>
                </div>
            </g:formRemote>
        </div>

        <div class="card-body">
            <div id="list-esewaRelease" class="content scaffold-list" role="main">
                <h2><g:message code="default.list.label" args="[entityName]"/></h2>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
            </div>


            <div id="gridList">
                <g:render template="grid"/>
            </div>
        </div>
</body>
</html>
