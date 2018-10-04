<%@ Page Language="C#" AutoEventWireup="true" CodeFile="detail1.aspx.cs" Inherits="detail1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Details</title>
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    </script>
    <!----webfonts---->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
        rel='stylesheet' type='text/css'>
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
    <script>        $(document).ready(function () { $(".megamenu").megamenu(); });</script>
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
    <form id="form1" runat="server">
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
                        <li><a class="cart" href="#"><span id="clickme"></span></a></li>
                        <!---start-cart-bag---->
                        <div id="cart">
                            Your Cart is Empty <span>(0)</span></div>
                        <!---start-cart-bag---->
                        <li><a class="info" href="#"><span></span></a></li>
                        <li><a class="order" href="#"><span></span></a></li>
                    </ul>
                </div>
                <div class="top-header-center">
                    <div class="top-header-center-alert-left">
                        <h3>
                            知识就是力量！！！</h3>
                    </div>
                    <div class="top-header-center-alert-right">
                        <div class="vticker">
                            <ul>
                                <li>满50元包邮
                                    <label>
                                        全场满99-10元</label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                </div>
                <div class="top-header-right">
                    <ul>
                        <li><a href="login.axpx">登录</a><span> </span></li>
                        <li><a href="register.axpx">注册</a></li>
                    </ul>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
        <!----start-mid-head---->
        <div class="mid-header">
            <div class="wrap">
                <div class="mid-grid-left">
                    <form class="address-area-select">
                    <input type="text" placeholder="搜索全部的超过10万本图书" />
                    </form>
                    <a class="searching" href="#"><span></span></a>
                </div>
                <div class="mid-grid-right">
                    <a class="logo" href="index.axpx"><span></span></a>
                </div>
                <div class="clear">
                </div>
                <hr style="position: absolute; left: 0px; width: 100%; top: 139px;" />
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
                    <li><a class="color8" href="#">文学</a> </li>
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
                    <li><a href="index.axpx">首页</a> &gt;<span></span></li>
                    <li class="active-page"><a href="#">图书详情</a></li>
                    <div class="clear">
                    </div>
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
                                <img class="etalage_source_image" src="images/books/书籍大图/文坛墨香/图片21.png" />
                            </li>
                        </ul>
                    </div>
                    <div class="details-left-info">
                        <div class="details-right-head" style="padding-left: 5px">
                            <h1>
                                将饮茶</h1>
                            <h2>
                                <span>杨绛</span> 著</h2>
                            <h2>
                                山大出版社</h2>
                            <p class="product-detail-info">
                                在这里放置书籍的简述信息</p>
                            <a class="learn-more" href="#detail">
                                <h3>
                                    浏览更多详情</h3>
                            </a>
                            <div class="product-more-details">
                                <ul class="price-avl">
                                    <li class="price"><span>$153.39</span><label>$145.72</label></li>
                                    <div class="clear">
                                    </div>
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
                    <div class="clear">
                    </div>
                </div>
                <div class="details-right">
                    <a href="#">了解更多</a>
                </div>
                <div class="clear">
                </div>
            </div>
            <!----product-rewies---->
            <div name="detail" class="product-reviwes">
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
                                <h3>
                                    商品细节</h3>
                                <p>
                                    在这里放置商品的详细信息</p>
                            </div>
                            <div>
                                <h3>
                                    Customer Reviews</h3>
                                <div class="comments">
                                    <asp:ListView ID="Comment_List" runat="server" DataKeyNames="comm_id">
                                        <LayoutTemplate>
                                            <table id="groupPlaceholderContainer" runat="server">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </LayoutTemplate>
                                        <GroupTemplate>
                                            <tr id="itemPlaceholderContainer" runat="server">
                                                <td id="itemPlaceholder" runat="server">
                                                </td>
                                            </tr>
                                        </GroupTemplate>
                                        <EmptyDataTemplate>
                                            <table id="Table1" runat="server">
                                                <tr>
                                                    <td>
                                                        没有找到数据
                                                    </td>
                                                </tr>
                                            </table>
                                        </EmptyDataTemplate>
                                        <EmptyItemTemplate>
                                            <td id="td1" runat="server" />
                                        </EmptyItemTemplate>
                                        <ItemTemplate>
                                            <div class="comment">
                                                <span>用户名:<%#Eval("user_name") %></span><p>
                                                    <%#Eval("comm_detail") %></p>
                                                <div class="rating5">
                                                    非常满意</div>
                                            </div>
                                        </ItemTemplate>
                                    </asp:ListView>
                                </div>
                                <form>
                                <asp:TextBox ID="Comment_input" runat="server" placeholder="请输入您的评价" />
                                <asp:DropDownList ID="RateSelect" runat="server" />
                                <asp:Button ID="submit" runat="server" Text="提交评论" onclick="submit_Click" />
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="clear">
                    </div>
                    <!--- start-similar-products--->
                    <div class="similar-products">
                        <div class="similar-products-right">
                            <!-- start content_slider -->
                            <!--- start-rate---->
                            <script src="js/jstarbox.js"></script>
                            <link rel="stylesheet" href="css/jstarbox.css" type="text/css" media="screen" charset="utf-8" />
                            <script type="text/javascript">
                                jQuery(function () {
                                    jQuery('.starbox').each(function () {
                                        var starbox = jQuery(this);
                                        starbox.starbox({ average: starbox.attr('data-start-value'), changeable: starbox.hasClass('unchangeable')
    ? false : starbox.hasClass('clickonce') ? 'once' : true, ghosting: starbox.hasClass('ghosting'),
                                            autoUpdateAverage: starbox.hasClass('autoupdate'), buttons: starbox.hasClass('smooth')
    ? false : starbox.attr('data-button-count') || 5, stars: starbox.attr('data-star-count')
    || 5
                                        }).bind('starbox-value-changed', function (event, value) {
                                            if (starbox.hasClass('random'))
                                            { var val = Math.random(); starbox.next().text(' ' + val); return val; }
                                        })
                                    });
                                }); </script>
                            <!---//End-rate---->
                            <!----//End-img-cursual---->
                        </div>
                        <div class="clear">
                        </div>
                    </div>
                    <!--- //End-similar-products--->
                </div>
            </div>
            <div class="clear">
            </div>
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
                    <h4>
                        获取帮助                <h4>
                        获取帮助</h4>
                    <ul>
                        <li><a href="contact.html">联系我们</a></li>
                        <li><a href="discount-info.html">折扣信息</a></li>
                        <li><a href="customer_service.html">售后服务</a></li>
                    </ul>
                </div>
                <div class="bottom-top-grid">
                    <h4>
                        订单选项&amp;需知</h4>
                    <ul>
                        <li><a href="pay-option.html">支付选项</a></li>
                        <li><a href="shipping.html">邮寄方式</a></li>
                        <li><a href="return.html">退换货</a></li>
                    </ul>
                </div>
                <div class="bottom-top-grid last-bottom-top-grid">
                    <h4>
                        注册</h4>
                    <p>
                        注册一个新的账户，获取最新，最全的图书购物体验。</p>
                    <a class="learn-more" href="#">获取更多详情</a>
                </div>
                <div class="clear">
                </div>
            </div>
        </div>
    </div>
    <!---- //End-bottom-grids---->
    <!---
    //End-content---->
    <!---start-footer---->
    <!---//End-footer---->
    <!---//End-wrap---->
    <div style="display: none">
        <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'
            charset='gb2312'></script>
    </div>
    </form>
</body>
</html>
