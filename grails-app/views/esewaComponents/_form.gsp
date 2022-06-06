<%@ page import="dash.Components; dash.EsewaComponents" %>

<div class="form-group">
    <label><g:message code="id"/></label>
    <g:textField name="id" class="form-control" value="${esewaComponents?.id}"
                 placeholder="Please Enter the Release ID"/>
</div>

<div>
    <label for="componentName">
        <g:message code="componentName" default="Component Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="componentName" from="${Components?.values()}"
              keys="${Components.values()*.name()}"/>

</div>


