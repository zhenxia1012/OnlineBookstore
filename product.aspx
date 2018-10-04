<%@ Page Language="C#" AutoEventWireup="true" CodeFile="product.aspx.cs" Inherits="product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Products</title>
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1" charset="utf-8">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!----webfonts---->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
        rel='stylesheet' type='text/css'>
    <!----//webfonts---->
    <!----start-alert-scroller---->
    <script src="js/jquery.min.js"></script>
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
                    <asp:TextBox ID="Search" runat="server" placeholder="搜索全部的超过10万本图书" 
                        BorderStyle="Solid" ></asp:TextBox>
                        <asp:Button ID="SearchPress" runat="server" Text="搜索" 
                        onclick="SearchPress_Click"></asp:Button>
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
                    <li class="grid"><a class="color2" href="#">
                        <asp:LinkButton ID="story" runat="server" Text="热门小说" OnClick="story_Click"></asp:LinkButton></a></li>
                    <li class="active grid"><a class="color4" href="#">
                        <asp:LinkButton ID="ChildrenBook" runat="server" Text="政治军事" OnClick="ChildrenBook_Click"></asp:LinkButton></a></li>
                    <li><a class="color5" href="#">
                        <asp:LinkButton ID="Science" runat="server" Text="科学世界" OnClick="Science_Click"></asp:LinkButton></a></li>
                    <li><a class="color6" href="#">
                        <asp:LinkButton ID="LifeScience" runat="server" Text="生活百科" OnClick="LifeScience_Click"></asp:LinkButton></a></li>
                    <li><a class="color7" href="#">
                        <asp:LinkButton ID="History" runat="server" Text="历史纵横" OnClick="History_Click"></asp:LinkButton></a></li>
                    <li><a class="color8" href="#">
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
                    <h3 style="display: inline-block; float: left">
                        书籍 <span>
                            <asp:Label runat="server" ID="RecordCount">(<%#RecordCcount%>)</asp:Label></span></h3>
                </div>
                <div class="product-box-head-right">
                    <ul>
                        <li><span>排序方式:</span><a href="#"> </a></li>
                        <li>
                            <label>
                            </label>
                            <a href="#">
                                <asp:LinkButton ID="SaleCount" runat="server" Text="销量" OnClick="SaleCount_Click"></asp:LinkButton></a></li>
                        <li>
                            <label>
                            </label>
                            <a href="#">
                                <asp:LinkButton ID="NewBook" runat="server" Text="新品" OnClick="NewBook_Click"></asp:LinkButton></a></li>
                        <li>
                            <label>
                            </label>
                            <a href="#">
                                <asp:LinkButton ID="DisCount" runat="server" Text="折扣" OnClick="DisCount_Click"></asp:LinkButton></a></li>
                        <li><span>
                            <label>
                            </label>
                            <asp:LinkButton ID="PriceUp" runat="server" Text="价格" OnClick="PriceUp_Click"></asp:LinkButton></span></li>
                    </ul>
                </div>
                <div class="clear">
                </div>
            </div>
            <div class="productList">
                <div class="productDetail">
                    <div class="productDetailInfo">
                        <asp:ListView ID="ListView_Products" runat="server" DataKeyNames="book_id" OnPagePropertiesChanging="ListView_Products_PagePropertiesChanging">
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
                                <table border="2" width="365">
                                    <tr>
                                        <div class="productImage">
                                            <img src="images/product-slide/books/书籍大图/科学世界/解忧杂货店.png" /></div>
                                        <div class="productIntro">
                                            <div class="productIntroTitle">
                                                <a class="productHref" style="color: black;">
                                                    <%# Eval("book_name") %></a>
                                            </div>
                                            <div class="productIntroAuthorPublic">
                                                <span>
                                                    <%# Eval("author")%></span> <span>/
                                                        <%# Eval("supplier")%></span>&nbsp&nbsp&nbsp <span>原价：<%# Eval("price", "{0:c}")%></span>&nbsp
                                                <span>现价：<%#string.Format("{0:c}", Convert.ToDecimal(Eval("price")) * Convert.ToDecimal(Eval("discount")) / 100)%>(<%#Eval("discount")%>折)</span>
                                            </div>
                                            <div class="productIntroDeatil">
                                                <%# Eval("profile")%><br />
                                                <%# Eval("detail")%>
                                            </div>
                                            <div class="productAddBuy">
                                                <p style="display: inline-block; font-family: 'MS Serif', 'New York', serif; font-size: 16px;
                                                    height: 20px; width: 80px; margin-left: 100px; text-decoration: line-through;
                                                    text-align: center; padding-top: 7px">
                                                    <%# Eval("price", "{0:c}")%></p>
                                                <p style="display: inline-block; font-family: 'MS Serif', 'New York', serif; font-size: 16px;
                                                    height: 20px; width: 100px; margin-left: 10px; padding-top: 7px">
                                                    <%#string.Format("{0:c}", Convert.ToDecimal(Eval("price")) * Convert.ToDecimal(Eval("discount")) / 100)%>(<%#Eval("discount")%>折)</p>
                                                <a class="addbotton" href="#">加入购物车</a><a class="buybotton" href="#">立即购买</a>
                                            </div>
                                        </div>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:ListView>
                        <div class="blackLineProduct">
                        </div>
                    </div>
                </div>
                <div class="clear">
                    <asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView_Products"
                        PageSize="5">
                        <Fields>
                            <asp:NextPreviousPagerField RenderDisabledButtonsAsLabels="True" ShowFirstPageButton="True"
                                ShowLastPageButton="True" ShowPreviousPageButton="True" ShowNextPageButton="True" />
                        </Fields>
                    </asp:DataPager>
                </div>
            </div>
        </div>
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
            <script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript'
                charset='gb2312'></script>
        </div>
    </form>
</body>
</html>
