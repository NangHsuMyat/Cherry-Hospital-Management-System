<!DOCTYPE html>
<html>
<head>
    <title>Add Doctor</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<div class="container mt-3">
    <h2>Add New Doctor</h2>
    <form action="AddDoctorServlet" method="post">
        <div class="mb-3">
            <label for="dname" class="form-label">Name</label>
            <input type="text" id="dname" name="dname" class="form-control" required />
        </div>
        <div class="mb-3">
            <label for="dspecialist" class="form-label">Specialist</label>
            <input type="text" id="dspecialist" name="dspecialist" class="form-control" required />
        </div>
        <div class="mb-3">
            <label for="ddegree" class="form-label">Degree</label>
            <input type="text" id="ddegree" name="ddegree" class="form-control" required />
        </div>
        <div class="mb-3">
            <label for="dschedule" class="form-label">Schedule</label>
            <input type="text" id="dschedule" name="dschedule" class="form-control" required />
        </div>
        <button type="submit" class="btn btn-success">Add Doctor</button>
        <a href="viewDoctors.jsp" class="btn btn-secondary">Cancel</a>
    </form>
</div>
<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>
