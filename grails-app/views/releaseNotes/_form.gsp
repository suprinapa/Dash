%{--<%@ page import="dash.TicketType; dash.TicketPriority; dash.EsewaRelease; dash.ReleaseNotes" %>--}%
%{--<div class="fieldcontain ${hasErrors(bean: releaseNotes, field: 'esewaRelease', 'error')} required">--}%
%{--	<label for="esewaRelease">--}%
%{--		<g:message code="releaseNotes.esewaRelease.label" default="Esewa Release : " />--}%
%{--		<span class="required-indicator">*</span>--}%
%{--	</label>--}%
%{--	<g:select id="esewaRelease" name="esewaRelease.id" from="${EsewaRelease.list()}" optionKey="id" optionValue="releaseVersion" value="${releaseNotes?.esewaRelease?.id}"/>--}%

%{--</div>--}%
<div class="form-group">
	<label> <g:message code="releaseNotes.description" default="Description : " /> * </label>
	<g:textArea  name="releaseNotesDescription" class="form-control" rows="5" cols="100" value="${releaseNotes?.releaseNotesDescription}" />
	<g:hiddenField name="releaseId" value="${params.id}"/>
</div>
%{--
<div class="fieldcontain ${hasErrors(bean: releaseNotesDetails, field: 'ticketPriority', 'error')} required">
	<label for="ticketPriority">
		<g:message code="releaseNotes.ticketPriority.label" default="Ticket Priority" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ticketPriority" from="${TicketPriority?.values()}" keys="${TicketPriority.values()*.name()}" required="" value="${releaseNotesDetails?.ticketPriority?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: releaseNotesDetails, field: 'ticketType', 'error')} required">
	<label for="ticketType">
		<g:message code="releaseNotes.ticketType.label" default="Ticket Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ticketType" from="${TicketType?.values()}" keys="${TicketType.values()*.name()}" required="" value="${releaseNotesDetails?.ticketType?.name()}" />

</div>--}%

%{--<div class="form-group">
    <div class="form-inline phone-number-area">--}%
%{--        <div class="form-group mx-sm-3">
            <label for="esewaRelease">
                <g:message code="releaseNotes.esewaRelease.label" default="Release Version"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select id="esewaRelease" name="esewaRelease.id" from="${EsewaRelease.list()}" optionKey="id"
                      optionValue="releaseVersion" value="${releaseNotesDetails?.esewaRelease?.id}"/>
        </div>--}%

%{--
    </div>--}rel

%{--        <div class="form-group mx-sm-3">
            <label for="ticketPriority" class="col-sm-2 col-form-label"
                <g:message code="releaseNotes.ticketPriority.label" default="Ticket Priority"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select name="ticketPriority"
                      from="${TicketPriority?.values()}" keys="${TicketPriority.values()*.name()}"
                      value="${releaseNotesDetails?.ticketPriority?.name()}"/>
        </div>

        <div class="form-group mx-sm-3" class="col-sm-2 col-form-label">
            <label for="ticketType">
                <g:message code="releaseNotes.ticketType.label" default="Ticket Type"/>
                <span class="required-indicator">*</span>
            </label>
            <g:select name="ticketType" from="${TicketType?.values()}" keys="${TicketType.values()*.name()}"
                      value="${releaseNotesDetails?.ticketType?.name()}"/>
        </div>--}%
%{--        <g:if test="${releaseNotesDetails}">
            <button type="button" data-id="${releaseNotesDetails?.id}" class="btn btn-danger remove-number"><i
                    class="fas fa-trash"></i></button>
        </g:if>--}%
%{--        <g:else>--}%
%{--            <button type="button" class="add-new-list btn btn-primary "><i class="fas fa-plus-circle"></i></button>--}%
%{--        </g:else>--}%

