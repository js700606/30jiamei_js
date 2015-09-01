<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="shopping.DAO.*,shopping.Class.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ProductList_All</title>
                     
        <!-- jQuery, Angular -->
       <!-- <script src="js/jquery.min.js" type="text/javascript"></script> -->
        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/productList.css">
        <%
            ProductDAO pd = new ProductDAOimpl();
            ArrayList<Product> list = pd.showAll();
        %>
    </head>
    <body>

        <div id="wrapper">
            <div id="store-cart-content" align="right" class="store-cart">
                <a href="#" > <img src="images/cart_white.png" alt="cart"></a>
                <b>0</b> items, <b >NT$0.00</b> 
            </div>
            <div id="search-bar" >
                <form class="navbar-form navbar-right">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Submit</button>
                </form>
            </div><hr />
            <% for (Product p : list) {%>
            <div class="conten-prodlist"> 
                <div class="productlist-photo"><a herf="ProductDetial.jsp" class='iframe'><img src="images/B_smallpics/s_<%=p.getProductID()%>.jpg" class="img-responsive" alt="Responsive image"></a></div>

                <div class="productlist-name textcolor"><%=p.getProductName()%></div> 
                <div class="productlist-decs textcolor"><%=p.getDescription()%></div> 
                <div class="cart-btnList"><button type="button" class="btn btn-lg btn-primary">加入購物車</button>
                    <a href="ProductDetial.jsp?id=<%=p.getProductID()%>" class="btn btn-primary btn-lg " role="button">詳細資料</a></div> 
                    <div class="productlist-unitPrice textcolor"><%=Math.round(p.getUnitPrice())%>元</div>                 
                <div class="productlist-id textcolor"><%=p.getProductID()%></div> 
            </div> 
            <%	}%>
            <P> </P>
            <P> </P>

        </div>
    </div>
    
    <!-- 彈出視窗第二段 -->
<!-- This contains the hidden content for inline calls -->
		<div style='display:none'>
			<div id='inline_content' style='padding:10px; background:#fff;'>
			<p><strong>This content comes from a hidden element on this page.</strong></p>
			<p>The inline option preserves bound JavaScript events and changes, and it puts the content back where it came from when it is closed.</p>
			<p><a id="click" href="#" style='padding:5px; background:#ccc;'>Click me, it will be preserved!</a></p>
			
			<p><strong>If you try to open a new Colorbox while it is already open, it will update itself with the new content.</strong></p>
			<p>Updating Content Example:<br />
			<a class="ajax" href="../content/ajax.html">Click here to load new content</a></p>
			</div>
		</div>
<!-- 彈出視窗第二段結束 -->
    
    
</body>
</html>