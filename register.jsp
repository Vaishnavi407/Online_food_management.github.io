<%@page import="java.sql.*"%>
<%@page import="dao.CustomerDetailsDao"%>
<%@page import="model.CustomerDetails" %>
<%@page import="java.io.*"%>

<%

try
{
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	Integer pincode = Integer.parseInt(request.getParameter("pincode"));
	String password = request.getParameter("password");
	
	CustomerDetails customerdetails=new CustomerDetails();
	
	customerdetails.setFirstName(firstName);
	customerdetails.setLastName(lastName);
	customerdetails.setEmail(email);
	customerdetails.setMobile(mobile);
	customerdetails.setAddress(address);
	customerdetails.setCity(city);
	customerdetails.setState(state);
	customerdetails.setPincode(pincode);
	customerdetails.setAddress(address);
	customerdetails.setPassword(password);
	
	
		CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();
		Integer i=customerDetailsDao.registerRecord(customerdetails);
		
	}
	catch(Exception e){
	out.println(e);
	}

%>