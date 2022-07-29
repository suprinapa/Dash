<%@ page import="dash.EsewaRelease" %>
<div class="form-group row ${hasErrors(bean: esewaComponents, field: 'componentName', 'error')} required">
    <label for="componentName" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseVersion.label" default="Component Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="componentName" required="" value="${esewaComponents?.componentName}"/>
    <g:hiddenField name="releaseId" value="${params.id}"/>
</div>



