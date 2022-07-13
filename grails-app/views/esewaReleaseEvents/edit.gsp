<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
</head>
<body>
<div class="nav" role="navigation">
	<g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'Esewa Release Events ')}"/>
	<title><g:message code="default.list.label" args="[entityName]"/></title>
	<g:link controller="esewaReleaseEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
</div>
<br>
<div class="card">
	<div class="card-header">
		<h4 style=font-family:aria-atomic,ui-serif><g:message code="default.edit.label" args="[entityName ]"/></h4>
	</div>
	<div class="card-body">
		<g:form controller="esewaReleaseEvents" action="update">
			<g:hiddenField name="id" value="${esewaReleaseEvents.id}"/>
			<g:render template="form" model="[edit:'yes']"/>
			<div class="form-action-panel">
				<g:submitButton class="btn btn-success" name="update" value="${g.message(code: "update")}"/>
				<g:link  controller="esewaReleaseEvents" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
			</div>
		</g:form>
	</div>
</div>
</body>
</html>

%{--
<%@ page import="org.springframework.validation.FieldError; dash.EsewaReleaseEvents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-esewaReleaseEvents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">

			<g:link controller="esewaReleaseEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>

	</div>
		<div id="edit-esewaReleaseEvents" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${esewaReleaseEventsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${esewaReleaseEventsInstance}" var="error">
				<li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:esewaReleaseEventsInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${esewaReleaseEventsInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link controller="esewaReleaseEvents" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
--}%
