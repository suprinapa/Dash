
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
	<div class="nav pb-2" role="navigation">
		<g:link controller="esewaReleaseEvents" action="create" class="btn btn-success"><g:message code="default.create.label"
																							 args="[entityName]"/></g:link>
	</div>
		<div id="show-esewaReleaseEvents" class="content scaffold-show" role="main">
			<h2><g:message code="default.show.label" args="[entityName]" /></h2>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list esewaReleaseEvents">
			
				<g:if test="${esewaReleaseEventsInstance?.approvedDate}">
				<li class="list-group-item">
					<span id="approvedDate-label" class="badge"><g:message code="esewaReleaseEvents.approvedDate.label" default="Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="approvedDate-label"><g:formatDate format="MMMM dd, yyyy" date="${esewaReleaseEventsInstance?.approvedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.approvedBy}">
				<li class="list-group-item">
					<span id="approvedBy-label" class="badge"><g:message code="esewaReleaseEvents.approvedBy.label" default="Approved By" /></span>
					
						<span class="property-value" aria-labelledby="approvedBy-label"><g:fieldValue bean="${esewaReleaseEventsInstance}" field="approvedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.createdDate}">
				<li class="list-group-item">
					<span id="createdDate-label" class="badge"><g:message code="esewaReleaseEvents.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate format="MMMM dd, yyyy" date="${esewaReleaseEventsInstance?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.esewaEvents}">
				<li class="list-group-item">
					<span id="esewaEvents-label" class="badge"><g:message code="esewaReleaseEvents.esewaEvents.label" default="Esewa Events" /></span>
					
						<span class="property-value" aria-labelledby="esewaEvents-label"><g:link controller="esewaEvents" action="show" id="${esewaReleaseEventsInstance?.esewaEvents?.id}">${esewaReleaseEventsInstance?.esewaEvents?.eventName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEventsInstance?.esewaRelease}">
				<li class="list-group-item">
					<span id="esewaRelease-label" class="badge"><g:message code="esewaReleaseEvents.esewaRelease.label" default="Esewa Release" /></span>
					
						<span class="property-value" aria-labelledby="esewaRelease-label"><g:link controller="esewaRelease" action="show" id="${esewaReleaseEventsInstance?.esewaRelease?.id}">${esewaReleaseEventsInstance?.esewaRelease?.releaseName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:esewaReleaseEventsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-secondary" action="edit" resource="${esewaReleaseEventsInstance}"><g:message
							code="default.button.edit.label" default="Edit"/></g:link>
					<g:actionSubmit class=" delete-confirmation btn btn-danger" action="delete"
									value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>
					<g:link controller="esewaReleaseEvents" action="index" class="btn btn-success"><g:message code="Back"/></g:link>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
