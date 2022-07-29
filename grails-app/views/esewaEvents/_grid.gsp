<div class="card-body">
    <table class="table table-bordered ">
        <thead class="thead-dark">
        <tr>
            <g:sortableColumn style="color: white" property="eventName" action="index"  title="${message(code: 'esewaEvents.eventName.label', default: 'Event Name')}" />
            <g:sortableColumn style="color: white" property="ApprovedBy" action="index"  title="${message(code: 'esewaEvents.eventName.label', default: 'Approved By')}" />
            <g:sortableColumn style="color: white" property="approvedDate" action="index"  title="${message(code: 'esewaEvents.eventName.label', default: 'Approved Date')}" />
            <g:sortableColumn style="color: white" property="esewaRelease" action="index"  title="${message(code: 'esewaEvents.esewaRelease.label', default: 'eSewa Release')}" />
            <g:sortableColumn style="color: white" property="createdDate" action="index"  title="${message(code: 'esewaEvents.esewaRelease.label', default: 'Created Date')}" />


            <th><g:message code=" actions.label" default="Actions" /></th>

        </tr>
        </thead>
        <tbody>
        <g:each in="${esewaEventsList}" status="i" var="esewaEvents">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show" id="${esewaEvents.id}">

                    ${fieldValue(bean: esewaEvents, field: "eventName")}</g:link></td>

                <td>${fieldValue(bean: esewaEvents, field: "esewaReleaseEvents.approvedBy")}</td>
                <td>${fieldValue(bean: esewaEvents, field: "esewaReleaseEvents.approvedDate")}</td>
                <td>${fieldValue(bean: esewaEvents, field: "esewaReleaseEvents.esewaRelease.releaseName")}</td>
                <td>${fieldValue(bean: esewaEvents, field: "esewaReleaseEvents.createdDate")}</td>
                <td>
                    <div class="btn-group">
                        <g:link controller="esewaEvents" action="edit" class="btn btn-secondary" id="${esewaEvents.id}"><i class="fas fa-edit"></i></g:link>
%{--                        <g:link controller="esewaEvents" action="delete" id="${esewaEvents.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>--}%
                    </div>
                </td>


            </tr>
        </g:each>
        </tbody>
    </table>
</div>

<div class="pagination">
    <g:paginate total="${esewaEventsCount ?: 0}" />
</div>
%{--update (required) - The id of the div/span which contains the tag to render the template, which displays the list.
 total (required) - The total number of results to paginate
 action (required) - The name of the action to use in the link
 --}%
%{--
<ul class="pagination">
    <li>
        <util:remotePaginate  action="index" total="${esewaReleaseInstanceCount}"
                              update="gridList"
                              params="${params}"/>
    </li>
</ul>--}%
