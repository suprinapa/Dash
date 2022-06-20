<%@ page import="org.springframework.validation.FieldError; dash.EsewaRelease" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'EsewaRelease')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-esewaRelease" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">
		<ul>
			<g:link controller="esewaRelease" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
		</ul>
	</div>
		<div id="edit-esewaRelease" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${esewaReleaseInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${esewaReleaseInstance}" var="error">
				<li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:esewaReleaseInstance, action:'update']" method="PUT" >
			%{-- action will check version before we update the instance to avoid conflicts with changes by another user--}%
				<g:hiddenField name="version" value="${esewaReleaseInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="btn btn-success" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:link controller="esewaRelease" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
