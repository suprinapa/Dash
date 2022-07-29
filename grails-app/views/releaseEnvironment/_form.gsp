<%@ page import="dash.EsewaRelease; dash.ReleaseEnvironment" %>

<div class="form-group ${hasErrors(bean: releaseEnvironment, field: 'esewaEnvironment', 'error')} required">
    <label for="esewaEnvironment" class="col-sm-2 col-form-label">
        <g:message code="releaseEnvironment.esewaEnvironment.label" default="Environment" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="esewaEnvironment" required="" value="${releaseEnvironment?.esewaEnvironment}"/>
    <g:hiddenField name="releaseId" value="${params.id}"/>

</div>
%{--<div class="form-group">
    <label><g:message code="eventName"/></label>
    <g:select name="esewaEnvironment"
              from="${EsewaEnvironment?.values()}"/>
</div>--}%

