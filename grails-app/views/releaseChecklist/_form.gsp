<%@ page import="dash.ReleaseChecklist" %>



<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="releaseChecklist.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${releaseChecklistInstance?.description}"/>

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

</div>

<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'esewaRelease', 'error')} required">
	<label for="esewaRelease">
		<g:message code="releaseChecklist.esewaRelease.label" default="Esewa Release" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="esewaRelease" name="esewaRelease.id" from="${dash.EsewaRelease.list()}" optionKey="id" required="" value="${releaseChecklistInstance?.esewaRelease?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: releaseChecklistInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="releaseChecklist.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="type" required="" value="${releaseChecklistInstance?.type}"/>

</div>

