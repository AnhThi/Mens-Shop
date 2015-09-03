<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Men's Shop | Loading...</title>
        <script src="script/jquery-2.1.3.js"></script>
        <style type="text/css">
            *{
                margin: 0px;
                padding: 0px;
            }
            body{
                background-image: url(../images/common/default_bg.jpg);
                background-size: 100%;
                background-repeat: no-repeat;
            }
            #wrapper{
                width: 100%;
                height: auto;
            }
            #header{
                width: 410px;
                height: 98px;
                margin: auto;
            }
            #phong-cach-va-nam-tinh{
                width: 400px;
                height: 114px;
                margin-top: 80px;
                margin-left: -410px;
                transition: 1.5s ease 0s;
            }
            #bao-hanh-tron-doi{
                width: 400px;
                height: 114px;
                margin-top: 30px;
                margin-left: -410px;
                transition: 1.5s ease 0s;
            }
            #chat-luong-den-tu-y{
                width: 400px;
                height: 114px;
                margin-top: 30px;
                margin-left: -410px;
                transition: 1.5s ease 0s;
            }
        </style>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#header').hide();
                $('#header').delay(1000).fadeIn(2200);
                $('#phong-cach-va-nam-tinh').delay(3000).css("transform", "translateX(480px)");
                $('#bao-hanh-tron-doi').delay(3700).css("transform", "translateX(530px)");
                $('#chat-luong-den-tu-y').delay(4400).css("transform", "translateX(560px)");
                
            });
        </script>
    </head>
    <body>
        <form id="form_" runat="server">
            <div id="wrapper">
                <div id="header">
                    <img src="images/common/default_header.png" width="410" height="98">
                </div>
                <div id="phong-cach-va-nam-tinh">
                    <img src="images/common/phong-cach-va-nam-tinh.png" width="400" height="114">
                </div>
                <div id="bao-hanh-tron-doi">
                    <img src="images/common/bao-hanh-tron-doi.png" width="400" height="114">
                </div>
                <div id="chat-luong-den-tu-y">
                    <img src="images/common/chat-luong-den-tu-y.png" width="400" height="114">
                </div>
            </div>
            <asp:Timer ID="run" runat="server" Interval="4000" OnTick="run_Tick">
            </asp:Timer>
            <asp:ScriptManager ID="scm_scriptmanager" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="udp_updatepanel" runat="server">
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="run" EventName="Tick"/>
                </Triggers>
            </asp:UpdatePanel>
        </form>
    </body>
</html>
