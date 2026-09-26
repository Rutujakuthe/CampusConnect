<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>

<html>

<head>


<meta charset="UTF-8">

<title>CampusConnect | Complaints</title>

<link rel="stylesheet"
      href="${pageContext.request.contextPath}/css/style.css">


</head>

<body>

<!-- Navigation -->

<nav class="navbar">


<div class="nav-brand">
    🎓 CampusConnect
</div>

<div class="nav-links">

    <a href="${pageContext.request.contextPath}/">
        Home
    </a>

    <a href="${pageContext.request.contextPath}/lost-found">
        Lost & Found
    </a>

    <a href="${pageContext.request.contextPath}/complaints">
        Complaints
    </a>

    <a href="${pageContext.request.contextPath}/admin">
        Admin
    </a>

</div>


</nav>

<!-- Page Header -->

<section class="page-header">


<span class="hero-badge">
    📢 Campus Complaints
</span>

<h1>Campus Complaints</h1>

<p>
    Report problems and help improve your campus.
</p>


</section>

<!-- Complaints Section -->

<section class="section">


<div class="section-heading">

    <span>STUDENT REPORTS</span>

    <h2>Campus Issues</h2>

    <p>
        View complaints reported by students about different
        campus facilities and services.
    </p>

    <div class="hero-buttons"
         style="justify-content:center; margin-top:25px;">

        <a href="${pageContext.request.contextPath}/complaints/add"
           class="btn btn-primary">

            📢 Raise Complaint

        </a>

    </div>

</div>


<!-- Empty Message -->

<c:if test="${empty complaints}">

    <div class="empty-message">

        <div style="font-size:45px; margin-bottom:15px;">
            📋
        </div>

        <h3>No complaints yet</h3>

        <p>
            There are currently no complaints reported on campus.
        </p>

    </div>

</c:if>


<!-- Complaint List -->

<c:if test="${not empty complaints}">

    <c:forEach var="complaint" items="${complaints}">

        <div class="complaint-card">


            <div style="display:flex;
                        justify-content:space-between;
                        align-items:center;
                        gap:15px;
                        flex-wrap:wrap;
                        margin-bottom:15px;">

                <span class="type-lost">
                    ${complaint.category}
                </span>

                <span class="status status-pending">
                    ${complaint.status}
                </span>

            </div>


            <c:if test="${not empty complaint.photo}">

                <img src="${pageContext.request.contextPath}/complaints/image/${complaint.id}"
                     alt="Complaint Evidence"
                     style="width:100%;
                            max-height:280px;
                            object-fit:cover;
                            border-radius:12px;
                            margin-bottom:20px;">

            </c:if>


            <h3>
                ${complaint.subject}
            </h3>


            <p>
                ${complaint.description}
            </p>


            <p>
                👤 <strong>Student:</strong>
                ${complaint.studentName}
            </p>


            <p>
                📍 <strong>Location:</strong>
                ${complaint.location}
            </p>


            <p>
                📅 <strong>Date:</strong>
                ${complaint.date}
            </p>


            <p>
                ✉️ <strong>Email:</strong>
                ${complaint.email}
            </p>


        </div>

    </c:forEach>

</c:if>


</section>

<!-- Footer -->

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
