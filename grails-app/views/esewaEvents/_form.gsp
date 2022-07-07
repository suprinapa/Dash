<%@ page import="dash.EsewaRelease; dash.Events" %>

<div class="form-group ${hasErrors(bean: esewaEvents, field: 'eventName', 'error')} required">
    <label for="eventName" class="col-sm-2 col-form-label">
        <g:message code="esewaEvents.eventName.label" default="Event Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="eventName" from="${Events?.values()}" keys="${Events.values()*.name()}" required="" value="${esewaEvents?.eventName?.name()}" />

</div>
