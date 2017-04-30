<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MIST7570 Final Project Products</title>
</head>
<body>
    <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/mydb"
        user="root" password="root"
    />
     
    <sql:query var="listProducts"   dataSource="${myDS}">
        SELECT * FROM products;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>List of Products</h2></caption>
            <tr>
                <th>Product Name</th>
                <th>Product Name</th>
                <th>Product Image</th>
                <th>Price</th>
                <th>Product Picture</th>
                <th>Inventory</th>
                <th>Purchase Amount</th>
            </tr>
            <c:forEach var="products" items="${listproducts.rows}">
            <form name="myForm" action="cart.jsp" method="post">
                 <tr>
                    <td><c:out value="${products.productid}" /></td>
                    <td><c:out value="${products.ProductName}" /></td>
                    <td><c:out value="${products.ProductImage}" /></td>
                    <td><c:out value="${products.Price}" /></td>
                    <td><c:out value="${products.Inventory}" /></td>
                    
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
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    
                    </select></td>
                </tr>
            </c:forEach>
        </table>
        
        <input type="submit" value="Submit" name="submit"/>
        
        </form>
    </div>
</body>
</html>