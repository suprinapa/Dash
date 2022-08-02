<%@ page import="dash.EsewaComponents; dash.EsewaRelease" %>
%{--<div class="form-group row ${hasErrors(bean: esewaComponents, field: 'componentName', 'error')} required">--}%
%{--    <label for="componentName" class="col-sm-2 col-form-label">--}%
%{--        <g:message code="esewaRelease.releaseVersion.label" default="Component Name"/>--}%
%{--        <span class="required-indicator">*</span>--}%
%{--    </label>--}%
%{--    <g:textField name="componentName" required="" value="${esewaComponents?.componentName}"/>--}%
%{--    <g:hiddenField name="releaseId" value="${params.id}"/>--}%
%{--</div>--}%


<div class="form-group row ${hasErrors(bean: esewaComponents, field: 'componentName', 'error')} required">
    <label for="esewaComponents" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseVersion.label" default="Component Name: "/>
        <span class="required-indicator">*</span>
    </label>
    <g:select class="form-control" name="esewaComponents" from="${EsewaComponents.list()}" optionKey="id"
              multiple="true"
              optionValue="componentName" value="${esewaComponents?.componentName}"
              noSelection="['': '-Choose Component-']"/>

    <g:hiddenField name="releaseId" value="${params.id}"/>
</div>




