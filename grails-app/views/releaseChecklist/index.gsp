<%@ page import="dash.ReleaseChecklist" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'Release CheckList')}"/>
	<title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
	<g:link controller="releaseChecklist" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
	<div class="card-header">
		<h4><g:message code="default.list.label" args="[entityName]"/></h4>
%{--		<g:if test="${flash.message}">--}%
%{--			<div class="message" role="status">${flash.message}</div>--}%
%{--		</g:if>--}%
	</div>
	<div class="card-body">
		<div id="gridList">
			<g:render template="grid"/>
		</div>
	</div>
</div>
</body>
</html>


%{--
<%@ page import="dash.ReleaseChecklist" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'Release CheckList')}"/>
	<title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
	<ul>
		<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
		<li><g:link class="create" action="create"><g:message code="default.new.label"
															  args="[entityName]"/></g:link></li>
	</ul>
</div>

<div id="list-release" class="content scaffold-list" role="main">
	<h1><g:message code="default.list.label" args="[entityName]"/></h1>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<div id="gridList">
		<g:render template="grid"/>
	</div>

</div>
</body>
</html>
--}%
