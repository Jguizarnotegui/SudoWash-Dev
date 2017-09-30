<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    <html>
        <head>
            <title>Shopping Cart</title>
            <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        </head>

        <body>
            <%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
            <p><font face="Verdana, Arial, Helvetica, sans-serif"><strong>Shopping Cart</strong></font></p>
            <p><a href="/ModelList.jsp" mce_href="ModelList.jsp">Model List</a> </p>
            <table width="75%" border="1">
                <tr bgcolor="#CCCCCC">
                    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Model
                        Description</font></strong></td>
                    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
                    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
                    Price</font></strong></td>
                    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
                </tr>
                    <jsp:useBean id="cart" scope="sess" class="in.shoppingcart.beans.BeansForCart" />
                    <c:if test="${cart.lineItemCount==0}">
                <tr>
                    <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
                </tr>
                </c:if>
                <c:forEach var="crtItm" items="${cart.cartItems}" varStatus="cnt">
                <form name="item" method="POST" action="servlet/crtHandler">
                <tr>
                    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${crtItm.partNumber}"/></b><br/>
                    <c:out value="${crtItm.modelDescription}"/></font></td>
                    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndice' value='<c:out value="${cnt.count}"/>'><input type='text' name="quantity" value='<c:out value="${crtItm.quantity}"/>' size='2'> <input type="submit" name="action" value="Update">
                    <br/> <input type="submit" name="action" value="Delete"></font></td>
                    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${crtItm.unitCost}"/></font></td>
                    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${crtItm.totalCost}"/></font></td>
                </tr>
                </form>
                </c:forEach>
                <tr>
                    <td colspan="2"> </td>
                    <td> </td>
                    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: $<c:out value="${cart.orderTotal}"/></font></td>
                </tr>
            </table>
        </body>
</html>