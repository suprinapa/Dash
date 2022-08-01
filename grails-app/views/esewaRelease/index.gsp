<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'eSewaRelease')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <g:link controller="esewaRelease" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>
%{--Search Panel --}%
<div class="row">
    <div class="col-sm-12 btn-group">
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
    </div>
</div>
<br>

<div class="card">
    <div class="card-header">
         <div id="list-esewaRelease" class="content scaffold-list" role="main">
            <h3><g:message code="default.list.label" args="[entityName]"/></h3>
       %{--     <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>--}%
        </div>
    </div>
    <div class="card-body">
            <div id="gridList">
                <g:render template="grid"/>
            </div>
    </div>
</div>
</body>
</html>
