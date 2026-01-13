<%@page import="Insert.DoctorDao"%>
<%
int did=Integer.parseInt(request.getParameter("did"));
boolean status=DoctorDao.deleteDoctor(did);
if(status){
	response.sendRedirect("viewData.jsp");
}




%>