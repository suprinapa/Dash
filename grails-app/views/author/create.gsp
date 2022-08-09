
<meta name="layout" content="main"/>

<div class="card">
	<div class="card-header">
		<g:message code="author.label" args="['Create']"/>
	</div>
	<div class="card-body">
		<g:form controller="author" action="save">
		%{--Partial Templating--}%
			<g:render template="form" collection="${authors}"/>
			<div class="form-action-panel">
				<g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
				<g:link controller="author" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
			</div>
		</g:form>
	</div>
</div>