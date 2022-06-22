<%@ page import="dash.EsewaEnvironment; dash.Components; dash.ReleaseName; dash.EsewaEvents; dash.ReleaseStatus; dash.ReleaseEnvironment; dash.EsewaComponents; dash.EsewaRelease" %>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseName', 'error')} required">
	<label for="releaseName" class="col-sm-2 col-form-label" >
		<g:message code="esewaRelease.releaseStatus.label" default="Release Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="releaseName" from="${ReleaseName?.values()}" keys="${ReleaseName.values()*.name()}" required="" value="${esewaReleaseInstance?.releaseName?.name()}" />

</div>
<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseVersion', 'error')} required">
	<label for="releaseVersion"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.releaseVersion.label" default="Release Versioncode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="releaseVersion" required="" value="${esewaReleaseInstance?.releaseVersion}"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'parentRelease', 'error')} ">
	<label for="parentRelease"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.parentRelease.label" default="Previous Release" />

	</label>
	<g:select id="parentRelease" name="parentRelease.id" from="${EsewaRelease.list().releaseVersion}" value="${esewaReleaseInstance?.parentRelease?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${esewaReleaseInstance?.createdDate}" years="${2008..2022}"  />

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'startDate', 'error')} required">
	<label for="startDate"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${esewaReleaseInstance?.startDate}"  years="${2008..2022}"  />

</div>


%{--<div class="form-group row">
	<label for="componentName"  class="col-sm-2 col-form-label">
		<g:message code="componentName" default="Component Name"/>
		<span class="required-indicator">*</span>
	</label>
	<g:select name="componentName" from="${Components}" value="${esewaReleaseInstance?.esewaComponents}"/>
</div>--}%
<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'esewaComponents', 'error')} ">
	<label for="esewaComponents"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.esewaComponents.label" default="Esewa Components" />
	</label>
	<g:select name="esewaComponents" from="${EsewaComponents.list()}" value="esewaComponents"/>

</div>


<div class="form-group row">
	<label for="releaseEnvironment"  class="col-sm-2 col-form-label">
		<g:message code="release.Environment"/></label>
	<g:select name="esewaEnvironment"
			  from="${EsewaEnvironment?.values()}"/>
</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseStatus', 'error')} required">
	<label for="releaseStatus" class="col-sm-2 col-form-label" >
		<g:message code="esewaRelease.releaseStatus.label" default="Release Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="releaseStatus" from="${ReleaseStatus?.values()}" keys="${ReleaseStatus.values()*.name()}"
			  required="" value="${esewaReleaseInstance?.releaseStatus?.name()}" />

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'endDate', 'error')} required">
	<label for="endDate"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${esewaReleaseInstance?.endDate}"  years="${2008..2022}" />

</div>

