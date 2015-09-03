<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="balo-tuixach.aspx.cs" Inherits="balo_tuixach" %>

<asp:Content ID="con_slider" ContentPlaceHolderID="ctp_slider" Runat="Server">
    <div id="slider">
	        <div class="rm_wrapper">
	            <div id="rm_container" class="rm_container">
                    <ul>
				        <li data-images="rm_container_1" data-rotation="-15"><img alt="" src="images/balo-tuixach-slider/1.jpg"/></li>
			            <li data-images="rm_container_2" data-rotation="-5"><img alt="" src="images/balo-tuixach-slider/2.jpg"/></li>
					    <li data-images="rm_container_3" data-rotation="5"><img alt="" src="images/balo-tuixach-slider/3.jpg"/></li>
			            <li data-images="rm_container_4" data-rotation="15"><img alt="" src="images/balo-tuixach-slider/4.jpg"/></li>
			        </ul>
					<div id="rm_mask_left" class="rm_mask_left"></div>
				    <div id="rm_mask_right" class="rm_mask_right"></div>
				    <div id="rm_corner_left" class="rm_corner_left"></div>
			        <div id="rm_corner_right" class="rm_corner_right"></div>
	                <div style="display:none;">
				    <div id="rm_container_1">
					    <img alt="" src="images/balo-tuixach-slider/1.jpg"/>
				        <img alt="" src="images/balo-tuixach-slider/5.jpg"/>
				        <img alt="" src="images/balo-tuixach-slider/6.jpg"/>
					    <img alt="" src="images/balo-tuixach-slider/7.jpg"/>
			        </div>
			        <div id="rm_container_2">
				        <img alt="" src="images/balo-tuixach-slider/2.jpg"/>
	                    <img alt="" src="images/balo-tuixach-slider/8.jpg"/>
						<img alt="" src="images/balo-tuixach-slider/9.jpg"/>
		                <img alt="" src="images/balo-tuixach-slider/10.jpg"/>
				    </div>
				    <div id="rm_container_3">
						<img alt="" src="images/balo-tuixach-slider/3.jpg"/>
					    <img alt="" src="images/balo-tuixach-slider/11.jpg"/>
					    <img alt="" src="images/balo-tuixach-slider/12.jpg"/>
					    <img alt="" src="images/balo-tuixach-slider/13.jpg"/>
					</div>
				    <div id="rm_container_4">
						<img alt="" src="images/balo-tuixach-slider/4.jpg"/>
						<img alt="" src="images/balo-tuixach-slider/14.jpg"/>
				        <img alt="" src="images/balo-tuixach-slider/15.jpg"/>
						<img alt="" src="images/balo-tuixach-slider/16.jpg"/>
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
                <li>
                    <p>></p>
                </li>
                <li>
                    <asp:HyperLink NavigateUrl="balo-tuixach.aspx" runat="server" >
                        <p>Balo - Túi xách</p>
                    </asp:HyperLink>
                </li>
            </ul>
        </div><%-------End #path-----%>
</asp:Content>
<asp:Content ID="con_body" ContentPlaceHolderID="ctp_body" Runat="Server">
    <div id="div_balo-tuixach">
        <asp:DataList runat="server" ID="ddl_balotuixach" Width="100%" RepeatColumns="5" CellPadding="10" CellSpacing="20">
            <ItemTemplate>
                <a href="chi-tiet.aspx?pro=<%# Eval("mamh") %>">
                    <img src="<%# Eval("hinhdd","images/mat-hang/{0}") %>"/>
                    <div style="width: 200px; height: 35px;margin:auto;background-color:#2f2e2e;opacity:0.4;transform:translateY(-50px);"></div>
                    <p style="text-align: center;color:#ffffff;margin-right: 10px;transform:translateY(-75px);"><%# Eval("tenmh") %></p>
                    <p style="text-align: right; font-weight: bold; margin-right: 12px;transform:translateY(-65px);"><%# Eval("giaban", "{0: ###,### VNĐ}") %></p>
                </a>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>

