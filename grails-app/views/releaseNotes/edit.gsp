<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>

<body>
<div class="nav" role="navigation">
    <g:set var="entityName" value="${message(code: 'releaseNotes.label', default: 'Release Notes')}"/>
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
        <g:form controller="releaseNotes" action="update">
            <g:hiddenField name="id" value="${releaseNotes.id}"/>
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-success" name="update" value="${g.message(code: "update")}"/>
                <g:link controller="releaseNotes" action="index" class="btn btn-secondary"><g:message
                        code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>

%{--
<%@ page import="org.springframework.validation.FieldError; dash.ReleaseNotes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'releaseNotes.label', default: 'ReleaseNotes')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-releaseNotes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="edit-releaseNotes" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${releaseNotes}">
			<ul class="errors" role="alert">
				<g:eachError bean="${releaseNotes}" var="error">
				<li <g:if test="${error in FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:releaseNotes, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${releaseNotes?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>

--}%
%{--		<g:form url="[resource: releaseNotes, action: 'update']" method="PUT">
		--}%%{-- action will check version before we update the instance to avoid conflicts with changes by another user--}%%{--
			<g:hiddenField name="version" value="${releaseNotes?.version}"/>
			<fieldset class="form">
				<g:render template="form"/>
			</fieldset>

			<div class="form-action-panel">
				<g:submitButton class="btn btn-success" name="update" value="${g.message(code: "update")}"/>
				<g:link controller="releaseNotes" action="index" class="btn btn-secondary"><g:message
						code="cancel"/></g:link>
			</div>
		</g:form>--}%
