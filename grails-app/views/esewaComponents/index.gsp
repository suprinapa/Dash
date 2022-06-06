<%@ page import="dash.EsewaComponents" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'esewa.Components', default: 'List-Of')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-esewaComponents" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                      default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-esewaComponents" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="id" title="${message(code: 'id', default: 'ID')}"/>
            <g:sortableColumn property="componentName"
                              title="${message(code: 'componentName', default: 'Component Name')}"/>
			<th>Action</th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${esewaComponentsList}" status="i" var="components">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
            <td>${components.id}</td>
            <td>${components.componentName}</td>
			<td>
            <g:link controller="esewaComponents" action="edit" class="btn btn-secondary" id="${components.id}"><i
					class="fas fa-edit"></i></g:link>
            <g:link controller="esewaComponents" action="delete" id="${components.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"
                                                                     onclick="return confirm('Are you sure?');"></i></g:link>
			</td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${esewaComponentsInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
