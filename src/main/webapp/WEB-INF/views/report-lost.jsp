<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>CampusConnect | Report Lost Item</title>


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
    🔍 Lost & Found
</span>

<h1>Report a Lost Item</h1>

<p>
    Tell the campus community about something you lost.
</p>


</section>

<section class="section">


<div class="form-container">

    <h2>Lost Item Details</h2>

    <form action="${pageContext.request.contextPath}/lost-found/save"
          method="post"
          enctype="multipart/form-data">

        <input type="hidden" name="type" value="LOST">

        <div class="form-group">
            <label>Item Name</label>
            <input type="text"
                   name="itemName"
                   placeholder="Example: Black Wallet"
                   required>
        </div>

        <div class="form-group">
            <label>Description</label>
            <textarea name="description"
                      placeholder="Describe the item..."
                      required></textarea>
        </div>

        <div class="form-group">
            <label>Lost Location</label>
            <input type="text"
                   name="location"
                   placeholder="Example: College Library"
                   required>
        </div>

        <div class="form-group">
            <label>Date</label>
            <input type="date"
                   name="date"
                   required>
        </div>

        <div class="form-group">
            <label>Your Name</label>
            <input type="text"
                   name="contactName"
                   placeholder="Enter your name"
                   required>
        </div>

        <div class="form-group">
            <label>Email</label>
            <input type="email"
                   name="contactEmail"
                   placeholder="Enter your email"
                   required>
        </div>

        <div class="form-group">
            <label>Item Photo</label>

            <input type="file"
                   name="itemPhoto"
                   accept="image/*">

            <small>
                📷 Upload an image or use your camera on supported devices.
            </small>
        </div>

        <div class="hero-buttons">

            <button type="submit"
                    class="btn btn-primary">
                🔍 Submit Lost Item
            </button>

            <a href="${pageContext.request.contextPath}/lost-found"
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
