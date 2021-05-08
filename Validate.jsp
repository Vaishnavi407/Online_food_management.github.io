<%@page import="model.CustomerDetails" %>
<%@page import="dao.CustomerDetailsDao" %>


<%
   String email=request.getParameter("email");
   String password=request.getParameter("password");

   CustomerDetails customerDetails=new CustomerDetails();
   customerDetails.setEmail(email);
   customerDetails.setPassword(password);
   
   CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();
   Boolean b=customerDetailsDao.Validate(customerDetails);
   /*
   if(b==true)
   {
	   session.setAttribute("email",email);
	   response.sendRedirect("Welcome.jsp");
   }
   */
   if(b==true)
   {
	   session.setAttribute("firstName", customerDetails.getFirstName());
	   response.sendRedirect("Welcome.jsp");
   }
   else
   {
	   application.setAttribute("email",email);
	   response.sendRedirect("Invalid.jsp");
   }

%>