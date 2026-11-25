<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar md:navbar-expand bg-1">
    <div class="container-fluid">
        <a class="navbar-brand" href="${pageContext.request.contextPath}">Parking Lot</a>
        <button class="btn-icon navbar-toggler" type="button" data-bs-toggle="drawer" data-bs-target="#navbarDrawer" aria-controls="navbarDrawer" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon" aria-hidden="true"></span>
        </button>
        <dialog class="drawer drawer-end" tabindex="-1" id="navbarDrawer" aria-labelledby="navbarDrawerLabel">
            <div class="drawer-header">
                <h5 class="drawer-title" id="navbarDrawerLabel">Menu</h5>
                <button type="button" class="btn-close" data-bs-dismiss="drawer" aria-label="Close"></button>
            </div>
            <div class="drawer-body mb-2 md:mb-0">
                <ul class="nav navbar-nav me-auto">
                    <li class="nav-item">
                        <t:route url="/index.jsp" name="Home"/>
                    </li>
                    <li class="nav-item">
                        <t:route url="/about.jsp" name="About"/>
                    </li>
                    <li class="nav-item">
                        <c:if test="${pageContext.request.isUserInRole('READ_CARS')}">
                            <t:route url="/Cars" name="Cars"/>
                        </c:if>
                    </li>
                    <li class="nav-item">
                        <c:if test="${pageContext.request.isUserInRole('READ_USERS')}">
                            <t:route url="/Users" name="Users"/>
                        </c:if>
                    </li>
                    <li class="nav-item">
                        <button class="nav-link" type="button" data-bs-toggle="menu" aria-expanded="false">
                            Menu
                        </button>
                        <div class="menu">
                            <a class="menu-item" href="#">Action</a>
                            <a class="menu-item" href="#">Another action</a>
                            <hr class="menu-divider">
                            <a class="menu-item" href="#">Something else here</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                </ul>
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <c:choose>
                            <c:when test="${pageContext.request.getRemoteUser() == null}">
                                <t:route url="/Login" name="Login"/>
                            </c:when>
                            <c:otherwise>
                                <t:route url="/Logout" name="Logout"/>
                            </c:otherwise>
                        </c:choose>
                    </li>
                </ul>
            </div>
        </dialog>
    </div>
</nav>