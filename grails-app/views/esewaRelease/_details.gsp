<%@ page import="dash.EsewaRelease" %>

<div class="card">

    <ol class="list-inline">
        <g:if test="${esewaRelease?.releaseVersion}">
            <li class="list-group-item">
                <span id="releaseVersion-label" class="badge"><g:message code="esewaRelease.releaseVersion.label"
                                                                         default="Release Version : "/></span>

                <span class="property-value" aria-labelledby="releaseVersion-label">
                    <g:fieldValue
                            bean="${esewaRelease}" field="releaseVersion"/></span>
            </li>
        </g:if>

        <g:if test="${esewaRelease?.parentRelease}">
            <li class="list-group-item">
                <span id="parentRelease-label" class="badge"><g:message code="esewaRelease.parentRelease.label"
                                                                        default="Previous Release : "/></span>

                <span class="property-value" aria-labelledby="parentRelease-label"><g:link controller="esewaRelease"
                                                                                           action="show"
                                                                                           id="${esewaRelease?.parentRelease?.id}">${esewaRelease?.parentRelease?.releaseName?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.startDate}">
            <li class="list-group-item">
                <span id="startDate-label" class="badge"><g:message code="esewaRelease.startDate.label"
                                                                    default="Start Date : "/></span>

                <span class="property-value" aria-labelledby="startDate-label"><g:formatDate format="MMMM dd, yyyy"
                                                                                             date="${esewaRelease?.startDate}"/></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.endDate}">
            <li class="list-group-item">
                <span id="endDate-label" class="badge"><g:message code="esewaRelease.endDate.label"
                                                                  default="End Date : "/></span>

                <span class="property-value" aria-labelledby="endDate-label"><g:formatDate format="MMMM dd, yyyy"
                                                                                           date="${esewaRelease?.endDate}"/></span>

            </li>
        </g:if>

    %{--   <g:if test="${esewaRelease?.esewaComponents}">
           <li class="list-group-item">
               <span id="esewaComponents-label" class="badge"><g:message code="esewaRelease.esewaComponents.label"
                                                                         default="eSsewa Components : "/></span>

               <g:each in="${esewaRelease.esewaComponents}" var="e">
                   <span class="list-group" aria-labelledby="esewaComponents-label"><g:link
                           controller="esewaComponents" action="show"
                           id="${e.id}">${e?.componentName?.encodeAsHTML()}</g:link></span>
               </g:each>

           </li>
       </g:if>--}%

        <g:if test="${esewaEvents}">
            <li class="list-group-item">
                <span id="esewaReleaseEvents-label" class="badge"><g:message
                        code="esewaRelease.esewaReleaseEvents.label" default="eSewa Events : "/></span>

                <g:each in="${esewaEvents}" var="e">
                    <span class="list-group" aria-labelledby="esewaReleaseEvents-label"><g:link
                            controller="esewaEvents" action="show"
                            id="${e.id}">${e?.eventName?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseChecklist}">
            <li class="list-group-item">
                <span id="releaseChecklist-label" class="badge"><g:message code="esewaRelease.releaseChecklist.label"
                                                                           default="Release Checklist : "/></span>

                <g:each in="${esewaRelease.releaseChecklist}" var="r">
                    <span class="list-group" aria-labelledby="releaseChecklist-label"><g:link
                            controller="releaseChecklist" action="show"
                            id="${r.id}">${r?.releaseCheckListDescription?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseEnvironment}">
            <li class="list-group-item">
                <span id="releaseEnvironment-label" class="badge"><g:message
                        code="esewaRelease.releaseEnvironment.label" default="Release Environment : "/></span>

                <g:each in="${esewaRelease.releaseEnvironment}" var="s">
                    <span class="list-group" aria-labelledby="releaseEnvironment-label"><g:link
                            controller="releaseEnvironment" action="show"
                            id="${s.id}">${s?.esewaEnvironment?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseNotes}">
            <li class="list-group-item">
                <span id="releaseNotes-label" class="badge"><g:message code="esewaRelease.releaseNotes.label"
                                                                       default="Release Notes : "/></span>

                <g:each in="${esewaRelease.releaseNotes}" var="r">
                    <span class="list-group" aria-labelledby="releaseNotes-label">
                        <g:link controller="releaseNotes" action="show"
                                id="${r.id}">${r?.releaseNotesDescription?.encodeAsHTML()}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseStatus}">
            <li class="list-group-item">
                <span id="releaseStatus-label" class="badge"><g:message code="esewaRelease.releaseStatus.label"
                                                                        default="Release Status : "/></span>

                <span class="property-value" aria-labelledby="releaseStatus-label"><g:fieldValue
                        bean="${esewaRelease}" field="releaseStatus"/></span>

            </li>
        </g:if>

        <g:if test="${esewaRelease?.releaseType}">
            <li class="list-group-item">
                <span class="badge"><g:message code="esewaRelease.releaseType.label"
                                               default="Release Type : "/></span>
                <span id ="updated_release_type"></span>
            </li>
        </g:if>
    </ol>
</div>