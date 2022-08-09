<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
</head>
<body>
<div class="card">
	<div class="card-header">
		<h4><g:message code="default.create.label" args="['Release Notes']"/></h4>
	</div>
	<div class="card-body">
		<g:form controller="releaseNotes" action="save" enctype="multipart/form-data">
			<g:render template="form"/>
			<div class="form-action-panel">
				<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Save')}" />
				<g:link controller="releaseNotes" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
			</div>
		</g:form>
	</div>
</div>
</body>
</html>
