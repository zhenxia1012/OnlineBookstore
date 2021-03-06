﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="_contact" %>


<!DOCTYPE HTML>
<html>
	<head>
		<title>Contact</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
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
						<div class="clear"> </div>  <hr  style="position: absolute; left: 10px; width: 100%; top: 144px;"/>
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
				</div><!----//End-bottom-header---->
			<!---//End-header---->
		<!--- start-content---->
		<div class="content contact-main">
			<!----start-contact---->
			<div class="contact-info">
					
					 <div class="wrap">
					 <div class="contact-grids">
							 <div class="col_1_of_bottom span_1_of_first1">
								    <h5>我们的地址</h5>
								    <ul class="list3">
										<li>
											<img src="images/home.png" alt="">
											<div class="extra-wrap">
											 <p>山东省济南市舜华路1500号</p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="col_1_of_bottom span_1_of_first1">
								    <h5>联系电话</h5>
									<ul class="list3">
										<li>
											   <img src="images/phone.png" alt="">
											<div class="extra-wrap">
												<p><span>Telephone:</span>+86-10-87654321</p>
											</div>
												<img src="images/fax.png" alt="">
											<div class="extra-wrap">
												<p><span>FAX:</span>+1 800 589 2587</p>
											</div>
										</li>
									</ul>
								</div>
								<div class="col_1_of_bottom span_1_of_first1">
									 <h5>Email</h5>
								    <ul class="list3">
										<li>
											<img src="images/email.png" alt="">
											<div class="extra-wrap">
											  <p><span class="mail"><a href="mailto:yoursite.com">给我们发邮件</a></span></p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="clear"></div>
					 </div>
					 	<form method="post" action="contact-post.aspx">
					          <div class="contact-form">
								<div class="contact-to">
			                     	<input type="text" class="text" value="您的姓名..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name...';}">
								 	<input type="text" class="text" value="您的e-mail..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email...';}">
								 	<input type="text" class="text" value="您的问题..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject...';}">
								</div>
								<div class="text2">
				                   <textarea value="Message:" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">详细信息...</textarea>
				                </div>
				               <span><input type="submit" class="" value="提交给我们	"></span>
				                <div class="clear"></div>
				               </div>
				           </form>
							</div>
			</div>
			<!----//End-contact---->
		</div>
		<!---- start-bottom-grids---->
        <div class="bottom-grids">
			<div class="bottom-top-grids">
				<div class="wrap">
					<div class="bottom-top-grid">
						<h4>获取帮助</h4>
						<ul>
							<li><a href="contact.aspx">联系我们</a></li>
							<li><a href="#">折扣信息</a></li>
							<li><a href="#">售后服务</a></li>
							
						</ul>
					</div>
					<div class="bottom-top-grid">
						<h4>订单选项&amp;需知</h4>
						<ul>
							<li><a href="#">支付选项</a></li>
							<li><a href="#">邮寄方式</a></li>
							<li><a href="#">退换货</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid last-bottom-top-grid">
						<h4>注册</h4>
						<p>注册一个新的账户，获取最新，最全的图书购物体验。</p>
						<a class="learn-more" href="#">获取更多详情</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
			
		</div><!---- //End-bottom-grids---->
		<!--- //End-content---->
		<!---start-footer---->
		
		<!---//End-footer---->
		<!---//End-wrap---->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

