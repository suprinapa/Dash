<%@ page import="dash.EsewaComponents" %>
<div class="card-body">
<table class="table table-bordered ">
    <thead class="thead-dark">
    <tr>
        <g:sortableColumn  style="color: white" property="componentName" action="index" update="gridList" title="${message(code: 'esewaComponents.componentName.label', default: 'Component Name')}" />
        <th><g:message code=" actions.label" default="Actions" /></th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${esewaComponentsInstanceList}" status="i" var="esewaComponents">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link action="show" id="${esewaComponents.id}">

                ${fieldValue(bean: esewaComponents, field: "componentName")}</g:link></td>
            <td>
                <div class="btn-group">
                    <g:link controller="esewaComponents" action="edit" class="btn btn-secondary" id="${esewaComponents.id}"><i class="fas fa-edit"></i></g:link>
%{--                    <button data-toggle="modal" data-target="#exampleModalLong" action="edit" class="btn btn-secondary">--}%
%{--                        <i class="fas fa-edit"></i></g:link>--}%
%{--                    <g:link controller="esewaComponents" action="delete" id="${esewaComponents.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>--}%
                </div>
            </td>


        </tr>
    </g:each>
    </tbody>

    <!-- Modal -->
    <div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="form-group row ${hasErrors(bean: esewaComponents, field: 'componentName', 'error')} required">
                        <label for="componentName">
                            <g:message code="esewaRelease.releaseVersion.label" default="Component Name"/>
                            <span class="required-indicator">*</span>
                        </label>
                        <g:textField name="componentName" required="" value="${esewaComponents?.componentName}"/>
                    </div>

                </div>
                <div class="modal-footer">
                    <g:link controller="esewaComponents" id="${esewaComponents}" action="update" class="btn btn-success"><g:message
                            code="update"/></g:link>
                    <g:link controller="esewaComponents" action="index" class="btn btn-secondary"><g:message
                                code="cancel"/></g:link>
                </div>
        </div>
    </div>
</div>
</table>
</div>

<div class="pagination">
    <g:paginate total="${esewaComponentsInstanceCount ?: 0}" />
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
