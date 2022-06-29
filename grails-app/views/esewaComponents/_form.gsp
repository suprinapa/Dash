<%@ page import="dash.EsewaRelease; dash.Components; dash.EsewaComponents" %>
<div class="fieldcontain ${hasErrors(bean: esewaComponents, field: 'esewaRelease', 'error')} required">
    <label for="esewaRelease">
        <g:message code="esewaComponents.esewaRelease.label" default="Esewa Release" />
        <span class="required-indicator">*</span>
    </label>
    <g:select id="esewaRelease" name="esewaRelease" from="${EsewaRelease.list()}" optionKey="id" required="" value="${componentName?.esewaRelease?.id}"/>
</div>
<div>
    <label for="componentName">
        <g:message code="componentName" default="Component Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="componentName" from="${Components?.values()}"
              keys="${Components.values()*.name()}"/>

</div>


