<%--
  Created by IntelliJ IDEA.
  User: Mtime
  Date: 2018/7/4
  Time: 12:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<div class="row" style="margin-left: 30px;">

    <div id="myCarousel" class="carousel slide banner">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner" >
            <div class="item active">
                <img style="width: 1000px;max-height: 465px;" src="/static/images/23115822.jpg" alt="First slide">
            </div>
            <div class="item">
                <img style="width: 1000px;max-height: 465px;" src="/static/images/23115838.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img style="width: 1000px;max-height: 465px;" src="/static/images/23115859.jpg" alt="Third slide">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <div id="floatTools" class="float0831">
        <div class="floatL">
            <a style="DISPLAY: none" id="aFloatTools_Show" class="btnOpen" title="查看在线客服" onclick="javascript:$('#divFloatToolsView').animate({width: 'show', opacity: 'show'}, 'normal',function(){ $('#divFloatToolsView').show(); });$('#aFloatTools_Show').attr('style','display:none');$('#aFloatTools_Hide').attr('style','display:block');" href="javascript:void(0);">展开</a>
            <a id="aFloatTools_Hide" class="btnCtn" title="关闭在线客服" onclick="javascript:$('#divFloatToolsView').animate({width: 'hide', opacity: 'hide'}, 'normal',function(){ $('#divFloatToolsView').hide(); });$('#aFloatTools_Show').attr('style','display:block');$('#aFloatTools_Hide').attr('style','display:none');" href="javascript:void(0);">收缩</a>
        </div>
        <div id="divFloatToolsView" class="floatR">
            <div class="tp"></div>
            <div class="cn">
                <ul>
                    <li class="top">
                        <h3 class="titZx">QQ咨询</h3>
                    </li>
                    <li><span class="icoZx">在线咨询</span> </li>
                    <li><a class="icoTc" href="tencent://message/?uin=1194885029&amp;Site=sc.chinaz.com&amp;Menu=yes">在线客服</a> </li>
                    <li><a class="icoTc" href="tencent://message/?uin=1194885029&amp;Site=sc.chinaz.com&amp;Menu=yes">在线客服</a> </li>
                    <li><a class="icoTc" href="tencent://message/?uin=1194885029&amp;Site=sc.chinaz.com&amp;Menu=yes">在线客服</a> </li>
                    <li><a class="icoTc" href="tencent://message/?uin=1194885029&amp;Site=sc.chinaz.com&amp;Menu=yes">在线客服</a> </li>
                    <li><a class="icoTc" href="tencent://message/?uin=1194885029&amp;Site=sc.chinaz.com&amp;Menu=yes">在线客服</a> </li>
                </ul>

                <ul>
                    <li>
                        <h3 class="titDh">电话咨询</h3>
                    </li>
                    <li><span class="icoTl">15718847984</span> </li>

                </ul>
            </div>
        </div>
    </div>
</div>
</body>
</html>
