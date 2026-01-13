<%@page import="Insert.DoctorDao"%>
<jsp:useBean id="d" class="Insert.Doctors"></jsp:useBean>
<jsp:setProperty property="*" name="d"/>
<%
String status=DoctorDao.InsertDoctors(d);
if(status.equals("success")){
	response.sendRedirect("viewData.jsp");
}%>