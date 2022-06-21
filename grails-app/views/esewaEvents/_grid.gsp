<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark ">
    <tr>
        <util:remoteSortableColumn property="eventName" action="index" update="gridList" title="${message(code: 'esewaEvents.eventName.label', default: 'Event Name')}" />
    </thead>
    <tbody>
    <g:each in="${esewaEventsList}" status="i" var="esewaEvents">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${esewaEvents.id}">

                ${fieldValue(bean: esewaEvents, field: "eventName")}</g:link></td>

        </tr>
    </g:each>
    </tbody>
</table>
</div>

%{--<ul class="pagination">--}%
%{--    <li>--}%
%{--        <util:remotePaginate  action="index" total="${esewaReleaseInstanceCount}"--}%
%{--                              update="gridList"--}%
%{--                              params="${params}"/>--}%
%{--    </li>--}%
%{--</ul>--}%
