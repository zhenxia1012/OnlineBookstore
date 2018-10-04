<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_login" %>


<!DOCTYPE HTML>
<html>
	<head>
    
		<title>login</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1"  charset="utf-8">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<script src="js/jquery.min.js"></script>
		<!----start-alert-scroller---->
		<script type="text/javascript" src="js/jquery.easy-ticker.js"></script>
		<script type="text/javascript">
		    $(document).ready(function () {
		        $('#demo').hide();
		        $('.vticker').easyTicker();
		    });
		</script>
		<!----start-alert-scroller---->
		<!-- start menu -->
		<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="js/megamenu.js"></script>
		<script>		    $(document).ready(function () { $(".megamenu").megamenu(); });</script>
		<script src="js/menu_jquery.js"></script>
		<!-- //End menu -->
		<!---move-top-top---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
		    jQuery(document).ready(function ($) {
		        $(".scroll").click(function (event) {
		            event.preventDefault();
		            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
		        });
		    });
		</script>
		<!---//move-top-top---->
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="top-header">
					<div class="wrap">
						<div class="top-header-left">
							<ul>
								<!---cart-tonggle-script---->
								<script type="text/javascript">
								    $(function () {
								        var $cart = $('#cart');
								        $('#clickme').click(function (e) {
								            e.stopPropagation();
								            if ($cart.is(":hidden")) {
								                $cart.slideDown("slow");
								            } else {
								                $cart.slideUp("slow");
								            }
								        });
								        $(document.body).click(function () {
								            if ($cart.not(":hidden")) {
								                $cart.slideUp("slow");
								            }
								        });
								    });
								</script>
								<!---//cart-tonggle-script---->
								<li><a class="cart" href="#"><span id="clickme"> </span></a></li>
								<!---start-cart-bag---->
								<div id="cart">Your Cart is Empty <span>(0)</span></div>
								<!---start-cart-bag---->
								<li><a class="info" href="#"><span> </span></a></li>
							</ul>
						</div>
						<div class="top-header-center">
							<div class="top-header-center-alert-left">
								<h3>知识就是力量！！！</h3>
							</div>
							<div class="top-header-center-alert-right">
								<div class="vticker">
								  <ul>
									 <li>满50元包邮 <label>全场满99-10元</label></li>
								  </ul>
								</div>
							</div>
	
						</div>
						<div class="top-header-right">
							<ul>
								<li><a href="login.aspx">登录</a><span> </span></li>
								<li><a href="register.aspx">注册</a></li>
							</ul>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<!----start-mid-head---->
				<div class="mid-header">
					<div class="wrap">
						<div class="mid-grid-left">
							<form>
								<input type="text" placeholder="搜索全部的超过10万本图书" />
							</form>
						</div>
						<div class="mid-grid-right">
							<a class="logo" href="index.aspx"><span> </span></a>
						</div>
						<div class="clear"> </div>  <hr  style="position: absolute; left: 8px; width: 100%; top: 144px;"/>
					</div>
				</div>
				<!----//End-mid-head---->
				<!----start-bottom-header---->
				<div class="header-bottom">
					<div class="wrap">
					<!-- start header menu -->
							<ul class="megamenu skyblue">
								<li class="grid"><a class="color2" href="#">热门小说</a></li>
					  			<li class="active grid"><a class="color4" href="#">儿童读物</a></li>				
									<li><a class="color5" href="#">生活百科</a></li>
									<li><a class="color6" href="#">科学世界</a></li>
									<li><a class="color7" href="#">历史纵横</a></li>
									<li><a class="color8" href="#">文学</a>
									
									</li>
							</ul>

					</div>
				</div>
				</div>
				<!----//End-bottom-header---->
			<!---//End-header---->
		<!--- start-content---->
		<div class="content login-box">
			<div class="login-main">
				<div class="wrap">
					<h1 style="position: relative; left: 20px;">注册/登陆	</h1>
					<div class="login-left">
					  <h3>新用户注册</h3>
						<p>通过创建一个帐户与我们的商店,你将能够通过结帐过程更快,存储多个航运地址,查看和跟踪你的订单在你的帐户和获取更多功能。</p>
						<a class="acount-btn" href="register.aspx">加入在线书店</a>
					</div>
          <hr   style="position: absolute; width: 0.001px; height: 400px; left: 781px; top: 277px;"    color= "black ">
					<div class="login-right">
					  <h3>已经是我们的一员</h3>
						<p>如果你有一个在线书店的账户，请直接登录</p>
						<form>
							<div>
								<span>Email 地址<label>*</label></span>
								<input type="text"/> 
							</div>
							<div>
								<span>密码<label>*</label></span>
								<input type="text"> 
							</div>
							<a class="forgot" href="#">忘记密码了?</a>
							<input type="submit" value="点击登录" />
						</form>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
		<!---- start-bottom-grids---->
		<div class="bottom-grids">
			<div class="bottom-top-grids">
				<div class="wrap">
					<div class="bottom-top-grid">
						<h4>GET HELP</h4>
						<ul>
							<li><a href="contact.aspx">Contact us</a></li>
							<li><a href="#">Shopping</a></li>
							<li><a href="#">NIKEiD</a></li>
							<li><a href="#">Nike+</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid">
						<h4>ORDERS</h4>
						<ul>
							<li><a href="#">Payment options</a></li>
							<li><a href="#">Shipping and delivery</a></li>
							<li><a href="#">Returns</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid last-bottom-top-grid">
						<h4>REGISTER</h4>
						<p>Create one account to manage everything you do with Nike, from your shopping preferences to your Nike+ activity.</p>
						<a class="learn-more" href="#">Learn more</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
			<div class="bottom-bottom-grids">
				<div class="wrap">
					<div class="bottom-bottom-grid">
						<h6>EMAIL SIGN UP</h6>
						<p>Be the first to know about new products and special offers.</p>
						<a class="learn-more" href="#">Sign up now</a>
					</div>
					<div class="bottom-bottom-grid">
						<h6>GIFT CARDS</h6>
						<p>Give the gift that always fits.</p>
						<a class="learn-more" href="#">View cards</a>
					</div>
					<div class="bottom-bottom-grid last-bottom-bottom-grid">
						<h6>STORES NEAR YOU</h6>
						<p>Locate a Nike retail store or authorized retailer.</p>
						<a class="learn-more" href="#">Search</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
		<!---- //End-bottom-grids---->
		<!--- //End-content---->
		<!---start-footer---->
		<div class="footer">
			<div class="wrap">
				<div class="footer-left">
					<ul>
						<li><a href="#">United Kingdom</a> <span> </span></li>
						<li><a href="#">Terms of Use</a> <span> </span></li>
						<li><a href="#">Nike Inc.</a> <span> </span></li>
						<li><a href="#">Launch Calendar</a> <span> </span></li>
						<li><a href="#">Privacy & Cookie Policy</a> <span> </span></li>
						<li><a href="#">Cookie Settings</a></li>
						<div class="clear"> </div>
					</ul>
				</div>
				<div class="footer-right">
					<p>Template</p>
					<script type="text/javascript">
					    $(document).ready(function () {
					        /*
					        var defaults = {
					        containerID: 'toTop', // fading element id
					        containerHoverID: 'toTopHover', // fading element hover id
					        scrollSpeed: 1200,
					        easingType: 'linear' 
					        };
					        */

					        $().UItoTop({ easingType: 'easeOutQuart' });

					    });
					</script>
			    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"> </span></a>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-footer---->
		<!---//End-wrap---->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

