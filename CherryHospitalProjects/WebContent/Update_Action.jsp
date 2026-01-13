

<%@ page import="Insert.DoctorDao" %>
<jsp:useBean id="d" class="Insert.Doctors"></jsp:useBean>
<jsp:setProperty property="*" name="d" />

<%
boolean status = DoctorDao.updateDoctors(d);
if (status) {
    response.sendRedirect("viewData.jsp");
} else {
    out.println("<h3 style='color:red;'>Update failed. Please try again.</h3>");
}
%>

