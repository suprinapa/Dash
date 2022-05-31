<%@ page import="dash.EsewaRelease; dash.Events" %>

<div class="fieldcontain ${hasErrors(bean: esewaEvents, field: 'esewaRelease', 'error')} required">
    <label for="esewaRelease">
        <g:message code="esewaEvents.esewaRelease.label" default="Esewa Release" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="esewaRelease" name="esewaRelease.id" from="${EsewaRelease.list()}" optionKey="id" required="" value="${esewaEvents?.esewaRelease?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: esewaEvents, field: 'eventName', 'error')} required">
    <label for="eventName">
        <g:message code="esewaEvents.eventName.label" default="Event Name" />
        <span class="required-indicator">*</span>
    </label>
    <g:select name="eventName" from="${Events?.values()}" keys="${Events.values()*.name()}" required="" value="${esewaEvents?.eventName?.name()}" />

</div>
