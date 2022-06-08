<%@ page import="dash.EsewaRelease" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'EsewaRelease')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
	%{--Search Panel --}%
	<div class="btn-group">
%{--		<g:form controller="esewaRelease" action="search" method="GET">--}%
%{--			<div class="input-group" id="search-area">--}%
%{--				<g:select name="colName" class="form-control" from="[releaseName: 'Release Name',releaseVersion_code :'Release Version',releaseStatus : 'ReleaseStatus', createdDate: 'CreatedDate']" value="${params?.colName}" optionKey="key" optionValue="value"/>--}%
%{--				<g:textField name="colValue" class="form-control" value="${params?.colValue}"/>--}%
%{--				<span class="input-group-btn">--}%
%{--					<button class="btn btn-default" type="submit">Search</button>--}%
%{--				</span>--}%
%{--			</div>--}%
%{--		</g:form>--}%
		<g:formRemote name="searchForm" url="[controller: 'esewaRelease', action: 'ajaxSearchEsewaRelease']"
					  update="gridList" style="margin-bottom:5px;">
			<g:textField id="searchField" name="searchText" placeholder="Search by Release task."
						 style="height:30px; width: 300px;"></g:textField>
		</g:formRemote>
	</div>

		<div id="list-esewaRelease" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
		</div>
	<div id="gridList">
		<g:render template="grid"/>
	</div>
	</body>
</html>
