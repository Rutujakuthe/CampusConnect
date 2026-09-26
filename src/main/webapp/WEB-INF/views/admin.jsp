
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>CampusConnect | Admin</title>

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


    <!-- Admin Header -->
    <section class="page-header">

        <div>

            <span class="hero-badge">
                🛠️ Administration
            </span>

            <h1>Admin Dashboard</h1>

            <p>
                Manage campus reports and keep track of
                student-submitted issues.
            </p>

        </div>

    </section>


    <!-- Dashboard Cards -->
    <section class="section">

        <div class="section-heading">

            <span>CONTROL CENTER</span>

            <h2>Campus Management</h2>

            <p>
                Select a module to view and manage the submitted reports.
            </p>

        </div>


        <div class="card-grid">


            <!-- Lost & Found -->
            <div class="feature-card admin-card">

                <div class="feature-icon">
                    🔍
                </div>

                <h3>Lost & Found</h3>

                <p>
                    View all lost and found reports submitted by
                    students. Check item details, photos and contact
                    information.
                </p>

                <a href="${pageContext.request.contextPath}/lost-found"
                   class="btn btn-primary">
                    Manage Items
                </a>

            </div>


            <!-- Complaints -->
            <div class="feature-card admin-card">

                <div class="feature-icon">
                    📋
                </div>

                <h3>Complaints</h3>

                <p>
                    View complaints submitted by students and check
                    their category, description, evidence and status.
                </p>

                <a href="${pageContext.request.contextPath}/complaints"
                   class="btn btn-primary">
                    Manage Complaints
                </a>

            </div>


            <!-- Quick Actions -->
            <div class="feature-card admin-card">

                <div class="feature-icon">
                    ⚡
                </div>

                <h3>Quick Actions</h3>

                <p>
                    Quickly access the reporting sections when you
                    need to create a test report.
                </p>

                <div class="admin-actions">

                    <a href="${pageContext.request.contextPath}/lost-found/report-lost"
                       class="btn btn-secondary">
                        Report Lost
                    </a>

                    <a href="${pageContext.request.contextPath}/lost-found/report-found"
                       class="btn btn-secondary">
                        Report Found
                    </a>

                    <a href="${pageContext.request.contextPath}/complaints/add"
                       class="btn btn-secondary">
                        Add Complaint
                    </a>

                </div>

            </div>

        </div>

    </section>


    <!-- Information -->
    <section class="section">

        <div class="info-box">

            <div class="info-icon">
                💡
            </div>

            <div>

                <h3>CampusConnect Admin</h3>

                <p>
                    Use this dashboard to monitor lost and found
                    reports and student complaints. New complaints
                    are automatically marked as <strong>Pending</strong>.
                </p>

            </div>

        </div>

    </section>


    <!-- Footer -->
    <footer class="footer">

        <h3>🎓 CampusConnect</h3>

        <p>
            Smart communication for a better campus.
        </p>

        <p class="footer-copy">
            © 2026 CampusConnect | Admin Panel
        </p>

    </footer>

</body>
</html>

