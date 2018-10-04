<%@ Page Language="C#" AutoEventWireup="true" CodeFile="unpaid.aspx.cs" Inherits="unpaid" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<title>order-details</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</script>
<!----webfonts---->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
    rel='stylesheet' type='text/css'>
<!----//webfonts---->
<!----start-alert-scroller---->
<script src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.easy-ticker.js"></script>
<!--<script type="text/javascript">
		window.onload=function(){
		var stateorg = document.location.search;
		var stateInt = stateorg.split("=");
		var stateRes = stateInt[1];
        showOldorNew(stateRes);
        }
		$(document).ready(function(){
			$('#demo').hide();
			$('.vticker').easyTicker();
		});
		
		function showOldorNew(state){
		var ordernew=document.getElementById("order-info-new");
		var orderold=document.getElementById("order-info-old");
		if(state=="0"){
		ordernew.style.display="none";
		orderold.style.display="block";
		}
		else{
		ordernew.style.display="block";
		orderold.style.display="none";
		}
		}
		</script>-->
<!----start-alert-scroller---->
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>    $(document).ready(function () { $(".megamenu").megamenu(); });</script>
<script src="js/menu_jquery.js"></script>
<!-- //End menu -->
<!---slider---->
<link rel="stylesheet" href="css/slippry.css">
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/scripts-f0e4e0c2.js" type="text/javascript"></script>
<script>
    jQuery('#jquery-demo').slippry({
        // general elements & wrapper
        slippryWrapper: '<div class="sy-box jquery-demo" />', // wrapper to wrap everything, including pager
        // options
        adaptiveHeight: false, // height of the sliders adapts to current slide
        useCSS: false, // true, false -> fallback to js if no browser support
        autoHover: false,
        transition: 'fade'
    });
