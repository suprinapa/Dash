%{--<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="releaseChecklist.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea  name="description" rows="5" cols="100" value="${releaseChecklistInstance?.releaseCheckListDescription}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'remarks', 'error')} required">
	<label for="remarks">
		<g:message code="releaseChecklist.remarks.label" default="Remarks" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="remarks" required="" value="${releaseChecklistInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'ticketNumber', 'error')} required">
	<label for="ticketNumber">
		<g:message code="releaseChecklist.ticketNumber.label" default="Ticket Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ticketNumber" required="" value="${releaseChecklistInstance?.ticketNumber}"/>

</div>--}%

<%@ page import="dash.EsewaRelease; dash.ReleaseChecklist" %>
<div class="fieldcontain ${hasErrors(bean: releaseChecklist, field: 'esewaRelease', 'error')} required">
	<label for="esewaRelease">
		<g:message code="releaseChecklist.esewaRelease.label" default="Esewa Release : " />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="esewaRelease" name="esewaRelease.id" from="${EsewaRelease.list()}" optionValue="releaseVersion" optionKey="id"
			  value="${releaseChecklist?.esewaRelease?.id}" noSelection="['':'-Choose Release Version-']"/>
</div>

<div class="form-group">
	<label> <g:message code="releaseChecklist.description" default="Description : " /> * </label>
	<g:textArea  name="releaseCheckListDescription" class="form-control" rows="5" cols="100" value="${releaseChecklist?.releaseCheckListDescription}" />
</div>
%{--<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="releaseChecklist.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${releaseChecklistInstance?.type}"/>

</div>--}%



