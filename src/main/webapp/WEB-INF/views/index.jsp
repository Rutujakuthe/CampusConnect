
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CampusConnect | Home</title>

    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

    <!-- Navbar -->
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


    <!-- Hero Section -->
    <section class="hero">

        <div class="hero-content">

            <span class="hero-badge">🏫 Smart Campus Portal</span>

            <h1>
                Your Campus,<br>
                <span>Connected.</span>
            </h1>

            <p>
                A simple digital platform for reporting lost and found
                items and raising college complaints.
            </p>

            <div class="hero-buttons">

                <a href="${pageContext.request.contextPath}/lost-found"
                   class="btn btn-primary">
                    🔍 Explore Lost & Found
                </a>

                <a href="${pageContext.request.contextPath}/complaints"
                   class="btn btn-secondary">
                    📝 Raise a Complaint
                </a>

            </div>

        </div>

        <div class="hero-card">

            <div class="floating-icon">🎒</div>

            <h3>CampusConnect</h3>

            <p>
                Find what you lost.<br>
                Report what needs attention.
            </p>

            <div class="mini-stats">
                <div>
                    <strong>🔍</strong>
                    <span>Lost & Found</span>
                </div>

                <div>
                    <strong>📝</strong>
                    <span>Complaints</span>
                </div>
            </div>

        </div>

    </section>


    <!-- Features -->
    <section class="section">

        <div class="section-heading">
            <span>WHAT YOU CAN DO</span>
            <h2>Everything you need on campus</h2>
            <p>
                CampusConnect brings common student services together
                in one convenient place.
            </p>
        </div>


        <div class="card-grid">

            <!-- Lost & Found -->
            <div class="feature-card">

                <div class="feature-icon">
                    🔎
                </div>

                <h3>Lost & Found</h3>

                <p>
                    Report something you have lost or found on campus.
                    Add details, location and a photo to help identify it.
                </p>

                <a href="${pageContext.request.contextPath}/lost-found">
                    View Lost & Found →
                </a>

            </div>


            <!-- Complaints -->
            <div class="feature-card">

                <div class="feature-icon">
                    📢
                </div>

                <h3>College Complaints</h3>

                <p>
                    Report problems related to classrooms, infrastructure,
                    cleanliness, facilities and other campus services.
                </p>

                <a href="${pageContext.request.contextPath}/complaints">
                    View Complaints →
                </a>

            </div>


            <!-- Admin -->
            <div class="feature-card">

                <div class="feature-icon">
                    🛠️
                </div>

                <h3>Admin Panel</h3>

                <p>
                    Manage reported items and complaints from a single
                    administration dashboard.
                </p>

                <a href="${pageContext.request.contextPath}/admin">
                    Open Admin Panel →
                </a>

            </div>

        </div>

    </section>


    <!-- How It Works -->
    <section class="section how-section">

        <div class="section-heading">
            <span>HOW IT WORKS</span>
            <h2>Simple. Fast. Connected.</h2>
        </div>


        <div class="steps">

            <div class="step">

                <div class="step-number">1</div>

                <h3>Report</h3>

                <p>
                    Submit details about a lost item, found item
                    or campus problem.
                </p>

            </div>


            <div class="step">

                <div class="step-number">2</div>

                <h3>Track</h3>

                <p>
                    View submitted reports and check their current
                    status.
                </p>

            </div>


            <div class="step">

                <div class="step-number">3</div>

                <h3>Resolve</h3>

                <p>
                    Admin can review reports and take the required
                    action.
                </p>

            </div>

        </div>

    </section>


    <!-- Footer -->
    <footer class="footer">

        <h3>🎓 CampusConnect</h3>

        <p>
            Making campus communication simpler and smarter.
        </p>

        <p class="footer-copy">
            © 2026 CampusConnect | College Portal
        </p>

    </footer>

</body>
</html>

