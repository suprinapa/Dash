<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark ">
    <tr>
        <util:remoteSortableColumn property="esewaEnvironment" action="index" update="gridList" title="${message(code: 'releaseEnvironment.esewaEnvironment.label', default: 'Environment')}" />
    </tr>
    </thead>
    <tbody>
    <g:each in="${releaseEnvironmentList}" status="i" var="releaseEnvironment">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${releaseEnvironment.id}">

                ${fieldValue(bean: releaseEnvironment, field: "esewaEnvironment")}</g:link></td>
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
