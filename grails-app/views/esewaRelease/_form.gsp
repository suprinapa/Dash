<%@ page import="dash.ReleaseType; dash.EsewaReleaseEvents; dash.EsewaEnvironment; dash.Components; dash.EsewaEvents; dash.ReleaseStatus; dash.ReleaseEnvironment; dash.EsewaComponents; dash.EsewaRelease" %>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseName', 'error')} required">
    <label for="releaseName" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseName.label" default="Release Name : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="releaseName" required="" value="${esewaRelease?.releaseName}"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseVersion', 'error')} required">
    <label for="releaseVersion" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseVersion.label" default="Release Version : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="releaseVersion" required="" value="${esewaRelease?.releaseVersion}"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'parentRelease', 'error')} ">
    <label for="parentRelease" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.parentRelease.label" default="Previous Release : "/>

    </label>
    <g:select name="parentRelease" from="${EsewaRelease.list()}"
              optionKey="id" optionValue="releaseVersion" value="${esewaRelease?.parentRelease}"
              noSelection="['': '-Choose Previous Release-']"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'createdDate', 'error')} required">
    <label for="createdDate" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.createdDate.label" default="Created Date : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="createdDate" precision="day" value="${esewaRelease?.createdDate}" years="${2008..2022}"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'startDate', 'error')} required">
    <label for="startDate" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.startDate.label" default="Start Date : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="startDate" precision="day" value="${esewaRelease?.startDate}" years="${2008..2022}"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'esewaComponents', 'error')} ">
    <label for="esewaComponents" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.esewaComponents.label" default="Components : "/>
    </label>
    <g:select name="esewaComponents" from="${EsewaComponents.list()}" optionKey="id" multiple="true"
              optionValue="componentName" value="${esewaRelease?.esewaComponents}"
              noSelection="['': '-Choose Component-']"/>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseEnvironment', 'error')} ">
    <label for="releaseEnvironment" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseEnvironment.label" default="Release Environments : "/>
    </label>
    <g:select name="releaseEnvironment" from="${ReleaseEnvironment.list()}" optionKey="id" multiple="true"
              optionValue="esewaEnvironment" value="${esewaRelease?.releaseEnvironment}"
              noSelection="['': '-Choose Enviroment-']"/>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'esewaReleaseEvents', 'error')} ">
    <label for="esewaReleaseEvents" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.esewaReleaseEvents.label" default="Release Events : "/>
    </label>
  %{--  	<g:set var="listOfEsewaReleaseEventsRelease" value="${EsewaReleaseEvents.list()}" />--}%
    <g:select name="esewaReleaseEvents" from="${EsewaReleaseEvents.list()}" optionKey="id" optionValue="esewaEvents"
              multiple="true"
              value="${esewaRelease?.esewaReleaseEvents}" noSelection="['': '-Choose Events-']"/>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseStatus', 'error')} required">
    <label for="releaseStatus" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseStatus.label" default="Release Status : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="releaseStatus" from="${ReleaseStatus?.values()}" keys="${ReleaseStatus.values()*.name()}"
              required="" value="${esewaRelease?.releaseStatus?.name()}"/>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'Add releaseNotes', 'error')} required">
<label for="Add Release Notes" class="col-sm-2 col-form-label">
    <g:message code="esewaRelease.releaseNotes.label" default="Release Notes : "/>
</label>
    <div class="fieldcontain ${hasErrors(bean: releaseNotes, field: 'releaseNotesDescription', 'error')} required">
        <label for="description" class="col-sm-2 col-form-label">
            <g:message code="releaseNotes.description.label" default="Description : " />
            <span class="required-indicator">*</span>
        </label>
        <g:textArea name="releaseNotesDescription" rows="5" cols="100" value="${releaseNotes?.releaseNotesDescription}"/>
    </div>
%{--    <div class="details-panel">
        <g:include controller="releaseNotes" action="create" id="${esewaRelease?.id}"/>
    </div>--}%
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'Add Checklist', 'error')} required">
    <label for="Add Release Checklist" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseCheckList.label" default="Release CheckList : "/>
    </label>
    <div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'description', 'error')} required">
        <label for="description" class="col-sm-2 col-form-label">
            <g:message code="releaseChecklist.description.label" default="Description : " />
            <span class="required-indicator">*</span>
        </label>
        <g:textArea  name="releaseCheckListDescription" rows="5" cols="100" value="${releaseChecklistInstance?.releaseCheckListDescription}"/>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'endDate', 'error')} required">
    <label for="endDate" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.endDate.label" default="End Date : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker name="endDate" precision="day" value="${esewaRelease?.endDate}" years="${2010..2022}"/>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseType', 'error')} required">
    <label for="releaseType" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.releaseType.label" default="Release Type : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:select name="releaseType" from="${ReleaseType?.values()}" keys="${ReleaseType.values()*.name()}" required=""
              value="${esewaRelease?.releaseType?.name()}"/>
</div>

