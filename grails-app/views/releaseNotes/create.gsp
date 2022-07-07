<g:each in="${releaseNotes}" var="releaseNotesDetails">
			<g:render template="form" model="[releaseNotesDetails: releaseNotesDetails]"/>
		</g:each>
<g:render template="form"/>
