
<%@ page import="dash.EsewaReleaseEvents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-esewaReleaseEvents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<g:link controller="esewaReleaseEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
		</div>
		<div id="list-esewaReleaseEvents" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>

			<div id="gridList">
				<g:render template="grid"/>
			</div>
		</div>
	</body>
</html>
