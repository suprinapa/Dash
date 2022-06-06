
<%@ page import="dash.EsewaReleaseEvents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-esewaReleaseEvents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-esewaReleaseEvents" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list esewaReleaseEvents">
			
				<g:if test="${esewaReleaseEventsInstance?.approvedDate}">
				<li class="fieldcontain">
					<span id="approvedDate-label" class="property-label"><g:message code="esewaReleaseEvents.approvedDate.label" default="Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="approvedDate-label"><g:formatDate date="${esewaReleaseEventsInstance?.approvedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.approvedBy}">
				<li class="fieldcontain">
					<span id="approvedBy-label" class="property-label"><g:message code="esewaReleaseEvents.approvedBy.label" default="Approved By" /></span>
					
						<span class="property-value" aria-labelledby="approvedBy-label"><g:fieldValue bean="${esewaReleaseEventsInstance}" field="approvedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="esewaReleaseEvents.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate date="${esewaReleaseEventsInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.esewaEvents}">
				<li class="fieldcontain">
					<span id="esewaEvents-label" class="property-label"><g:message code="esewaReleaseEvents.esewaEvents.label" default="Esewa Events" /></span>
					
						<span class="property-value" aria-labelledby="esewaEvents-label"><g:link controller="esewaEvents" action="show" id="${esewaReleaseEventsInstance?.esewaEvents?.id}">${esewaReleaseEventsInstance?.esewaEvents?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.esewaRelease}">
				<li class="fieldcontain">
					<span id="esewaRelease-label" class="property-label"><g:message code="esewaReleaseEvents.esewaRelease.label" default="Esewa Release" /></span>
					
						<span class="property-value" aria-labelledby="esewaRelease-label"><g:link controller="esewaRelease" action="show" id="${esewaReleaseEventsInstance?.esewaRelease?.id}">${esewaReleaseEventsInstance?.esewaRelease?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:esewaReleaseEventsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${esewaReleaseEventsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete-confirmation" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>				</fieldset>
			</g:form>
		</div>
	</body>
</html>
