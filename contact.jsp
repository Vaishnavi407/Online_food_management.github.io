<%@page import="dao.ContactUsDao" %>
<%@page import="model.ContactUs" %>

<%

String fullName = request.getParameter("fullName");
String email = request.getParameter("email");
String message =request.getParameter("message");

ContactUs cu = new ContactUs();

cu.setFullName(fullName);

cu.setEmail(email);
cu.setMessage(message);
try 
{
ContactUsDao cuDao = new ContactUsDao(); 
Integer i=cuDao.addRecord(cu);
out.println("Your "+i+" Query Has Successfully Submitted!!!");
}
catch(Exception e) {}
out.println("<a href='index.jsp'>HOME</a> | ");
out.println("<a href='index.jsp/#contact'>Have More Queries??</a>");
%>