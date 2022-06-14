<%@ page import="dash.EsewaRelease" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'EsewaRelease')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-esewaRelease" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-esewaRelease" class="content scaffold-show" role="main">
			<h1>{esewaReleaseInstance?.releaseName}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list esewaRelease">
			
				%{--<g:if test="${esewaReleaseInstance?.releaseName}">
				<li class="fieldcontain">
					<span id="releaseName-label" class="property-label"><g:message code="esewaRelease.releaseName.label" default="Release Name" /></span>
					
						<span class="property-value" aria-labelledby="releaseName-label"><g:fieldValue bean="${esewaReleaseInstance}" field="releaseName"/></span>
					
				</li>
				</g:if>--}%
			
				<g:if test="${esewaReleaseInstance?.releaseVersion}">
				<li class="fieldcontain">
					<span id="releaseVersion-label" class="property-label"><g:message code="esewaRelease.releaseVersion.label" default="Release Version" /></span>
					
						<span class="property-value" aria-labelledby="releaseVersion-label"><g:fieldValue bean="${esewaReleaseInstance}" field="releaseVersion"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.parentRelease}">
				<li class="fieldcontain">
					<span id="parentRelease-label" class="property-label"><g:message code="esewaRelease.parentRelease.label" default="Parent Release" /></span>
					
						<span class="property-value" aria-labelledby="parentRelease-label"><g:link controller="esewaRelease" action="show" id="${esewaReleaseInstance?.parentRelease?.id}">${esewaReleaseInstance?.parentRelease?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.createdDate}">
				<li class="fieldcontain">
					<span id="createdDate-label" class="property-label"><g:message code="esewaRelease.createdDate.label" default="Created Date" /></span>
					
						<span class="property-value" aria-labelledby="createdDate-label"><g:formatDate  format="MMMM dd, yyyy" date="${esewaReleaseInstance?.createdDate}" /></span>
					
				</li>
				</g:if>

				<g:if test="${esewaReleaseInstance?.startDate}">
					<li class="fieldcontain">
						<span id="startDate-label" class="property-label"><g:message code="esewaRelease.startDate.label" default="Start Date" /></span>

						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate  format="MMMM dd, yyyy" date="${esewaReleaseInstance?.startDate}" /></span>

					</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="esewaRelease.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate  format="MMMM dd, yyyy" date="${esewaReleaseInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.esewaComponents}">
				<li class="fieldcontain">
					<span id="esewaComponents-label" class="property-label"><g:message code="esewaRelease.esewaComponents.label" default="Esewa Components" /></span>
					
						<g:each in="${esewaReleaseInstance.esewaComponents}" var="e">
						<span class="property-value" aria-labelledby="esewaComponents-label"><g:link controller="esewaComponents" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.esewaReleaseEvents}">
				<li class="fieldcontain">
					<span id="esewaReleaseEvents-label" class="property-label"><g:message code="esewaRelease.esewaReleaseEvents.label" default="Esewa Release Events" /></span>
					
						<g:each in="${esewaReleaseInstance.esewaReleaseEvents}" var="e">
						<span class="property-value" aria-labelledby="esewaReleaseEvents-label"><g:link controller="esewaReleaseEvents" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.releaseChecklist}">
				<li class="fieldcontain">
					<span id="releaseChecklist-label" class="property-label"><g:message code="esewaRelease.releaseChecklist.label" default="Release Checklist" /></span>
					
						<g:each in="${esewaReleaseInstance.releaseChecklist}" var="r">
						<span class="property-value" aria-labelledby="releaseChecklist-label"><g:link controller="releaseChecklist" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.releaseEnvironment}">
				<li class="fieldcontain">
					<span id="releaseEnvironment-label" class="property-label"><g:message code="esewaRelease.releaseEnvironment.label" default="Release Environment" /></span>
					
						<g:each in="${esewaReleaseInstance.releaseEnvironment}" var="r">
						<span class="property-value" aria-labelledby="releaseEnvironment-label"><g:link controller="releaseEnvironment" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.releaseNotes}">
				<li class="fieldcontain">
					<span id="releaseNotes-label" class="property-label"><g:message code="esewaRelease.releaseNotes.label" default="Release Notes" /></span>
					
						<g:each in="${esewaReleaseInstance.releaseNotes}" var="r">
						<span class="property-value" aria-labelledby="releaseNotes-label"><g:link controller="releaseNotes" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${esewaReleaseInstance?.releaseStatus}">
				<li class="fieldcontain">
					<span id="releaseStatus-label" class="property-label"><g:message code="esewaRelease.releaseStatus.label" default="Release Status" /></span>
					
						<span class="property-value" aria-labelledby="releaseStatus-label"><g:fieldValue bean="${esewaReleaseInstance}" field="releaseStatus"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:esewaReleaseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${esewaReleaseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
