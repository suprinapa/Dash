<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
</head>
<body>
<div class="card">
	<div class="card-header">
		<h4 style=font-family:aria-atomic,ui-serif><g:message code="default.create.label" args="['Release Notes']"/></h4>
	</div>
	<div class="card-body">
		<g:form controller="releaseNotes" action="save" enctype="multipart/form-data">
			<g:render template="form"/>
		</g:form>
	</div>
	<br>
	<div class="form-action-panel">
		<g:submitButton name="create" class="btn btn-success" value="${message(code: 'default.button.create.label', default: 'Save')}" />
		<g:link controller="releaseNotes" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
	</div>
</div>
</body>
</html>


%{--<g:each in="${releaseNotes}" var="releaseNotesDetails">
			<g:render template="form" model="[releaseNotesDetails: releaseNotesDetails]"/>
		</g:each>
<g:render template="form"/>--}%
