%{--Include Main Layout--}%
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
</head>
<body>
<div class="card">
    <div class="card-header">
        <h4 ><g:message code="default.create.label" args="['Environment']"/></h4>
%{--        <g:if test="${flash.message}">--}%
%{--            <div class="message" role="status">${flash.message}</div>--}%
%{--        </g:if>--}%
    </div>

    <div class="card-body">

        <g:form controller="releaseEnvironment" action="saveData">
            <fieldset class="form">
                <g:render template="form"/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="btn btn-success createConfirm"
                                value="${message(code: 'default.button.create.label', default: 'Create')}"/>
                <g:link controller="releaseEnvironment" action="index" class="btn btn-secondary"><g:message
                        code="cancel"/></g:link>
            </fieldset>
        </g:form>
    </div>
</div>
</body>
</html>

