%{--<%@ page import="dash.EsewaRelease; dash.ReleaseChecklist" %>
<div class="fieldcontain ${hasErrors(bean: releaseChecklist, field: 'esewaRelease', 'error')} required">
    <label for="esewaRelease">
        <g:message code="releaseChecklist.esewaRelease.label" default="Esewa Release : " />
        <span class="required-indicator">*</span>
    </label>

</div>--}%

<div class="form-group">
    <label> <g:message code="releaseChecklist.description" default="Description : " /> * </label>
    <g:textArea  name="releaseCheckListDescription" class="form-control" rows="5" cols="100" value="${releaseChecklist?.releaseCheckListDescription}" />
    <g:hiddenField name="releaseId" value="${params.id}"/>
</div>