<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	 <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MIST7570 Final Project Products</title>
</head>
<body>
    <sql:setDataSource
        var="DB"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/test"
        user="root" password="root"
    />
     
 <sql:query dataSource="${DB}" var="result">
SELECT * FROM test.products;
</sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Products</h2></caption>
            <tr>
                <th>Product Name</th>
                <th>Product Image</th>
                <th>Price</th>
                <th>Product Picture</th>
                <th>Inventory</th>
                <th>Purchase Amount</th>
            </tr>
            <c:forEach items="${result.rows}"  var="rows">
            <form name="myForm" action="cart.jsp" method="post">
                 <tr>
                    <td><c:out value="${rows.productid}" /></td>
                    <td><c:out value="${rows.ProductName}" /></td>
                    <td><img src="<c:out value="${rows.ProductImage}" />" style="width:200px;height:200px;"></img></td>
                    <td><c:out value="${rows.Price}" /></td>
                    <td><c:out value="${rows.Inventory}" /></td>
                    
                    <td><select name="Amount"> 
                    
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                 
                    
                    </select></td>
                </tr>
            </c:forEach>
        </table>
        
        <input type="submit" value="Submit" name="submit"/>
        
        </form>
    </div>
</body>
</html>