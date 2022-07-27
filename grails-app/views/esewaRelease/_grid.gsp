<div class="card-body">
<table class="table table-bordered  table-striped table-responsive-sm table-hover">
    <thead class="thead-dark ">
    <tr>
        <util:remoteSortableColumn style="color: white" property="releaseName" params="${pageScope.variables}" action="search" update="gridList" title="${message(code: 'esewaRelease.releaseName.label', default: 'Release Name')}" />

        <util:remoteSortableColumn style="color: white" property="releaseVersion" params="${pageScope.variables}" update="gridList" action="search" title="${message(code: 'esewaRelease.releaseVersion.label', default: 'Release Version')}" />

        <th><g:message  style="color: white" code=" parentRelease.label" default="Previous Release" /></th>

        <util:remoteSortableColumn style="color: white" property="createdDate" params="${pageScope.variables}" update="gridList" action="search" title="${message(code: 'esewaRelease.createdDate.label', default: 'Created Date')}" />

        <util:remoteSortableColumn style="color: white" property="startDate" params="${pageScope.variables}"  update="gridList" action="search" title="${message(code: 'esewaRelease.startDate.label', default: 'Start Date')}" />

        <util:remoteSortableColumn style="color: white" property="endDate" params="${pageScope.variables}" update="gridList" action="search" title="${message(code: 'esewaRelease.endDate.label', default: 'End Date')}" />

        <util:remoteSortableColumn style="color: white" property="releaseStatus" params="${pageScope.variables}" update="gridList"  action="search" title="${message(code: 'esewaRelease.releaseStatus.label', default: 'Release Status')}" />

        <util:remoteSortableColumn style="color: white" property="releaseType"  params="${pageScope.variables}" update="gridList"  action="search" title="${message(code: 'esewaRelease.releaseTyppe.label', default: 'Release Type')}" />
    </tr>
    </thead>
    <tbody>
    <g:each in="${esewaReleaseInstanceList}" status="i" var="esewaReleaseInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${esewaReleaseInstance.id}">

                ${fieldValue(bean: esewaReleaseInstance, field: "releaseName")}</g:link></td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "releaseVersion")}</td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "parentRelease.releaseName")}</td>

            <td><g:formatDate  date="${esewaReleaseInstance.createdDate}" format="yyyy-MM-dd" /></td>

            <td><g:formatDate date="${esewaReleaseInstance.startDate}" format="yyyy-MM-dd" /></td>

            <td><g:formatDate date="${esewaReleaseInstance.endDate}" format="yyyy-MM-dd" /></td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "releaseStatus")}</td>

            <td>${fieldValue(bean: esewaReleaseInstance, field: "releaseType")}</td>

        </tr>
    </g:each>
    </tbody>
</table>
</div>
%{--update (required) - The id of the div/span which contains the tag to render the template, which displays the list.
 total (required) - The total number of results to paginate
 action (required) - The name of the action to use in the link
 --}%
<div class="pagination__custom">
    <util:remotePaginate  action="search" total="${esewaReleaseInstanceCount}"
                          update="gridList"
                          params="${params}"/>
</div>

