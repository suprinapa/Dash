<%@ page import="dash.EsewaRelease; dash.EsewaEnvironment" %>

<div class="fieldcontain ${hasErrors(bean: releaseEnvironment, field: 'esewaRelease', 'error')} required">
    <label for="esewaRelease">
        <g:message code="releaseEnvironment.esewaRelease.label" default="Esewa Release" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="esewaRelease" name="esewaRelease.id" from="${EsewaRelease.list()}" optionKey="id" required="" value="${esewaEnvironment?.esewaRelease?.id}" class="one-to-many"/>
</div>
<div class="form-group">
    <label><g:message code="eventName"/></label>
    <g:select name="esewaEnvironment"
              from="${EsewaEnvironment?.values()}"/>
</div>

