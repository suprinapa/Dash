<%--
  Created by IntelliJ IDEA.
  User: supri
  Date: 5/5/2022
  Time: 11:19 AM
--%>

%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="default.button.update.label" args="['EsewaRelease']"/>
    </div>
    <div class="card-body">
        <g:form controller="esewaRelease" action="update">
            <g:hiddenField name="id" value="${esewaRelease.id}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="update" value="${g.message(code: "default.button.update.label")}"/>
                <g:link controller="esewaRelease" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>