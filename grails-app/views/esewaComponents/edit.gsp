<%@ page import="dash.EsewaComponents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewa.Components', default: 'Edit')}" />
		<title><g:message code="esewaComponents" args="['Edit']" /></title>
	</head>
	<body>
	<a href="#edit-esewaComponents" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
																		  default="Skip to content&hellip;"/></a>

	<div class="nav" role="navigation">
		<g:link controller="esewaComponents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
	</div>
	<br>
		<div id="edit-esewaComponents" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<div class="card-body">
				<g:form controller="esewaComponents" action="update">
					<g:hiddenField name="id" value="${esewaComponents.id}"/>
					<g:render template="form" model="[edit:'yes']"/>
					<div class="form-action-panel">
						<g:submitButton class="btn btn-success" name="update" value="${g.message(code: "default.button.update.label")}"/>
						<g:link controller="esewaComponents" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
					</div>
				</g:form>
			</div>
		</div>
	</body>
</html>
