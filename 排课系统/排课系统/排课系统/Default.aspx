﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="排课系统.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>系统登录</title>
    <link href="../css/adminLogin.css" rel="stylesheet" type="text/css" />
</head>
<body onkeydown="onEnterDown();">
    <div id="top">
        
    </div>
    <div id="login">
        <div style="height:0px">
            <h3>整合现有全部资源后的可运行版本</h3>
            <h4>课程以及老师数据取自互联网</h4>
            <h4>管理员账号：admin 密码：admin</h4>
            <h4>PS：老师账号有很多，不同的老师登上去都不同<br>老师ID从10000-10132，账号密码相同</h4>
            <h4>学生界面待开发</h4>
        </div>
        <div id="login_box">
            <div class="title">
            </div>
            <div class="content">
              <%--  <div class="left">
                </div>--%>
                <div class="main">
                    <form id="login_form" runat="server">
                    <div class="login_userid">
                        <span>角  色：</span>
                        <asp:RadioButton ID="RadioButton1" runat="server" 
                            Text="教师" GroupName="type" Checked="True"/>
                            &nbsp;&nbsp;
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="管理员" 
                            GroupName="type" />
                        <asp:RadioButton ID="RadioButton3" runat="server" 
                            Text="学生" GroupName="type"/>
                    </div>
                    <div class="login_userid">
                        <span>账　号：</span>
                        <asp:TextBox ID="username" runat="server" Width="198" Type="text"></asp:TextBox>
                    </div>
                    <div class="login_password">
                        <span>密　码：</span>
                        <asp:TextBox  ID="password" runat="server" Width="198" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="login_code">
                        <span>验证码：</span>
                        <input name="code" type="text" class="input" id="code" style="width:50px;" maxlength="4" autocomplete="off" runat="server" />
                        <img alt="" src="../Control/validate.aspx" id="getcode_img" title="看不清请点击！" />
                    </div>
                    <div class="login_button">
                        <asp:Button  runat="server" id="submit" style="margin:auto;" onclick="submit_login" />&nbsp;&nbsp;
                        <input type="reset" name="reset" id="reset" style="margin:auto;" value="" onclick="doReset();" />
                       
                    </div>
                    </form>
                </div>
                <%--<div class="right">
                </div>--%>
            </div>
        </div>
    </div>
    

    <script src="../Scripts/jquery-1.6.min.js" type="text/javascript"></script>
    <script src="../Scripts/js_login.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#userid").focus();
            $("#getcode_img").click(ShowValidImage);
        })

        function onEnterDown() {//body的onkeydown事件时调用
            if (window.event.keyCode == 13) {
                submit_login();
            }
        }
    </script>        
</body>
</html>
