
<%@ page import="dash.EsewaReleaseEvents" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-esewaReleaseEvents" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-esewaReleaseEvents" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="approvedDate" title="${message(code: 'esewaReleaseEvents.approvedDate.label', default: 'Approved Date')}" />
					
						<g:sortableColumn property="approvedBy" title="${message(code: 'esewaReleaseEvents.approvedBy.label', default: 'Approved By')}" />
					
						<g:sortableColumn property="createdDate" title="${message(code: 'esewaReleaseEvents.createdDate.label', default: 'Created Date')}" />
					
						<th><g:message code="esewaReleaseEvents.esewaEvents.label" default="Esewa Events" /></th>
					
						<th><g:message code="esewaReleaseEvents.esewaRelease.label" default="Esewa Release" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${esewaReleaseEventsInstanceList}" status="i" var="esewaReleaseEventsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${esewaReleaseEventsInstance.id}">${fieldValue(bean: esewaReleaseEventsInstance, field: "approvedDate")}</g:link></td>
					
						<td>${fieldValue(bean: esewaReleaseEventsInstance, field: "approvedBy")}</td>
					
						<td><g:formatDate date="${esewaReleaseEventsInstance.createdDate}" /></td>
					
						<td>${fieldValue(bean: esewaReleaseEventsInstance, field: "esewaEvents")}</td>
					
						<td>${fieldValue(bean: esewaReleaseEventsInstance, field: "esewaRelease")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${esewaReleaseEventsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
