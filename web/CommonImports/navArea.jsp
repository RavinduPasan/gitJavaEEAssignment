<%-- 
    Document   : navArea
    Created on : Apr 9, 2015, 1:00:41 PM
    Author     : Ravindu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="#"><i class="fa fa-cog"></i>Administrator Login</a></li>
                            <li><a href="#"><i class="fa fa-forumbee"></i>Forum</a></li>
                            <li><a href="checkout.jsp"><i class="fa fa-shopping-cart"></i>Checkout</a></li>
                            <li><a href="#"><i class="fa fa-user"></i>My Account</a></li>
                        </ul>
                  </div>
              </div>
                
                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <form class="clock" name="clock" onSubmit="0">
                                <div align="center"><center><p><input type="text" name="face" size="10"  value disabled></p>
                                </center></div>
                                </form>
                            </li>
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key">Currency : </span><span class="value">LKR</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">USD</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    
    <div class="site-branding-area">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="logo">
                        <h1><a href="index.jsp">E<span>lectroHouse</span></a></h1>
                    </div>
                </div>
                
                <div class="col-sm-6">
                    <div class="shopping-item">
                        <a href="cart.jsp">Cart - <span class="cart-amunt">$800</span> <i class="fa fa-shopping-cart"></i> <span class="product-count">5</span></a>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End site branding area -->
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>                    </button>
                </div> 
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">Home</a></li>
                        <li class ="dropdown dropdown-small">
                            <a href="product.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            Products
                            <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li class="product_tv_link"><a href="productTelevision.jsp">Televisions</a></li>
                                <li class="divider"></li>
                                <li class="product_homet_link"><a href="productHomeTheatre.jsp">Home Theater Systems</a></li>
                                <li class="divider"></li>
                                <li class="product_ref_link"><a href="productRefrigerator.jsp">Refrigerators</a></li>
                                <li class="divider"></li>
                                <li class="product_wmach_link"><a href="productWashingMachine.jsp">Washing Machines</a></li>
                            </ul>
                        </li>
                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="#">About us</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> 
<!-- End mainmenu area -->
</html>
