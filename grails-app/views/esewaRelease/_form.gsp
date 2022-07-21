<%@ page import="dash.ReleaseType; dash.EsewaReleaseEvents; dash.EsewaEnvironment; dash.Components; dash.EsewaEvents; dash.ReleaseStatus; dash.ReleaseEnvironment; dash.EsewaComponents; dash.EsewaRelease" %>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseName', 'error')} required">
    <div class="col-sm-12">
        <label for="releaseName" class="badge">
            <g:message code="esewaRelease.releaseName.label" default="Release Name : "/>
            <span class="required-indicator" style="color: red">*</span></label>
        <g:textField name="releaseName" required="" class="form-control" id="releaseName" type="text"
                     placeholder="Enter Release Name" value="${esewaRelease?.releaseName}"/>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseVersion', 'error')} required">
    <div class="col-sm-12">
        <label for="releaseVersion" class="badge">
            <g:message code="esewaRelease.releaseVersion.label" default="Release Version : "/>
            <span class="required-indicator" style="color:red">*</span>
        </label>
        <g:textField name="releaseVersion" required="" class="form-control" id="releaseVersion" type="text"
                     placeholder="Enter Release Version" value="${esewaRelease?.releaseVersion}"/>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'parentRelease', 'error')} ">
    <div class="col-sm-12">
        <label for="parentRelease" class="badge">
            <g:message code="esewaRelease.parentRelease.label" default="Previous Release : "/>
        </label>
        <g:select class="form-control" name="parentRelease" from="${EsewaRelease.list()}"
                  optionKey="id" optionValue="releaseVersion" value="${esewaRelease?.parentRelease}"
                  noSelection="['': '-Choose Previous Release-']"/>
    </div>
</div>
%{--

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'createdDate', 'error')} required">
    <label for="createdDate" class="col-sm-2 col-form-label">
        <g:message code="esewaRelease.createdDate.label" default="Created Date : "/>
        <span class="required-indicator">*</span>
    </label>
    <g:datePicker class= "form-control date-picker" name="createdDate" precision="day" value="${esewaRelease?.createdDate}" years="${2008..2022}"/>
</div>
--}%

<div class="row">
    <div class="col-sm-12">
        <label for="startDate" class="badge">
            <g:message code="esewaRelease.startDate.label" default="Start Date : "/>
        </label>

        <div class="date-wrap">
            <g:datePicker name="startDate" precision="day" value="${esewaRelease?.startDate}" years="${2010..2022}"/>
        </div>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'endDate', 'error')} required">
    <div class="col-sm-12">
        <label for="endDate" class="badge">
            <g:message code="esewaRelease.endDate.label" default="End Date : "/>
            <span class="required-indicator">*</span>
        </label>

        <div class="date-wrap">
            <g:datePicker name="endDate" precision="day" value="${esewaRelease?.endDate}" years="${2010..2022}"/>
        </div>
    </div>
</div>


<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'esewaComponents', 'error')} ">
    <div class="col-sm-12">
        <label for="esewaComponents" class="badge">
            <g:message code="esewaRelease.esewaComponents.label" default="Components : "/>
        </label>
        <g:select class="form-control" name="esewaComponents" from="${EsewaComponents.list()}" optionKey="id"
                  multiple="true"
                  optionValue="componentName" value="${esewaRelease?.esewaComponents}"
                  noSelection="['': '-Choose Component-']"/>
    </div>
</div>


<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseEnvironment', 'error')} ">
    <div class="col-sm-12">
        <label for="releaseEnvironment" class="badge">
            <g:message code="esewaRelease.releaseEnvironment.label" default="Release Environments : "/>
        </label>
        <g:select class="form-control" name="releaseEnvironment" from="${ReleaseEnvironment.list()}" optionKey="id"
                  multiple="true"
                  optionValue="esewaEnvironment" value="${esewaRelease?.releaseEnvironment}"
                  noSelection="['': '-Choose Enviroment-']"/>
    </div>
</div>

<div class="card">
    <div class="card-body">
        <div class="form-group row ${hasErrors(bean: esewaRelease, field: 'esewaReleaseEvents', 'error')} ">
            <div class="col-sm-12">
                <label for="esewaReleaseEvents" class="badge">
                    <g:message code="esewaRelease.esewaReleaseEvents.label" default="Release Events : "/>
                </label>
                <g:select class="form-control" name="esewaReleaseEvents" from="${EsewaEvents.list()}" optionKey="id"
                          optionValue="eventName"
                          multiple="true"
                          value="${eventName}" noSelection="['': '-Choose Events-']"/>
            </div>

            <div class="col-sm-12">
                <label for="ApprovedBy" class="badge">
                    <g:message code="approvedBy" default="Approved By : "/>
                </label>
                <g:textField name="ApprovedBy" required="" class="form-control" id="ApprovedBy" type="text"
                             placeholder="Enter Approved By" value="${ApprovedBy}"/>
            </div>
        </div>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseStatus', 'error')} required">
    <div class="col-sm-12">
        <label for="releaseStatus" class="badge">
            <g:message code="esewaRelease.releaseStatus.label" default="Release Status : "/>
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" name="releaseStatus" from="${ReleaseStatus?.values()}"
                  keys="${ReleaseStatus.values()*.name()}"
                  required="" value="${esewaRelease?.releaseStatus?.name()}" noSelection="['': '-Choose Status-']"/>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'Add releaseNotes', 'error')} required">
    <div class="col-sm-12">
        <label for="releaseNotesDescription" class="badge">
            <g:message code="esewaRelease.releaseNotes.label" default="Release Notes Description: "/>
        </label>
        <g:textArea class="form-control" id="releaseNotesDescription" rows="5" name="releaseNotesDescription"
                    value="${releaseNotes?.releaseNotesDescription}"/>
        %{--    <div class="details-panel">
                <g:include controller="releaseNotes" action="create" id="${esewaRelease?.id}"/>
            </div>--}%
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'Add Checklist', 'error')} required">
    <div class="col-sm-12">
        <label for="releaseCheckListDescription" class="badge">
            <g:message code="esewaRelease.releaseChecklist.label" default="Release CheckList Description: "/>
        </label>
        <g:textArea class="form-control" id="releaseNotesDescription" name="releaseCheckListDescription" rows="5"
                    value="${releaseChecklist?.releaseCheckListDescription}"/>
    </div>
</div>

<div class="form-group row ${hasErrors(bean: esewaRelease, field: 'releaseType', 'error')} required">
    <div class="col-sm-12">
        <label for="releaseType" class="badge">
            <g:message code="esewaRelease.releaseType.label" default="Release Type : "/>
            <span class="required-indicator">*</span>
        </label>
        <g:select class="form-control" name="releaseType" from="${ReleaseType?.values()}"
                  keys="${ReleaseType.values()*.name()}" required=""
                  value="${esewaRelease?.releaseType?.name()}" noSelection="['': '-Choose Type-']"/>
    </div>
</div>

