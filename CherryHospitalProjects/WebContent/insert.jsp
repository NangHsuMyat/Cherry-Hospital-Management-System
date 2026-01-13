<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CHERRY - Insert Doctor</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&family=Roboto+Condensed:wght@400;700&display=swap" rel="stylesheet">

<style>
body {
    background: linear-gradient(135deg, #f0f4f8, #e0eef5);
    font-family: 'Roboto', sans-serif;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
}

/* Glassmorphism form card */
.form-container {
    backdrop-filter: blur(12px);
    background: rgba(255, 255, 255, 0.85);
    border-radius: 25px;
    max-width: 600px;
    margin: 60px auto;
    padding: 50px 40px;
    border: 2px solid rgba(19, 197, 221, 0.5);
    box-shadow: 0 15px 40px rgba(0,0,0,0.15);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}
.form-container:hover {
    transform: translateY(-5px);
    box-shadow: 0 25px 60px rgba(0,0,0,0.25);
}

/* Header */
h1 {
    text-align: center;
    color: #13C5DD;
    font-weight: 900;
    font-size: 2.2rem;
    margin-bottom: 40px;
    text-shadow: 1px 1px 2px rgba(0,0,0,0.1);
}

/* Floating input */
.form-floating>.form-control {
    border-radius: 15px;
    padding: 1.25rem .75rem .25rem .75rem;
    border: 1px solid #ccc;
    transition: all 0.3s ease;
}
.form-floating>.form-control:focus {
    border-color: #13C5DD;
    box-shadow: 0 0 10px rgba(19,197,221,0.4);
}

/* Turquoise button */
.turquoise-btn {
    background: linear-gradient(90deg, #13C5DD, #0faabf);
    color: white;
    border: none;
    border-radius: 20px;
    font-weight: bold;
    padding: 14px;
    width: 100%;
    font-size: 1.1rem;
    box-shadow: 0 8px 25px rgba(0,0,0,0.15);
    transition: all 0.3s ease;
}
.turquoise-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 12px 30px rgba(0,0,0,0.25);
    background: linear-gradient(90deg, #0faabf, #0d9cae);
}

/* Responsive */
@media (max-width: 768px) {
    .form-container {
        margin: 30px 15px;
        padding: 30px 20px;
    }
}
</style>
</head>
<body>

<%@ include file="Anavi.jsp" %>

<div class="form-container">
    <h1>Insert Doctor Registration</h1>

    <form action="Insert_Action.jsp" method="get">
        <div class="form-floating mb-3">
            <input type="text" id="dname" name="dname" class="form-control" placeholder="Doctor Name" required>
            <label for="dname">Doctor Name</label>
        </div>

        <div class="form-floating mb-3">
            <input type="text" id="dspecialist" name="dspecialist" class="form-control" placeholder="Doctor Specialize" required>
            <label for="dspecialist">Doctor Specialize</label>
        </div>

        <div class="form-floating mb-3">
            <input type="text" id="ddegree" name="ddegree" class="form-control" placeholder="Doctor Degree" required>
            <label for="ddegree">Doctor Degree</label>
        </div>

        <div class="form-floating mb-4">
            <input type="text" id="dschedule" name="dschedule" class="form-control" placeholder="Doctor Schedule" required>
            <label for="dschedule">Doctor Schedule</label>
        </div>

        <button type="submit" class="turquoise-btn">Insert Doctor Information</button>
    </form>
</div>

<!-- Footer -->
<div class="container-fluid bg-dark text-light border-top border-secondary py-4 mt-auto">
    <div class="container d-flex justify-content-between flex-wrap">
        <p class="mb-0">&copy; Cherry Health Care. All Rights Reserved.</p>
        <p class="mb-0">Designed by <a class="text-primary" href="https://htmlcodex.com">Cherry Team</a></p>
    </div>
</div>

<!-- JS -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
