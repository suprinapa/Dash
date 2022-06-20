<%@ page import="dash.Components; dash.EsewaComponents" %>

<div>
    <label for="componentName">
        <g:message code="componentName" default="Component Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="componentName" from="${Components?.values()}"
              keys="${Components.values()*.name()}"/>

</div>


