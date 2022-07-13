%{--Include Main Layout--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'EsewaRelease')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
    <g:link controller="esewaRelease" action="create" class="btn btn-success"><g:message code="default.edit.label"
                                                                                         args="[entityName]"/></g:link>
</div>
<br>

<div class="card">
    <div class="card-header">
        <h4 style=font-family:aria-atomic,ui-serif><g:message code="default.edit.label" args="[entityName]"/></h4>
    </div>

    <div class="card-body">
    %{--    <g:form controller="esewaRelease" action="update">
            <g:hiddenField name="id" value="${esewaRelease.id}"/>
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-success" name="update" value="${g.message(code: "update")}"/>
                <g:link  controller="esewaRelease" action="index" class="btn btn-secondary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>--}%
        <g:form url="[resource: esewaRelease, action: 'update']" method="PUT">
        %{-- action will check version before we update the instance to avoid conflicts with changes by another user--}%
            <g:hiddenField name="version" value="${esewaRelease?.version}"/>
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>

            <div class="form-action-panel">
                <g:submitButton class="btn btn-success" name="update" value="${g.message(code: "update")}"/>
                <g:link controller="esewaRelease" action="index" class="btn btn-secondary"><g:message
                        code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>

%{--
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
			<g:hasErrors bean="${esewaRelease}">
			<ul class="errors" role="alert">
				<g:eachError bean="${esewaRelease}" var="error">
				<li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:esewaRelease, action:'update']" method="PUT" >
			--}%
%{-- action will check version before we update the instance to avoid conflicts with changes by another user--}%%{--

				<g:hiddenField name="version" value="${esewaRelease?.version}" />
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
--}%