</script>
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
                                        全场满99-10元</label></li>
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
                <div class="clear">
                </div>
            </div>
        </div>
        <!----start-mid-head---->
        <div class="mid-header">
            <div class="wrap">
                <div class="mid-grid-left">
                </div>
                <asp:TextBox ID="Search" runat="server" placeholder="搜索全部的超过10万本图书" BorderStyle="Solid"></asp:TextBox>
                <asp:Button ID="SearchPress" runat="server" Text="搜索" OnClick="SearchPress_Click">
                </asp:Button>
            </div>
            <div class="mid-grid-right">
                <a class="logo" href="index.aspx"><span></span></a>
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
                <li class="grid"><a class="color2">
                    <asp:LinkButton ID="story" runat="server" Text="热门小说" OnClick="story_Click"></asp:LinkButton></a></li>
                <li class="active grid"><a class="color4">
                    <asp:LinkButton ID="policy" runat="server" Text="政治军事" OnClick="policy_Click"></asp:LinkButton></a></li>
                <li><a class="color5">
                    <asp:LinkButton ID="Science" runat="server" Text="科学世界" OnClick="Science_Click"></asp:LinkButton></a></li>
                <li><a class="color6">
                    <asp:LinkButton ID="LifeScience" runat="server" Text="生活百科" OnClick="LifeScience_Click"></asp:LinkButton></a></li>
                <li><a class="color7">
                    <asp:LinkButton ID="History" runat="server" Text="历史纵横" OnClick="History_Click"></asp:LinkButton></a></li>
                <li><a class="color8">
                    <asp:LinkButton ID="Literature" runat="server" Text="文学" OnClick="Literature_Click"></asp:LinkButton></a>
                </li>
            </ul>
        </div>
    </div>
    </div>
    <!----//End-bottom-header---->
    <!---//End-header---->
    <!--- start-content---->
    <div class="wrap">
        <div class="content product-box-main">
            <div class="product-content-right">
                <div class="content-right-top-brands">
                    <h3>
                        人气榜</h3>
                    <ul>
                        <asp:ListView ID="Orderview" runat="server" DataKeyNames="book_id">
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
                                <li>
                                    <asp:LinkButton ID="book1" CommandArgument='<%#Eval("book_id") %>' runat="server"
                                        CausesValidation="False" OnClick="book1_Click"><%#Eval("book_name") %></asp:LinkButton><span
                                            class="click-num">点击量：<%#Eval("visit") %></span></li>
                            </ItemTemplate>
                        </asp:ListView>
                    </ul>
                </div>
                <div style="width: 90%; text-align: center; margin-top: 5px; font-size: 16px; padding: 5px;">
                    同类推荐
                </div>
                <div class="content-right-ad">
                    <div class="product-ad">
                        <img src="images/books/书籍大图/生活百科/图片6.png" width="120" height="150"><a href="#"><span>这就是马云</span></a>
                        <div class="product-show-price">
                            <span>25元</span>
                        </div>
                    </div>
                    <div class="product-ad">
                        <img src="images/books/书籍大图/生活百科/图片9.png" width="280" height="351"><a href="#">文具手帖</a>
                        <div class="product-show-price">
                            <span>31元</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-content-left product-box">
            <div class="product-box-head">
                <div class="product-box-head-left">
                    <a href="index.aspx" style="display: inline-block; float: left; color: #000">主页></a>
                    <a href="orders.aspx" style="display: inline-block; float: left; color: #000">订单列表></a>
                    <h3 style="display: inline-block; float: left">
                        订单号: <span>500</span></h3>
                </div>
                <div class="clear">
                </div>
            </div>
            <div id="order-info-new">
                <div class="address">
                    <div class="addressinfo">
                        收货地址
                    </div>
                    <div class="address-province">
                        <select class="address-province-select">
                            <option value="0">请选择</option>
                        </select>&nbsp省</div>
                    <div class="address-city">
                        <select class="address-city-select">
                            <option value="0">请选择</option>
                        </select>&nbsp市</div>
                    <div class="address-area">
                        <select class="address-area-select">
                            <option value="0">请选择</option>
                        </select>&nbsp区</div>
                    <div class="addressstreetinfo">
                        <asp:TextBox CssClass="addressstreetinfodetail" ID="Address" runat="server" placeholder="请在这里输入地址"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="addressrequired" runat="server" ControlToValidate="Address"
                            CssClass="failureNotification" ErrorMessage="地址是必须的." ToolTip="地址." ForeColor="#FF9900"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="contact">
                    <div class="contactinfo">
                        联系人
                    </div>
                    <div class="contactname">
                        <asp:TextBox CssClass="contactnamedetail" ID="Conactname" runat="server" placeholder="请在这里输入联系人姓名"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Conactname"
                            CssClass="failureNotification" ErrorMessage="联系人姓名是必须的." ToolTip="联系人姓名是必须的."
                            ForeColor="#FF9900"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="phone">
                    <div class="phoneinfo">
                        联系电话
                    </div>
                    <div class="phoneinfonumber">
                        <asp:TextBox CssClass="phoneinfonumberdetail" ID="Phonenumber" runat="server" placeholder="请在这里输入联系人电话"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="phonenumberrequired" runat="server" ControlToValidate="Phonenumber"
                            CssClass="failureNotification" ErrorMessage="联系人电话是必须的." ToolTip="联系人电话是必须的."
                            ForeColor="#FF9900"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="remark">
                    <div class="remarkinfo">
                        备注
                    </div>
                    <div class="remarkinfointro">
                        <asp:TextBox CssClass="remarkinfointrodetail" ID="Memo" runat="server" placeholder="请在这里输入备注"></asp:TextBox>
                    </div>
                </div>
                <ul class="booklist">
                    <asp:ListView ID="Order_unpayment" runat="server" DataKeyNames="book_id">
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
                            <li class="order-item">
                                <div class="book-info">
                                    <img></img>
                                    <a class="product-name" href="#">
                                        <%# Eval("book_name") %></a>
                                    <br />
                                    <p class="subtitle">
                                        <%# Eval("detail") %></p>
                                    <span>购买数量:<%# Eval("number") %></span><span>单价:<%#string.Format("{0:c}", Convert.ToDecimal(Eval("price")) * Convert.ToDecimal(Eval("discount")) / 100)%></span><span
                                        style="position: relative; margin-bottom: 0px" class="price-n">单品总价：<%# Eval("singleprice", "{0:c}")%></span></div>
                            </li>
                        </ItemTemplate>
                    </asp:ListView>
                </ul>
                <div>
                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="Order_unpayment" PageSize="4">
                        <Fields>
                            <asp:NextPreviousPagerField ShowPreviousPageButton="True" ShowNextPageButton="False" />
                            <asp:NumericPagerField ButtonCount="9" />
                            <asp:NextPreviousPagerField ShowPreviousPageButton="False" ShowNextPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
                <div class="order-state">
                    <asp:Button ID="Payment" runat="server" Text="支付订单" Style="position: relative; float: left;
                        margin-top: 12px; top: 0px;" CssClass="productCast" OnClick="Payment_Click">
                    </asp:Button>
                    <span style="position: relative; float: right; margin-top: 12px" class="price-n">
                        <asp:Label ID="TotalPrice" runat="server">订单总价：</asp:Label></span>
                </div>
            </div>
            <!----start-load-more-products---->
            <div class="loadmore-products">
            </div>
            <!----//End-load-more-products---->
        </div>
        <div class="clear">
        </div>
    </div>
    </form>
    <!---- start-bottom-grids---->
    <div class="bottom-grids">
        <div class="bottom-top-grids">
            <div class="wrap">
                <div class="bottom-top-grid">
                    <h4>
                        获取帮助</h4>
                    <ul>
                        <li><a href="contact.aspx">联系我们</a></li>
                        <li><a href="#">折扣信息</a></li>
                        <li><a href="#">售后服务</a></li>
                    </ul>
                </div>
                <div class="bottom-top-grid">
                    <h4>
                        订单选项&amp;需知</h4>
                    <ul>
                        <li><a href="#">支付选项</a></li>
                        <li><a href="#">邮寄方式</a></li>
                        <li><a href="#">退换货</a></li>
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
    <!---//End-footer---->
    <!---//End-wrap---->
    <div style="display: none">
    </div>
    </form>
</body>
</html>
