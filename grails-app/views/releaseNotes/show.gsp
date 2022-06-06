
<%@ page import="dash.ReleaseNotes" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'releaseNotes.label', default: 'ReleaseNotes')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-releaseNotes" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-releaseNotes" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list releaseNotes">
			
				<g:if test="${releaseNotesInstance?.esewaRelease}">
				<li class="fieldcontain">
					<span id="esewaRelease-label" class="property-label"><g:message code="releaseNotes.esewaRelease.label" default="Esewa Release" /></span>
					
						<span class="property-value" aria-labelledby="esewaRelease-label"><g:link controller="esewaRelease" action="show" id="${releaseNotesInstance?.esewaRelease?.id}">${releaseNotesInstance?.esewaRelease?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseNotesInstance?.ticketPriority}">
				<li class="fieldcontain">
					<span id="ticketPriority-label" class="property-label"><g:message code="releaseNotes.ticketPriority.label" default="Ticket Priority" /></span>
					
						<span class="property-value" aria-labelledby="ticketPriority-label"><g:fieldValue bean="${releaseNotesInstance}" field="ticketPriority"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseNotesInstance?.ticketType}">
				<li class="fieldcontain">
					<span id="ticketType-label" class="property-label"><g:message code="releaseNotes.ticketType.label" default="Ticket Type" /></span>
					
						<span class="property-value" aria-labelledby="ticketType-label"><g:fieldValue bean="${releaseNotesInstance}" field="ticketType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:releaseNotesInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${releaseNotesInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
