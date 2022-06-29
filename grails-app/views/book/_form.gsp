<%@ page import="dash.Book; dash.Author" %>
<div class="form-group">
	<label><g:message code="title"/> *</label>
	<g:field type="title" name="title" class="form-control" value="${authors?.title}"/>
</div>

%{--name="propertyKey" from="${applicationPropertyInstance?.propertyKey}"--}%
%{--                  keys="${applicationPropertyInstance?.propertyKey*.name()}" required=""--}%
%{--                  value="${applicationPropertyInstance?.propertyKey?.name()}" tabindex="1"/>--}%