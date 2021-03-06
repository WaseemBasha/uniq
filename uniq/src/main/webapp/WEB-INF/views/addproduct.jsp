<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container wrapper">
<div class="container">
<url:url var="url" value="/admin/product/saveproduct"></url:url>
<form:form action="${url }" modelAttribute="product" method="post">

<div class="form-group">
<label for="id"></label>
<form:hidden path="id" ></form:hidden>
</div>

<div class="form-group">
<label for="name">Enter Product name</label>
<form:input path="name"></form:input>
</div>

<div class="form-group">
<label for="manufacturer">Product Manufacturer</label>
<form:input  path="manufacturer"></form:input>
</div>


<div class="form-group">
<label for="price">Product Price</label>
<form:input  path="price"></form:input>
</div>


<div class="form-group">
<label for="unitInStock">Unit In Stock</label>
<form:input  path="unitInStock"></form:input>
</div>

<input type="submit" value="Add Product">

</form:form>

</div>

</div>
</body>
<%@ include file="footer.jsp" %>
</html>