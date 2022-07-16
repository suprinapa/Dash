<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
	<g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'Release Notes')}"/>
	<title><g:message code="default.list.label" args="[entityName]"/></title>
	<g:link controller="releaseNotes" action="create" class="btn btn-success"><g:message code="default.edit.label"
																						 args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
	<div class="card-header">
		<h4 style=font-family:aria-atomic,ui-serif><g:message code="default.edit.label" args="[entityName]"/></h4>
	</div>

	<div class="card-body">
		<g:form controller="releaseChecklist" action="update">
			<g:hiddenField name="id" value="${releaseChecklist.id}"/>
			<g:render template="form"/>
			<div class="form-action-panel">
				<g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "update")}"/>
				<g:link controller="releaseChecklist" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
			</div>
		</g:form>
	</div>
</div>
</body>
</html>