<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark ">
    <tr>
        <g:sortableColumn property="description" title="${message(code: 'releaseChecklist.description.label', default: 'Description')}" />
        %{--
            <g:sortableColumn property="remarks" title="${message(code: 'releaseChecklist.remarks.label', default: 'Remarks')}" />

            <g:sortableColumn property="ticketNumber" title="${message(code: 'releaseChecklist.ticketNumber.label', default: 'Ticket Number')}" />

            <th><g:message code="releaseChecklist.esewaRelease.label" default="Esewa Release" /></th>

            <g:sortableColumn property="type" title="${message(code: 'releaseChecklist.type.label', default: 'Type')}" />
        --}%
    </tr>
    </thead>
    <tbody>
    <g:each in="${releaseChecklistList}" status="i" var="releaseChecklist">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${releaseChecklist.id}">${fieldValue(bean: releaseChecklist, field: "releaseCheckListDescription")}</g:link></td>
           </tr>
    </g:each>
    </tbody>
</table>
</div>
%{--<div class="pagination__custom">
    <util:remotePaginate  action="search" total="${releaseNotesCount}"
                          update="gridList"
                          params="${params}"/>
</div>--}%

