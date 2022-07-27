<div class="card-body">
    <table class="table table-bordered  table-striped table-responsive-sm">
        <thead class="thead-dark">
    <tr>
        <g:sortableColumn property="esewaEnvironment" action="index" update="gridList" title="${message(code: 'releaseEnvironment.esewaEnvironment.label', default: 'Environment')}" />
        <th><g:message code=" actions.label" default="Actions" /></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${releaseEnvironmentInstanceList}" status="i" var="releaseEnvironment">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${releaseEnvironment.id}">

                ${fieldValue(bean: releaseEnvironment, field: "esewaEnvironment")}</g:link></td>
            <td>
                <div class="btn-group">
                    <g:link controller="releaseEnvironment" action="edit" class="btn btn-secondary" id="${releaseEnvironment.id}"><i class="fas fa-edit"></i></g:link>
%{--                    <g:link controller="releaseEnvironment" action="delete" id="${releaseEnvironment.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>--}%
                </div>
            </td>

        </tr>
    </g:each>
    </tbody>
</table>
</div>
<div class="pagination">
    <g:paginate total="${releaseEnvironmentInstanceCount ?: 0}" />
</div>

%{--<ul class="pagination">--}%
%{--    <li>--}%
%{--        <util:remotePaginate  action="index" total="${esewaReleaseInstanceCount}"--}%
%{--                              update="gridList"--}%
%{--                              params="${params}"/>--}%
%{--    </li>--}%
%{--</ul>--}%
