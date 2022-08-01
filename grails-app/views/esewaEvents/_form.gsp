<%@ page import="dash.EsewaRelease; dash.Events" %>

<div class="form-group row ${hasErrors(bean: esewaEvents, field: 'eventName', 'error')} required">
    <label for="eventName" class="col-sm-2 col-form-label">
        <g:message code="esewaEvents.eventName.label" default="Event Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="eventName" required="" value="${esewaEvents?.eventName}"/>
    <g:hiddenField name="releaseId" value="${params.id}"/>
</div>

<div class="form-group ${hasErrors(bean: esewaEvents, field: 'approvedBy', 'error')} required">
    <label for="approvedBy" class="col-sm-2 col-form-label">
        <g:message code="esewaReleaseEvents.approvedBy.label" default="Approved By" />
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="approvedBy" required="" value="${esewaReleaseEvents?.approvedBy}"/>
</div>

