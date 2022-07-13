
<%@ page import="dash.EsewaReleaseEvents" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
</head>
	<body>
	<div class="nav" role="navigation">
		<g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'Esewa Release Events ')}"/>
		<title><g:message code="default.show.label" args="[entityName]"/></title>
		<g:link controller="esewaReleaseEvents" action="create" class="btn btn-success"><g:message code="default.create.label" args="[entityName]"/></g:link>
	</div>
	<br>
	<div class="card">
		<div class="card-header">
			<h4 style=font-family:aria-atomic,ui-serif><g:message code="default.edit.label" args="[entityName ]"/></h4>
		</div>
		<div class="card-body">
				<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list esewaReleaseEvents">
			
				<g:if test="${esewaReleaseEvents?.approvedDate}">
				<li class="list-group-item">
					<span id="approvedDate-label" class="badge"><g:message code="esewaReleaseEvents.approvedDate.label" default="Approved Date" /></span>
					
						<span class="property-value" aria-labelledby="approvedDate-label"><g:formatDate format="MMMM dd, yyyy" date="${esewaReleaseEvents?.approvedDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEvents?.approvedBy}">
				<li class="list-group-item">
					<span id="approvedBy-label" class="badge"><g:message code="esewaReleaseEvents.approvedBy.label" default="Approved By" /></span>
					
						<span class="property-value" aria-labelledby="approvedBy-label"><g:fieldValue bean="${esewaReleaseEvents}" field="approvedBy"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEvents?.createdDate}">
				<li class="list-group-item">
					<span id="createdDate-label" class="badge"><g:message code="esewaReleaseEvents.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate format="MMMM dd, yyyy" date="${esewaReleaseEvents?.createdDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEvents?.esewaEvents}">
				<li class="list-group-item">
					<span id="esewaEvents-label" class="badge"><g:message code="esewaReleaseEvents.esewaEvents.label" default="Esewa Events" /></span>
					
						<span class="property-value" aria-labelledby="esewaEvents-label"><g:link controller="esewaEvents" action="show" id="${esewaReleaseEvents?.esewaEvents?.id}">${esewaReleaseEvents?.esewaEvents?.eventName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseEvents?.esewaRelease}">
				<li class="list-group-item">
					<span id="esewaRelease-label" class="badge"><g:message code="esewaReleaseEvents.esewaRelease.label" default="Esewa Release" /></span>
					
						<span class="property-value" aria-labelledby="esewaRelease-label"><g:link controller="esewaRelease" action="show" id="${esewaReleaseEvents?.esewaRelease?.id}">${esewaReleaseEvents?.esewaRelease?.releaseName?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
		</div>
	</div>
	<br>
			<g:form url="[resource:esewaReleaseEvents, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-secondary" action="edit" resource="${esewaReleaseEvents}"><g:message
							code="default.button.edit.label" default="Edit"/></g:link>
					<g:actionSubmit class="btn btn-danger" action="delete"
									value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>
					<g:link controller="esewaReleaseEvents" action="index" class="btn btn-success"><g:message code="Back"/></g:link>
				</fieldset>
			</g:form>

	</body>
</html>
