<%@ page import="dash.ReleaseStatus" %>
<div class="form-group">
    <label><g:message code="releaseName"/></label>
    <g:textField name="releaseName" class="form-control" value="${esewaRelease?.releaseName}" placeholder="Please Enter the Release Name"/>
</div>

<div class="form-group">
    <label><g:message code="releaseVersion_code"/></label>
    <g:textField name="releaseVersion_code" class="form-control" value="${esewaRelease?.releaseVersion_code}" placeholder="Please Enter the Release Version"/>
</div>

<div class="form-group">
    <label><g:message code="releaseStatus"/></label>
    <g:select name="releaseStatus"
              from="${ReleaseStatus?.values()}"
              keys="${ReleaseStatus?.values()*.name()}" required=""/>
</div>

<div class="form-group">
    <label><g:message code="parentRelease"/></label>
    <g:textField name="parentRelease" class="form-control" value="${esewaRelease?.parentRelease}" placeholder="Please Enter the Previous Version"/>
</div>

<div class="form-group">
    <label><g:message code="createdDate"/></label>
    <g:datePicker name="createdDate" class="form-control" required="true" value="${esewaRelease?.createdDate}"/>
</div>

<div class="form-group">
    <label><g:message code="startDate"/></label>
    <g:datePicker name="startDate" class="form-control" required="true" value="${esewaRelease?.startDate}"/>
</div>

<div class="form-group">
    <label><g:message code="endDate"/></label>
    <g:datePicker name="endDate" class="form-control" required="true" value="${esewaRelease?.endDate}"/>
</div>




