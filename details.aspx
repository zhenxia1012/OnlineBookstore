<%@ Page Language="C#" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="_details" %>



<!DOCTYPE HTML>
<html>
	<head>
		<title>Details</title>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8"/>
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
		<!-- Owl Carousel Assets -->
		<link href="css/owl.carousel.css" rel="stylesheet">
		<script src="js/jquery-1.9.1.min.js"></script> 
		     <!-- Owl Carousel Assets -->
		    <!-- Prettify -->
		    <script src="js/owl.carousel.js"></script>
		        <script>
		    $(document).ready(function() {
		
		      $("#owl-demo").owlCarousel({
		        items : 3,
		        lazyLoad : true,
		        autoPlay : true,
		        navigation : true,
			    navigationText : ["",""],
			    rewindNav : false,
			    scrollPerPage : false,
			    pagination : false,
    			paginationNumbers: false,
		      });
		
		    });
		    </script>
		   <!-- //Owl Carousel Assets -->
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
									<li>满50元包邮
                                      <label>全场满99-10元</label>
								    </li>
								  </ul>
								</div>
							</div>
							<div class="clear"> </div>
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
						<div class="clear"> </div>
                          <hr  style="position: absolute; left: 8px; width: 100%; top: 144px;"/>
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
		<div class="content details-page">
			<!---start-product-details--->
			<div class="product-details">
				<div class="wrap">
					<ul class="product-head">
						<li><a href="index.aspx">首页</a> &gt;<span></span></li>
						<li class="active-page"><a href="#">图书详情</a></li>
						<div class="clear"> </div>
					</ul>
				<!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
				    jQuery(document).ready(function ($) {

				        $('#etalage').etalage({
				            thumb_image_width: 300,
				            thumb_image_height: 400,
				            source_image_width: 900,
				            source_image_height: 1000,
				            show_hint: true,
				            click_callback: function (image_anchor, instance_id) {
				                alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
				            }
				        });
				        // This is for the dropdown list example:
				        $('.dropdownlist').change(function () {
				            etalage_show($(this).find('option:selected').attr('class'));
				        });

				    });
				</script>
				<!----//details-product-slider--->
				<div class="details-left">
					<div class="details-left-slider">
						<ul id="etalage">
						
						
						
							<li>
								<img class="etalage_thumb_image" src="images/product-slide/image7_thumb.jpg" />
								<img class="etalage_source_image" src="images/product-slide/image7_large.jpg" />
							</li>
						</ul>
					</div>
					<div class="details-left-info">
						<div class="details-right-head">
						<h1>Product Name Goes Here</h1>
						<ul class="pro-rate">
							<li><a class="product-rate" href="#"> <label> </label></a> <span> </span></li>
							<li><a href="#">0 Review(s) Add Review</a></li>
						</ul>
						<p class="product-detail-info">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>
						<a class="learn-more" href="#"><h3>MORE DETAILS</h3></a>
						<div class="product-more-details">
							<ul class="price-avl">
								<li class="price"><span>$153.39</span><label>$145.72</label></li>
								
								<div class="clear"> </div>
							</ul>
							<ul class="product-colors">
								<h3>available Colors ::</h3>
								<li><a class="color1" href="#"><span> </span></a></li>
								<li><a class="color2" href="#"><span> </span></a></li>
								<li><a class="color3" href="#"><span> </span></a></li>
								<li><a class="color4" href="#"><span> </span></a></li>
								<li><a class="color5" href="#"><span> </span></a></li>
								<li><a class="color6" href="#"><span> </span></a></li>
								<li><a class="color7" href="#"><span> </span></a></li>
								<li><a class="color8" href="#"><span> </span></a></li>
								<div class="clear"> </div>
							</ul>
							<ul class="prosuct-qty">
								<span>选择购买数量:</span>
								<select>
									<option>1</option>
									<option>2</option>
									<option>3</option>
									<option>4</option>
									<option>5</option>
									<option>6</option>
								</select>
                                <li class="stock"><i>存货</i></li>
							</ul>
							<input type="button" value="加入购物车" />
							
						</div>
					</div>
					</div>
					<div class="clear"> </div>
				</div>
				<div class="details-right">
					<a href="#">SEE MORE</a>
				</div>
				<div class="clear"> </div>
			</div>
			<!----product-rewies---->
			<div class="product-reviwes">
				<div class="wrap">
				<!--vertical Tabs-script-->
				<!---responsive-tabs---->
					<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
					<script type="text/javascript">
					    $(document).ready(function () {
					        $('#horizontalTab').easyResponsiveTabs({
					            type: 'default', //Types: default, vertical, accordion           
					            width: 'auto', //auto or any width like 600px
					            fit: true,   // 100% fit in a container
					            closed: 'accordion', // Start closed if in accordion view
					            activate: function (event) { // Callback function if tab is switched
					                var $tab = $(this);
					                var $info = $('#tabInfo');
					                var $name = $('span', $info);
					                $name.text($tab.text());
					                $info.show();
					            }
					        });

					        $('#verticalTab').easyResponsiveTabs({
					            type: 'vertical',
					            width: 'auto',
					            fit: true
					        });
					    });
					</script>
				<!---//responsive-tabs---->
				<!--//vertical Tabs-script-->
				<!--vertical Tabs-->
        		<div id="verticalTab">
		            <ul class="resp-tabs-list">
		                <li>图书描述</li>
		                <li>图书评价</li>
		               
		            </ul>
		            <div class="resp-tabs-container vertical-tabs">
		                <div>
		                	<h3> 商品细节</h3>
		                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis, ornare id lectus. Proin consectetur nibh quis urna gravida mollis.</p>
		               		<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor</p>
		                </div>
		                <div >
		                	<h3>Customer Reviews</h3>
		                	<p>There are no customer reviews yet.</p>
                             <form>
                                 <input type="text" placeholder="请输入您的评价"/>
                                 <input type="submit" value="提交评论" />
                             </form>
		                </div>
		            </div>
       		</div>
       		<div class="clear"> </div>
       		<!--- start-similar-products--->
       		<div class="similar-products">
       			<div class="similar-products-left">
       				<h3>SIMILAR PRODUCTS</h3>
       				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
       			</div>
       			<div class="similar-products-right">
       				<!-- start content_slider -->
       				<!--- start-rate---->
							<script src="js/jstarbox.js"></script>
							<link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
							<script type="text/javascript">
							    jQuery(function () {
							        jQuery('.starbox').each(function () {
							            var starbox = jQuery(this);
							            starbox.starbox({
							                average: starbox.attr('data-start-value'),
							                changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
							                ghosting: starbox.hasClass('ghosting'),
							                autoUpdateAverage: starbox.hasClass('autoupdate'),
							                buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
							                stars: starbox.attr('data-star-count') || 5
							            }).bind('starbox-value-changed', function (event, value) {
							                if (starbox.hasClass('random')) {
							                    var val = Math.random();
							                    starbox.next().text(' ' + val);
							                    return val;
							                }
							            })
							        });
							    });
							</script>
							<!---//End-rate---->
					       <div id="owl-demo" class="owl-carousel">
				                <div class="item" onclick="location.href='details.aspx';">
				                	<div class="product-grid fade sproduct-grid">
										<div class="product-pic">
											<a href="#"><img src="images/product1.jpg" title="product-name" /></a>
											<p>
											<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
											<span>Men's Firm-Ground Football Boot</span>
											</p>
										</div>
										<div class="product-info">
											<div class="product-info-cust">
												<a href="#">Details</a>
											</div>
											<div class="product-info-price">
												<a href="#">&#163; 200</a>
											</div>
											<div class="clear"> </div>
										</div>
										<div class="more-product-info">
											<span> </span>
										</div>
									</div>
				                </div>
				                <div class="item" onclick="location.href='details.aspx';">
				                	<div class="product-grid fade sproduct-grid">
										<div class="product-pic">
											<a href="#"><img src="images/product2.jpg" title="product-name" /></a>
											<p>
											<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
											<span>Men's Firm-Ground Football Boot</span>
											</p>
										</div>
										<div class="product-info">
											<div class="product-info-cust">
												<a href="#">Details</a>
											</div>
											<div class="product-info-price">
												<a href="#">&#163; 320</a>
											</div>
											<div class="clear"> </div>
										</div>
										<div class="more-product-info">
											<span> </span>
										</div>
									</div>
				                </div>
				                <div class="item" onclick="location.href='details.aspx';">
				                	<div class="product-grid fade sproduct-grid">
										<div class="product-pic">
											<a href="#"><img src="images/product3.jpg" title="product-name" /></a>
											<p>
											<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
											<span>Men's Firm-Ground Football Boot</span>
											</p>
										</div>
										<div class="product-info">
											<div class="product-info-cust">
												<a href="#">Details</a>
											</div>
											<div class="product-info-price">
												<a href="#">&#163; 380</a>
											</div>
											<div class="clear"> </div>
										</div>
										<div class="more-product-info">
											<span> </span>
										</div>
									</div>
				                </div>
				                <div class="item" onclick="location.href='details.aspx';">
				                	<div class="product-grid fade sproduct-grid">
										<div class="product-pic">
											<a href="#"><img src="images/product4.jpg" title="product-name" /></a>
											<p>
											<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
											<span>Men's Firm-Ground Football Boot</span>
											</p>
										</div>
										<div class="product-info">
											<div class="product-info-cust">
												<a href="#">Details</a>
											</div>
											<div class="product-info-price">
												<a href="#">&#163; 300</a>
											</div>
											<div class="clear"> </div>
										</div>
										<div class="more-product-info">
											<span> </span>
										</div>
									</div>
				                </div>
				                <div class="item" onclick="location.href='details.aspx';">
				                	<div class="product-grid fade sproduct-grid">
										<div class="product-pic">
											<a href="#"><img src="images/product5.jpg" title="product-name" /></a>
											<p>
											<a href="#"><small>Nike</small> HYPERVENOM <small>Phantom</small> FG</a>
											<span>Men's Firm-Ground Football Boot</span>
											</p>
										</div>
										<div class="product-info">
											<div class="product-info-cust">
												<a href="#">Details</a>
											</div>
											<div class="product-info-price">
												<a href="#">&#163; 270</a>
											</div>
											<div class="clear"> </div>
										</div>
										<div class="more-product-info">
											<span> </span>
										</div>
									</div>
				                </div>
			              </div>
				<!----//End-img-cursual---->
       			</div>
       			<div class="clear"> </div>
       		</div>
       		<!--- //End-similar-products--->
			</div>
			</div>
			<div class="clear"> </div>
			<!--//vertical Tabs-->
			<!----//product-rewies---->
			<!---//End-product-details--->
			</div>
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
		        <a class="learn-more" href="#">获取更多详情</a> </div>
		      <div class="clear"> </div>
	        </div>
	      </div>
    </div>
		<!---- //End-bottom-grids---->
		<!--- //End-content---->
		<!---start-footer----><!---//End-footer---->
		<!---//End-wrap---->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>

