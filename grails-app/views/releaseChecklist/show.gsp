
<%@ page import="dash.ReleaseChecklist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'ReleaseChecklist')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-releaseChecklist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-releaseChecklist" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list releaseChecklist">
			
				<g:if test="${releaseChecklistInstance?.releaseCheckListDescription}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="releaseChecklist.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${releaseChecklistInstance}" field="releaseCheckListDescription"/></span>
					
				</li>
				</g:if>
			
				%{--<g:if test="${releaseChecklistInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="releaseChecklist.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${releaseChecklistInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseChecklistInstance?.ticketNumber}">
				<li class="fieldcontain">
					<span id="ticketNumber-label" class="property-label"><g:message code="releaseChecklist.ticketNumber.label" default="Ticket Number" /></span>
					
						<span class="property-value" aria-labelledby="ticketNumber-label"><g:fieldValue bean="${releaseChecklistInstance}" field="ticketNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseChecklistInstance?.esewaRelease}">
				<li class="fieldcontain">
					<span id="esewaRelease-label" class="property-label"><g:message code="releaseChecklist.esewaRelease.label" default="Esewa Release" /></span>
					
						<span class="property-value" aria-labelledby="esewaRelease-label"><g:link controller="esewaRelease" action="show" id="${releaseChecklistInstance?.esewaRelease?.id}">${releaseChecklistInstance?.esewaRelease?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${releaseChecklistInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="releaseChecklist.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${releaseChecklistInstance}" field="type"/></span>
					
				</li>
				</g:if>--}%

			</ol>
			%{-- resource Generates a link (URI) string--}%
			<g:form url="[resource:releaseChecklistInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${releaseChecklistInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
