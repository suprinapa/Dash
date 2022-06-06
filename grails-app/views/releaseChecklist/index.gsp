
<%@ page import="dash.ReleaseChecklist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'releaseChecklist.label', default: 'ReleaseChecklist')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-releaseChecklist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-releaseChecklist" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'releaseChecklist.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="remarks" title="${message(code: 'releaseChecklist.remarks.label', default: 'Remarks')}" />
					
						<g:sortableColumn property="ticketNumber" title="${message(code: 'releaseChecklist.ticketNumber.label', default: 'Ticket Number')}" />
					
						<th><g:message code="releaseChecklist.esewaRelease.label" default="Esewa Release" /></th>
					
						<g:sortableColumn property="type" title="${message(code: 'releaseChecklist.type.label', default: 'Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${releaseChecklistInstanceList}" status="i" var="releaseChecklistInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${releaseChecklistInstance.id}">${fieldValue(bean: releaseChecklistInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: releaseChecklistInstance, field: "remarks")}</td>
					
						<td>${fieldValue(bean: releaseChecklistInstance, field: "ticketNumber")}</td>
					
						<td>${fieldValue(bean: releaseChecklistInstance, field: "esewaRelease")}</td>
					
						<td>${fieldValue(bean: releaseChecklistInstance, field: "type")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${releaseChecklistInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
