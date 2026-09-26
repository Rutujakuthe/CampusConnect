<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>CampusConnect | Raise Complaint</title>


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
    📢 Campus Complaints
</span>

<h1>Raise a Complaint</h1>

<p>
    Report a campus issue and help make your college better.
</p>


</section>

<section class="section">


<div class="form-container">

    <h2>Complaint Details</h2>

    <form action="${pageContext.request.contextPath}/complaints/save"
          method="post"
          enctype="multipart/form-data">

        <div class="form-group">
            <label>Your Name</label>

            <input type="text"
                   name="studentName"
                   placeholder="Enter your name"
                   required>
        </div>

        <div class="form-group">
            <label>Email</label>

            <input type="email"
                   name="email"
                   placeholder="Enter your email"
                   required>
        </div>

        <div class="form-group">
            <label>Complaint Category</label>

            <select name="category" required>

                <option value="">
                    Select category
                </option>

                <option value="Infrastructure">
                    Infrastructure
                </option>

                <option value="Cleanliness">
                    Cleanliness
                </option>

                <option value="Classroom">
                    Classroom
                </option>

                <option value="Library">
                    Library
                </option>

                <option value="Canteen">
                    Canteen
                </option>

                <option value="Other">
                    Other
                </option>

            </select>
        </div>

        <div class="form-group">
            <label>Subject</label>

            <input type="text"
                   name="subject"
                   placeholder="Example: Broken classroom fan"
                   required>
        </div>

        <div class="form-group">
            <label>Description</label>

            <textarea name="description"
                      placeholder="Describe the problem in detail..."
                      required></textarea>
        </div>

        <div class="form-group">
            <label>Location</label>

            <input type="text"
                   name="location"
                   placeholder="Example: Block A - Room 203"
                   required>
        </div>

        <div class="form-group">
            <label>Date</label>

            <input type="date"
                   name="date"
                   required>
        </div>

        <div class="form-group">
            <label>Evidence Photo</label>

            <input type="file"
                   name="complaintPhoto"
                   accept="image/*">

            <small>
                📷 Upload a photo of the issue if available.
            </small>
        </div>

        <div class="hero-buttons">

            <button type="submit"
                    class="btn btn-primary">
                📢 Submit Complaint
            </button>

            <a href="${pageContext.request.contextPath}/complaints"
               class="btn btn-secondary">
                Cancel
            </a>

        </div>

    </form>

</div>


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
