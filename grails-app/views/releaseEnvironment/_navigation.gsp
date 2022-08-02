<div class="nav" role="navigation">
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary">
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">


                <li class="nav-item">
                    <g:link class="navbar-brand" controller="releaseEnvironment" action="findEnvironmentByEsewaRelease" id="${params.id}">
                        Release Environment</g:link>

                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="esewaComponents" action="findComponentsByEsewaRelease" id="${params.id}"><g:message
                            code="esewa.Components"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="releaseNotes" action="findReleaseNotesByRelease" id="${params.id}"><g:message
                            code="releaseNotes.label"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="releaseChecklist" action="findReleaseChecklistByRelease" id="${params.id}"><g:message
                            code="releaseChecklist.label"/></g:link>
                </li>
                <li class="nav-item">
                    <g:link class="navbar-brand" controller="esewaEvents" action="findReleaseByEvents" id="${params.id}" ><g:message
                            code="esewa.Events"/></g:link>
                </li>
                %{--  <li class="nav-item">
                      <g:link class="navbar-brand" controller="esewaReleaseEvents" action="index"><g:message
                              code="esewaReleaseEvents.label" /></g:link>
                  </li>--}%
            </ul>
        </div>
    </nav>
</div>