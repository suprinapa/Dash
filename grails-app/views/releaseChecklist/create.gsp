<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'Create')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<div role="main">
	<h3><g:message code="default.create.label" args="[entityName]"/></h3>
%{--	<g:if test="${flash.message}">--}%
%{--		<div class="message" role="status">${flash.message}</div>--}%
%{--	</g:if>--}%
	<g:form controller="releaseChecklist" action="add" >
		<fieldset class="form">
			<g:render template="addForm"/>
		</fieldset>
		<fieldset class="buttons">
			<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			<g:link controller="releaseChecklist" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
		</fieldset>
	</g:form>
</div>
</body>
</html>
