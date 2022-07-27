<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark ">
    <tr>
        <g:sortableColumn property="description" title="${message(code: 'releaseNotes.description.label', default: 'Description')}" />
        <th><g:message code=" actions.label" default="Actions" /></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${releaseNotesList}" status="i" var="releaseNotes">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${releaseNotes.id}">${fieldValue(bean: releaseNotes, field: "releaseNotesDescription")}</g:link>
            </td>
            <td>
            <div class="btn-group">
                <g:link controller="releaseNotes" action="edit" class="btn btn-secondary" id="${releaseNotes.id}"><i class="fas fa-edit"></i></g:link>
                <g:link controller="releaseNotes" action="delete" id="${releaseNotes.id}" class="btn btn-secondary deleteConfirm"><i class="fas fa-trash"></i></g:link>
            </div>
            </td>
           </tr>
    </g:each>
    </tbody>
</table>
</div>
%{--
<div class="pagination__custom">
    <util:remotePaginate  action="search" total="${releaseNotesCount}"
                          update="gridList"
                          params="${params}"/>
</div>
--}%

