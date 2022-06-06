<div class="list">
<table>
    <thead>
    <tr>
        <util:remoteSortableColumn property="releaseName" action="grid" update="gridList" title="${message(code: 'esewaRelease.releaseName.label', default: 'Release Name')}" />

        <util:remoteSortableColumn property="releaseVersion_code" update="gridList" action="grid" title="${message(code: 'esewaRelease.releaseVersion_code.label', default: 'Release Versioncode')}" />

        <th><g:message code="esewaRelease.parentRelease.label" default="Parent Release" /></th>

        <util:remoteSortableColumn property="createdDate" update="gridList" action="grid" title="${message(code: 'esewaRelease.createdDate.label', default: 'Created Date')}" />

        <util:remoteSortableColumn property="startDate" update="gridList" action="grid" title="${message(code: 'esewaRelease.startDate.label', default: 'Start Date')}" />

        <util:remoteSortableColumn property="endDate" update="gridList" action="grid" title="${message(code: 'esewaRelease.endDate.label', default: 'End Date')}" />

        <util:remoteSortableColumn property="releaseStatus" update="gridList"  action="grid" title="${message(code: 'esewaRelease.releaseStatus.label', default: 'Release Status')}" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${esewaReleaseInstanceList}" status="i" var="esewaReleaseInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${esewaReleaseInstance.id}">

                ${fieldValue(bean: esewaReleaseInstance, field: "releaseName")}</g:link></td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "releaseVersion_code")}</td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "parentRelease")}</td>

            <td><g:formatDate date="${esewaReleaseInstance.createdDate}" /></td>

            <td><g:formatDate date="${esewaReleaseInstance.startDate}" /></td>

            <td><g:formatDate date="${esewaReleaseInstance.endDate}" /></td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "releaseStatus")}</td>

        </tr>
    </g:each>
    </tbody>
</table>
</div>
%{--update (required) - The id of the div/span which contains the tag to render the template, which displays the list.
 total (required) - The total number of results to paginate
 action (required) - The name of the action to use in the link
 --}%
<div class="pagination">
    <util:remotePaginate  action="grid" total="${esewaReleaseInstanceCount}"
                          update="gridList"/>
</div>