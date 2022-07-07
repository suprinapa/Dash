<%@ page import="dash.EsewaRelease" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'esewaRelease.label', default: 'EsewaRelease')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>

<div class="nav pb-2" role="navigation">
    <g:link controller="esewaRelease" action="create" class="btn btn-success"><g:message code="default.create.label"
                                                                                         args="[entityName]"/></g:link>
</div>

<div class="nav" role="navigation">
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <g:link class="navbar-brand" controller="releaseEnvironment" action="index"><g:message
                            code="release.Environment" args="[entityName]"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="esewaComponents" action="index"><g:message
                            code="esewa.Components" args="[entityName]"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="releaseNotes" action="index"><g:message
                            code="releaseNotes.label" args="[entityName]"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="releaseChecklist" action="index"><g:message
                            code="releaseChecklist.label" args="[entityName]"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="esewaEvents" action="index"><g:message
                            code="esewa.Events" args="[entityName]"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="esewaReleaseEvents" action="index"><g:message
                            code="esewaReleaseEvents.label" args="[entityName]"/></g:link>
                </li>
            </ul>
        </div>
    </nav>
</div>
<div id="show-esewaRelease" class="card-body" role="main">
    <h2><g:message code="default.show.label" args="[entityName]"/></h2>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="list-inline">

        <g:if test="${esewaRelease?.releaseVersion}">
            <li class="list-group-item">
                <span id="releaseVersion-label" class="badge"><g:message code="esewaRelease.releaseVersion.label"
                                                                         default="Release Version"/></span>

                <span class="property-value" aria-labelledby="releaseVersion-label"><g:fieldValue
                        bean="${esewaRelease}" field="releaseVersion"/></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.parentRelease}">
            <li class="list-group-item">
                <span id="parentRelease-label" class="badge"><g:message code="esewaRelease.parentRelease.label"
                                                                        default="Parent Release"/></span>

                <span class="property-value" aria-labelledby="parentRelease-label"><g:link controller="esewaRelease"
                                                                                           action="show"
                                                                                           id="${esewaRelease?.parentRelease?.id}">${esewaRelease?.parentRelease?.releaseName?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.createdDate}">
            <li class="list-group-item">
                <span id="createdDate-label" class="badge"><g:message code="esewaRelease.createdDate.label"
                                                                      default="Created Date"/></span>

                <span class="property-value" aria-labelledby="createdDate-label"><g:formatDate format="MMMM dd, yyyy"
                                                                                               date="${esewaRelease?.createdDate}"/></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.startDate}">
            <li class="list-group-item">
                <span id="startDate-label" class="badge"><g:message code="esewaRelease.startDate.label"
                                                                    default="Start Date"/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate format="MMMM dd, yyyy"
                                                                                             date="${esewaRelease?.startDate}"/></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.endDate}">
            <li class="list-group-item">
                <span id="endDate-label" class="badge"><g:message code="esewaRelease.endDate.label"
                                                                  default="End Date"/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate format="MMMM dd, yyyy"
                                                                                           date="${esewaRelease?.endDate}"/></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.esewaComponents}">
            <li class="list-group-item">
                <span id="esewaComponents-label" class="badge"><g:message code="esewaRelease.esewaComponents.label"
                                                                          default="Esewa Components"/></span>

                <g:each in="${esewaRelease.esewaComponents}" var="e">
                    <span class="property-value" aria-labelledby="esewaComponents-label"><g:link
                            controller="esewaComponents" action="show" id="${e.id}">${e?.componentName?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.esewaReleaseEvents}">
            <li class="list-group-item">
                <span id="esewaReleaseEvents-label" class="badge"><g:message
                        code="esewaRelease.esewaReleaseEvents.label" default="Esewa Release Events"/></span>

                <g:each in="${esewaRelease.esewaReleaseEvents}" var="e">
                    <span class="property-value" aria-labelledby="esewaReleaseEvents-label"><g:link
                            controller="esewaReleaseEvents" action="show"
                            id="${e.id}">${e?.esewaEvents?.eventName?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseChecklist}">
            <li class="list-group-item">
                <span id="releaseChecklist-label" class="badge"><g:message code="esewaRelease.releaseChecklist.label"
                                                                           default="Release Checklist"/></span>

                <g:each in="${esewaRelease.releaseChecklist}" var="r">
                    <span class="property-value" aria-labelledby="releaseChecklist-label"><g:link
                            controller="releaseChecklist" action="show"
                            id="${r.id}">${r?.releaseCheckListDescription?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseEnvironment}">
            <li class="list-group-item">
                <span id="releaseEnvironment-label" class="badge"><g:message
                        code="esewaRelease.releaseEnvironment.label" default="Release Environment"/></span>

                <g:each in="${esewaRelease.releaseEnvironment}" var="s">
                    <span class="property-value" aria-labelledby="releaseEnvironment-label"><g:link
                            controller="releaseEnvironment" action="show"
                            id="${s.id}">${s?.esewaEnvironment?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseNotes}">
            <li class="list-group-item">
                <span id="releaseNotes-label" class="badge"><g:message code="esewaRelease.releaseNotes.label"
                                                                       default="Release Notes"/></span>

                <g:each in="${esewaRelease.releaseNotes}" var="r">
                    <span class="property-value" aria-labelledby="releaseNotes-label">
                        <g:link controller="releaseNotes" action="show" id="${r.id}">${r?.releaseNotesDescription?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseStatus}">
            <li class="list-group-item">
                <span id="releaseStatus-label" class="badge"><g:message code="esewaRelease.releaseStatus.label"
                                                                        default="Release Status"/></span>

                <span class="property-value" aria-labelledby="releaseStatus-label"><g:fieldValue
                        bean="${esewaRelease}" field="releaseStatus"/></span>

            </li>
        </g:if>
    </ol>
    <g:form url="[resource: esewaRelease, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="btn btn-secondary" action="edit" id="${esewaRelease.id}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="btn btn-danger" action="delete" id="${esewaRelease.id}"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"/>
            <g:link controller="esewaRelease" action="index" class="btn btn-success"><g:message code="Back"/></g:link>
        </fieldset>
    </g:form>
</div>
</body>
</html>
