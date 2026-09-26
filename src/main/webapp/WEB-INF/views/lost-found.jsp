<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>CampusConnect | Lost & Found</title>


<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">


</head>

<body>

<nav class="navbar">


<div class="nav-brand">
    🎓 CampusConnect
</div>

<div class="nav-links">
    <a href="${pageContext.request.contextPath}/">Home</a>
    <a href="${pageContext.request.contextPath}/lost-found">Lost & Found</a>
    <a href="${pageContext.request.contextPath}/complaints">Complaints</a>
    <a href="${pageContext.request.contextPath}/admin">Admin</a>
</div>


</nav>

<section class="page-header">


<span class="hero-badge">
    🔎 Campus Lost & Found
</span>

<h1>Lost & Found</h1>

<p>
    Find a lost item or help someone recover what they misplaced.
</p>


</section>

<section class="section">


<div class="section-heading">

    <span>CAMPUS ITEMS</span>

    <h2>Recent Reports</h2>

    <p>
        Browse items reported lost or found around the campus.
    </p>

    <div class="hero-buttons"
         style="justify-content:center; margin-top:25px;">

        <a href="${pageContext.request.contextPath}/lost-found/report-lost"
           class="btn btn-primary">
            🔍 Report Lost Item
        </a>

        <a href="${pageContext.request.contextPath}/lost-found/report-found"
           class="btn btn-secondary">
            🎒 Report Found Item
        </a>

    </div>

</div>


<c:if test="${empty items}">

    <div class="empty-message">

        <div style="font-size:45px; margin-bottom:15px;">
            🎒
        </div>

        <h3>No reports yet</h3>

        <p>
            Be the first to report a lost or found item on campus.
        </p>

    </div>

</c:if>


<c:if test="${not empty items}">

    <div class="item-grid">

        <c:forEach var="item" items="${items}">

            <div class="item-card">

                <c:if test="${not empty item.photo}">
                    <img src="${pageContext.request.contextPath}/lost-found/image/${item.id}"
                         alt="${item.itemName}">
                </c:if>

                <c:if test="${empty item.photo}">
                    <div style="height:210px; display:flex; align-items:center; justify-content:center; background:#e7dfd2; font-size:55px;">
                        🎒
                    </div>
                </c:if>


                <div class="item-content">

                    <c:choose>

                        <c:when test="${item.type == 'LOST'}">
                            <span class="type-lost">
                                Lost
                            </span>
                        </c:when>

                        <c:otherwise>
                            <span class="type-found">
                                Found
                            </span>
                        </c:otherwise>

                    </c:choose>


                    <h3>${item.itemName}</h3>

                    <p>
                        ${item.description}
                    </p>

                    <p>
                        📍 <strong>Location:</strong>
                        ${item.location}
                    </p>

                    <p>
                        📅 <strong>Date:</strong>
                        ${item.date}
                    </p>

                    <p>
                        👤 <strong>Contact:</strong>
                        ${item.contactName}
                    </p>

                    <p>
                        ✉️ ${item.contactEmail}
                    </p>

                    <br>

                    <span class="status status-active">
                        ${item.status}
                    </span>

                </div>

            </div>

        </c:forEach>

    </div>

</c:if>


</section>

<footer class="footer">


<h3>🎓 CampusConnect</h3>

<p>
    Making campus communication simpler and smarter.
</p>

<p class="footer-copy">
    © 2026 CampusConnect
</p>


</footer>

</body>
</html>
