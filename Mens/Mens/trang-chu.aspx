<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="trang-chu.aspx.cs" Inherits="trang_chu" %>

<asp:Content ID="con_slider" ContentPlaceHolderID="ctp_slider" Runat="Server">
    <div id="slider">
	        <div class="rm_wrapper">
	            <div id="rm_container" class="rm_container">
                    <ul>
				        <li data-images="rm_container_1" data-rotation="-15"><img alt="" src="images/home-slider/1.jpg"/></li>
			            <li data-images="rm_container_2" data-rotation="-5"><img alt="" src="images/home-slider/2.jpg"/></li>
					    <li data-images="rm_container_3" data-rotation="5"><img alt="" src="images/home-slider/3.jpg"/></li>
			            <li data-images="rm_container_4" data-rotation="15"><img alt="" src="images/home-slider/4.jpg"/></li>
			        </ul>
					<div id="rm_mask_left" class="rm_mask_left"></div>
				    <div id="rm_mask_right" class="rm_mask_right"></div>
				    <div id="rm_corner_left" class="rm_corner_left"></div>
			        <div id="rm_corner_right" class="rm_corner_right"></div>
	                <div style="display:none;">
				    <div id="rm_container_1">
					    <img alt="" src="images/home-slider/1.jpg"/>
				        <img alt="" src="images/home-slider/5.jpg"/>
				        <img alt="" src="images/home-slider/6.jpg"/>
					    <img alt="" src="images/home-slider/7.jpg"/>
			        </div>
			        <div id="rm_container_2">
				        <img alt="" src="images/home-slider/2.jpg"/>
	                    <img alt="" src="images/home-slider/8.jpg"/>
						<img alt="" src="images/home-slider/9.jpg"/>
		                <img alt="" src="images/home-slider/10.jpg"/>
				    </div>
				    <div id="rm_container_3">
						<img alt="" src="images/home-slider/3.jpg"/>
					    <img alt="" src="images/home-slider/11.jpg"/>
					    <img alt="" src="images/home-slider/12.jpg"/>
					    <img alt="" src="images/home-slider/13.jpg"/>
					</div>
				    <div id="rm_container_4">
						<img alt="" src="images/home-slider/4.jpg"/>
						<img alt="" src="images/home-slider/14.jpg"/>
				        <img alt="" src="images/home-slider/15.jpg"/>
						<img alt="" src="images/home-slider/16.jpg"/>
			        </div>
			    </div>
			</div>
		        <div class="rm_nav">
			        <a id="rm_next" href="#" class="rm_next"></a>
			        <a id="rm_prev" href="#" class="rm_prev"></a>
			    </div>
		        <div class="rm_controls">
			        <a id="rm_play" href="#" class="rm_play">Play</a>
				    <a id="rm_pause" href="#" class="rm_pause">Pause</a>
		        </div>
		    </div>
    </div><%-------End #slider-----%>
</asp:Content>
<asp:Content ID="con_path" ContentPlaceHolderID="ctp_path" Runat="Server">
        <div id="path">
            <ul>
                <li>
                    <img src="images/common/path-icon.png" alt="Men' Shop"/>
                </li>
                <li>
                    <asp:HyperLink NavigateUrl="trang-chu.aspx" runat="server" >
                        <p>Trang chủ</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>  
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div style="width: 100%; border-bottom: 2px dashed #232323; margin-top: 13px;">
        <marquee BEHAVIOR='scroll' behavior="alternate" scrollamount="4" >
            <p style="text-align:left;color: #d40c0c;font-size: 18px;font-weight: bold;">MẶT HÀNG GIẢM GIÁ</p>
        </marquee>
    </div>
    <div id="sale-top-6">
        <asp:DataList runat="server" ID="dtl_saletop6" Width="100%" RepeatColumns="6" CellPadding="10" CellSpacing="20">
            <ItemTemplate>
                <a href="chi-tiet.aspx?pro=<%# Eval("mamh") %>">
                    <img src="<%# Eval("hinhdd","images/mat-hang/{0}") %>"/>
                    <div style="width: 200px; height: 35px;margin:auto;background-color:#2f2e2e;opacity:0.4;transform:translateY(-50px);"></div>
                    <p style="text-align: center;color:#ffffff;margin-right: 10px;transform:translateY(-75px);"><%# Eval("tenmh") %></p>
                    <p style="font-size:19px;text-align: right; font-weight: bold; margin-right: 12px;transform:translateY(-65px);"><%# Eval("giaban", "{0: ###,###}") %></p>
                    <p style="color: #21ba4a;font-size:15px;text-align: right; margin-right: 10px;transform:translateY(-65px);"><%# Eval("khuyenmai", "Giảm còn {0: ###,###}") %></p>
                </a>
            </ItemTemplate>
        </asp:DataList>
    </div>
    <div style="width: 100%; border-bottom: 2px dashed #232323; margin-top: 13px;">
        <marquee BEHAVIOR='scroll'>
            <p style="text-align:left;color: #1084a4;font-size: 18px;font-weight: bold;">CHƯƠNG TRÌNH KHUYẾN MÃI</p>
        </marquee>
    </div>

    <div style="width: 1100px;height: auto;margin: auto;background-color:#21ba4a;margin-bottom: 30px;">
        <img src="images/sale-off/1.jpg" width="1100" height="275">
    </div>

    <div style="width: 1100px;height: auto;margin: auto;background-color:#7ab02d; margin-bottom: 50px;">
        <img src="images/sale-off/2.jpg" width="1100" height="456">
    </div>

    <div id="above-footer">
        <div id="sub-above-footer">
            <ul>
                <li>
                    <div id="plugin-map"></div>
                </li>
                <li>
                    <div id="movie">
                        <p style="margin-left: 20px; margin-top: 15px;">Kết nối với chúng tôi qua Skype:</p>
                        <script type="text/javascript" src="http://www.skypeassets.com/i/scom/js/skype-uri.js"></script>
                        <div id="SkypeButton_Call_Kiris.nat_1">
                            <script type="text/javascript">
                                Skype.ui({
                                    "name": "dropdown",
                                    "element": "SkypeButton_Call_Kiris.nat_1",
                                    "participants": ["Kiris.nat"],
                                    "imageSize": 32
                                });
                            </script>
                            <p style="margin-left: 20px; margin-top: 15px;">Kết nối với chúng tôi qua YaHoo:</p>
                            <div id="img_yahoo" style="margin-left: 32px; margin-top: 10px;">
                                <asp:HyperLink NavigateUrl="ymsgr:sendIM?kiris.nat13" runat="server" >
                                    <asp:image Width="100px" Height="100px" imageurl="http://presence.msg.yahoo.com/online?u=kiris.nat13&m=g&t=22&l=us" runat="server" />
                                </asp:HyperLink>
                            </div>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="fb-like-box" data-href="https://www.facebook.com/fashion.mensshop" data-width="280" data-height="300" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
                </li>
            </ul>
        </div>
    </div><%-------End #above-footer-----%>
</asp:Content>

