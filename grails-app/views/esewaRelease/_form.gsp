<%@ page import="dash.ReleaseStatus; dash.ReleaseEnvironment; dash.EsewaComponents; dash.EsewaRelease" %>


<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseName', 'error')} required">
	<label for="releaseName"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.releaseName.label" class="form-label" default="Release Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="releaseName" required="" value="${esewaReleaseInstance?.releaseName}"/>

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
		<g:message code="esewaRelease.parentRelease.label" default="Parent Release" />
		
	</label>
	<g:select id="parentRelease" name="parentRelease.id" from="${EsewaRelease.list()}" optionKey="id" value="${esewaReleaseInstance?.parentRelease?.id}" class="many-to-one" noSelection="['null': '']"/>

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

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'endDate', 'error')} required">
	<label for="endDate"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${esewaReleaseInstance?.endDate}"  years="${2008..2022}" />

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'esewaComponents', 'error')} ">
	<label for="esewaComponents"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.esewaComponents.label" default="Esewa Components" />
		
	</label>
	<g:select name="esewaComponents" from="${EsewaComponents.list()}" multiple="multiple" optionKey="id" size="2" value="${esewaReleaseInstance?.releaseName?.esewaComponents*.id}" class="many-to-many"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'esewaReleaseEvents', 'error')} ">
	<label for="esewaReleaseEvents"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.esewaReleaseEvents.label" default="Esewa Release Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${esewaReleaseInstance?.esewaReleaseEvents?}" var="e">
    <li><g:link controller="esewaReleaseEvents" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="esewaReleaseEvents" action="create" params="['esewaRelease.id': esewaReleaseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'esewaReleaseEvents.label', default: 'EsewaReleaseEvents')])}</g:link>
</li>
</ul>


</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseChecklist', 'error')} ">
	<label for="releaseChecklist"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.releaseChecklist.label" default="Release Checklist" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${esewaReleaseInstance?.releaseChecklist?}" var="r">
    <li><g:link controller="releaseChecklist" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="releaseChecklist" action="create" params="['esewaRelease.id': esewaReleaseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'releaseChecklist.label', default: 'ReleaseChecklist')])}</g:link>
</li>
</ul>


</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseEnvironment', 'error')} ">
	<label for="releaseEnvironment"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.releaseEnvironment.label" default="Release Environment" />
		
	</label>
	<g:select name="releaseEnvironment" from="${ReleaseEnvironment.list()}" multiple="multiple" optionKey="id" size="5" value="${esewaReleaseInstance?.releaseEnvironment?.esewaEnvironment*.id}" class="many-to-many"/>

</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseNotes', 'error')} ">
	<label for="releaseNotes"  class="col-sm-2 col-form-label">
		<g:message code="esewaRelease.releaseNotes.label" default="Release Notes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${esewaReleaseInstance?.releaseNotes?}" var="r">
    <li><g:link controller="releaseNotes" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="releaseNotes" action="create" params="['esewaRelease.id': esewaReleaseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'releaseNotes.label', default: 'ReleaseNotes')])}</g:link>
</li>
</ul>


</div>

<div class="form-group row ${hasErrors(bean: esewaReleaseInstance, field: 'releaseStatus', 'error')} required">
	<label for="releaseStatus" class="col-sm-2 col-form-label" >
		<g:message code="esewaRelease.releaseStatus.label" default="Release Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="releaseStatus" from="${ReleaseStatus?.values()}" keys="${ReleaseStatus.values()*.name()}" required="" value="${esewaReleaseInstance?.releaseStatus?.name()}" />

</div>


