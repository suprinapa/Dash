<%@ page import="dash.EsewaReleaseEvents" %>



<div class="fieldcontain ${hasErrors(bean: esewaReleaseEventsInstance, field: 'approvedDate', 'error')} required">
	<label for="approvedDate">
		<g:message code="esewaReleaseEvents.approvedDate.label" default="Approved Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="approvedDate" precision="day"  value="${esewaReleaseEventsInstance?.approvedDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: esewaReleaseEventsInstance, field: 'approvedBy', 'error')} required">
	<label for="approvedBy">
		<g:message code="esewaReleaseEvents.approvedBy.label" default="Approved By" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="approvedBy" required="" value="${esewaReleaseEventsInstance?.approvedBy}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: esewaReleaseEventsInstance, field: 'createdDate', 'error')} required">
	<label for="createdDate">
		<g:message code="esewaReleaseEvents.createdDate.label" default="Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createdDate" precision="day"  value="${esewaReleaseEventsInstance?.createdDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: esewaReleaseEventsInstance, field: 'esewaEvents', 'error')} required">
	<label for="esewaEvents">
		<g:message code="esewaReleaseEvents.esewaEvents.label" default="Esewa Events" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="esewaEvents" name="esewaEvents.id" from="${dash.EsewaEvents.list()}" optionKey="id" required="" value="${esewaReleaseEventsInstance?.esewaEvents?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: esewaReleaseEventsInstance, field: 'esewaRelease', 'error')} required">
	<label for="esewaRelease">
		<g:message code="esewaReleaseEvents.esewaRelease.label" default="Esewa Release" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="esewaRelease" name="esewaRelease.id" from="${dash.EsewaRelease.list()}" optionKey="id" required="" value="${esewaReleaseEventsInstance?.esewaRelease?.id}" class="many-to-one"/>

</div>

