<%@ page import="dash.Book; dash.Author" %>
<div class="form-group">
	<label><g:message code="name"/> *</label>
	<g:field type="name" name="name" class="form-control" value="${authors?.name}"/>
</div>

<div class="form-group">
	<label><g:message code="book"/> *</label>
%{--		<g:set var="listOfEsewaReleaseEventsRelease" value="${EsewaReleaseEvents.list().esewaEvents}" />--}%
	<g:select name="authorBooks" from="${Book.list()}" optionKey="id" optionValue="title"
			  value="${authors?.authorBooks}" noSelection="['':'-Choose Book-']"/>
%{--	<g:select name="book" from="${Book.list()}" value="${authorbooks?.book}" optionKey="id" optionValue="title"--}%
%{--			  noSelection="['':'-Choose your Book-']" />--}%
%{--	<g:select name="books" optionValue="title" optionKey="id"
			  from="${Book.list()}"
			 value="${authors?.books}" />--}%
</div>


