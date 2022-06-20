<%@ page import="dash.EsewaEnvironment" %>

<div class="form-group">
    <label><g:message code="eventName"/></label>
    <g:select name="esewaEnvironment"
              from="${EsewaEnvironment?.values()}"/>
</div>

