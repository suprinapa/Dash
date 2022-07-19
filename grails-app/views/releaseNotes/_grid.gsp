<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark ">
    <tr>
        <g:sortableColumn property="description" title="${message(code: 'releaseNotes.description.label', default: 'Description')}" />
    </tr>
    </thead>
    <tbody>
    <g:each in="${releaseNotesList}" status="i" var="releaseNotes">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${releaseNotes.id}">${fieldValue(bean: releaseNotes, field: "releaseNotesDescription")}</g:link></td>
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

