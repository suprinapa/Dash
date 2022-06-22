<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark ">
    <tr>

        <g:sortableColumn property="approvedDate" title="${message(code: 'esewaReleaseEvents.approvedDate.label', default: 'Approved Date')}" />

        <g:sortableColumn property="approvedBy" title="${message(code: 'esewaReleaseEvents.approvedBy.label', default: 'Approved By')}" />

        <g:sortableColumn property="createdDate" title="${message(code: 'esewaReleaseEvents.createdDate.label', default: 'Created Date')}" />

        <th><g:message code="esewaReleaseEvents.esewaEvents.label" default="Esewa Events" /></th>

        <th><g:message code="esewaReleaseEvents.esewaRelease.label" default="Esewa Release" /></th>

    </tr>
    </thead>
    <tbody>
    <g:each in="${esewaReleaseEventsInstanceList}" status="i" var="esewaReleaseEventsInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${esewaReleaseEventsInstance.id}"> <g:formatDate format="yyyy-MM-dd" date="${esewaReleaseEventsInstance.approvedDate}"/></g:link></td>

            <td>${fieldValue(bean: esewaReleaseEventsInstance, field: "approvedBy")}</td>

            <td><g:formatDate format="yyyy-MM-dd" date="${esewaReleaseEventsInstance.createdDate}" /></td>

            <td>${fieldValue(bean: esewaReleaseEventsInstance, field: "esewaEvents.eventName")}</td>

            <td>${fieldValue(bean: esewaReleaseEventsInstance, field: "esewaRelease.releaseName")}</td>

        </tr>
    </g:each>
    </tbody>
</table>
</div>
%{--update (required) - The id of the div/span which contains the tag to render the template, which displays the list.
 total (required) - The total number of results to paginate
 action (required) - The name of the action to use in the link
 --}%
%{--
<div class="pagination__custom">
    <util:remotePaginate  action="search" total="${esewaReleaseInstanceCount}"
                          update="gridList"
                          params="${params}"/>
</div>
--}%

