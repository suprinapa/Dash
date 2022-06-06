<%@ page import="dash.EsewaComponents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewa.Components', default: 'Edit')}" />
		<title><g:message code="esewaComponents" args="['Edit']" /></title>
	</head>
	<body>
		<a href="#edit-esewaComponents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-esewaComponents" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
%{--			<g:if test="${flash.message}">--}%
%{--			<div class="message" role="status">${flash.message}</div>--}%
%{--			</g:if>--}%
		%{--	<g:hasErrors bean="${esewaComponentsInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${esewaComponentsInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>--}%
			<div class="card-body">
				<g:form controller="esewaComponents" action="update">
					<g:hiddenField name="id" value="${esewaComponents.id}"/>
					<g:render template="form" model="[edit:'yes']"/>
					<div class="form-action-panel">
						<g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "default.button.update.label")}"/>
						<g:link controller="esewaComponents" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
					</div>
				</g:form>
			</div>
	</body>
</html>
