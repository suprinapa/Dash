<%@ page import="dash.Events" %>

<div class="form-group">
    <label><g:message code="id"/></label>
    <g:textField name="id" class="form-control" value="${esweaEvents?.id}" placeholder="Please Enter the Release ID"/>
</div>

%{--<div class="form-group">
    <label><g:message code="esewa_release_id"/></label>
    <g:textField name="esewa_release_id" class="form-control" value="${esweaEvents?.esewa_release_id}" placeholder="Please Enter the Release ID"/>
</div>--}%

<div class="form-group">
    <label><g:message code="eventName"/></label>
    <g:select name="eventName"
              from="${Events?.values()}"/>
</div>


