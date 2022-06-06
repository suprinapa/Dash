<%@ page import="dash.TicketType; dash.TicketPriority; dash.EsewaRelease; dash.ReleaseNotes" %>



<div class="fieldcontain ${hasErrors(bean: releaseNotesInstance, field: 'esewaRelease', 'error')} required">
	<label for="esewaRelease">
		<g:message code="releaseNotes.esewaRelease.label" default="Esewa Release" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="esewaRelease" name="esewaRelease.id" from="${EsewaRelease.list()}" optionKey="id" required="" value="${releaseNotesInstance?.esewaRelease?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: releaseNotesInstance, field: 'ticketPriority', 'error')} required">
	<label for="ticketPriority">
		<g:message code="releaseNotes.ticketPriority.label" default="Ticket Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ticketPriority" from="${TicketPriority?.values()}" keys="${TicketPriority.values()*.name()}" required="" value="${releaseNotesInstance?.ticketPriority?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: releaseNotesInstance, field: 'ticketType', 'error')} required">
	<label for="ticketType">
		<g:message code="releaseNotes.ticketType.label" default="Ticket Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ticketType" from="${TicketType?.values()}" keys="${TicketType.values()*.name()}" required="" value="${releaseNotesInstance?.ticketType?.name()}" />

</div>

