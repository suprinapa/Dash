<!DOCTYPE html>
<html>
<head>
		<meta name="layout" content="main">
</head>
<body>
<div class="card">
    <div class="card-header">
       	<h4><g:message code="default.create.label" args="['Components']"/></h4>
%{--        <g:if test="${flash.message}">--}%
%{--            <div class="message" role="status">${flash.message}</div>--}%
%{--        </g:if>--}%
    </div>


    <div class="card-body">

        <g:form controller="esewaComponents" action="saveData">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create"  class="btn btn-success"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                <g:link controller="esewaComponents" action="index" class="btn btn-secondary"><g:message
                        code="cancel"/></g:link>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>
