<%@tag description="amazing route" %>
<%@attribute name="name"%>
<%@attribute name="url"%>

<a ${pageContext.request.requestURI.substring(pageContext.request.requestURI.lastIndexOf("/")) eq url ? ' active' : ''} aria-current="page" class="nav-link" href="${pageContext.request.contextPath}${url}">${name}</a>