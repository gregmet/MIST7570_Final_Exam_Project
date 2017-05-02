<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" type="text/css" href="style.css">

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MIST7570 Final Project Products</title>
</head>
<body>
<img src="images/jaymargreg.jpg" style="height:200px; padding-left: 29%;"></img>


    <sql:setDataSource
        var="DB"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/test"
        user="root" password="root"
    />
     
 <sql:query dataSource="${DB}" var="result">
SELECT * FROM test.shoppingcart;
</sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Shopping Cart</h2></caption>
            <tr>
                <th>Product ID</th>
                <th>Product Name</th>
                <th>Image</th>
                <th>Price</th>
                <th>Inventory</th>
                <th>Remove From Cart?</th>
            </tr>
            <c:forEach items="${result.rows}"  var="rows">
            <form name="myForm" action="cart.jsp" method="post">
                 <tr>
                    <td><c:out value="${rows.productid}" /></td>
                    <td><c:out value="${rows.ProductName}" /></td>
                    <td><img src="<c:out value="${rows.ProductImage}" />" style="width:200px;height:200px;"></img></td>
                    <td><c:out value="${rows.Price}" /></td>
                    <td><c:out value="${rows.Inventory}" /></td>
                    <td></td>
                    
                
                </tr>
            </c:forEach>
        </table>
        
        <input type="submit" value="Delete" name="delete"/>
        </form>
        <form name="myForm" action="products.jsp" method="post">
        <input type="submit" value="Back to Products" name="BackToProducts"/>
        
        
        </form>
    </div>
</body>
</html>