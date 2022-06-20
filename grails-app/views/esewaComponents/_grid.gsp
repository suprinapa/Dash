<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark">
    <tr>
        <util:remoteSortableColumn property="componentName" action="index" update="gridList" title="${message(code: 'esewaComponents.componentName.label', default: 'Component Name')}" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${esewaComponentsList}" status="i" var="esewaComponents">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${esewaComponents.id}">

                ${fieldValue(bean: esewaComponents, field: "componentName")}</g:link></td>
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
<ul class="pagination">
    <li>
        <util:remotePaginate  action="index" total="${esewaReleaseInstanceCount}"
                              update="gridList"
                              params="${params}"/>
    </li>
</ul>--}%
