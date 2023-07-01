<%--
  Created by IntelliJ IDEA.
  User: 王涵
  Date: 2023/6/20
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>电商大数据分析</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/Visualization/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Visualization/css/style.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Visualization/css/style2.0.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/Visualization/js/jquery.min.js"></script>
    <script>
        $(function () {
            $('.myscroll').myScroll({
                speed: 60, //数值越大，速度越慢
                rowHeight: 38 //li的高度
            });
        })

    </script>
</head>
<body>

<!--内容-->
<section id="data_content">

    <div class="data_info">
        <div class="info_1 fl">
            <div class="text_1">
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_1.png">
                    <div class="fl count">
                        <p>浏览量</p>
                        <p class="conuts">33148588</p>
                    </div>
                </div>
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_2.png">
                    <div class="fl count">
                        <p>成交量</p>
                        <p class="conuts">11211079</p>
                    </div>
                </div>
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_3.png" >
                    <div class="fl count">
                        <p>关注量</p>
                        <p class="conuts">441965</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="info_2 fl">
            <div class="text_2">
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_4.png" >
                    <div class="fl count">
                        <p>评论量</p>
                        <p class="conuts">826734</p>
                    </div>
                </div>
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_5.png" >
                    <div class="fl count">
                        <p>加入购物车量</p>
                        <p class="conuts">597263</p>
                    </div>
                </div>

            </div>
        </div>
        <div class="info_3 fr">
            <div class="text_2">
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_6.png">
                    <div class="fl count">
                        <p>用户数量</p>
                        <p class="conuts">1608768</p>
                    </div>
                </div>
                <div class="fl">
                    <img src="${pageContext.request.contextPath}/Visualization/images/info_7.png" >
                    <div class="fl count">
                        <p>商品数量</p>
                        <p class="conuts">379458</p>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="data_content">
        <!--左边-->
        <div class="data_left fl">
            <div class="left_top">
                <!--/*左边第一部分*/-->
                <div class="info public">
                    <div class="min-title">
                        <span>TOP5点击量</span>
                    </div>
                    <div id="char4" style="width:100%;height: 100%;padding-left: 15px;"></div>
                    <div class="boxfoot"></div>
                </div>
                <!--左边第二部分-->
                <div class="top_bottom public">
                    <div class="min-title">
                        <span>TOP5转化率</span>
                    </div>
                    <div id="char5" style="width:100%;height: 100%;"></div>
                    <div class="boxfoot"></div>
                </div>
                <!--左边第三部分-->
                <div class="left_bottom public">
                    <div class="min-title">
                        <span>用户年龄分布</span>
                    </div>
                    <div id="echarts_1" style="width:100%;height: 100%;"></div>
                    <div class="boxfoot"></div>
                </div>
            </div>
        </div>
        <!--中间-->
        <div class="data_c fl">
            <div class="data_c_1">


                <div id="contPar" class="contPar">
                    <div id="page1"  style="z-index:1">
                        <div class="title0">电商大数据分析平台</div>
                        <div class="title1">商品、用户、大数据</div>


                        <div id="drag-container" style="z-index: 1">
                            <div id="spin-container">

                                <img  class="infoBtn" src="${pageContext.request.contextPath}/Visualization/picture/page1_0.png">
                                <img  class="" src="${pageContext.request.contextPath}/Visualization/picture/page1_1.png">
                                <img  class="" src="${pageContext.request.contextPath}/Visualization/picture/page1_2.png">
                                <img  class="" src="${pageContext.request.contextPath}/Visualization/picture/page1_1.png">
                                <img  class="" src="${pageContext.request.contextPath}/Visualization/picture/page1_2.png">

                            </div>
                            <div id="ground"></div>
                        </div>

                        <img  class="img3 png" src="${pageContext.request.contextPath}/Visualization/images/newdz.png" >
                    </div>
                </div>


            </div>
            <div class="data_c_2 public">

                <div id="echart4" style="width: 90%;height: 90%;padding-top: 9px;padding-left: 40px;"></div>
                <div class="boxfoot"></div>
            </div>
        </div>
        <!--右边-->
        <div class="data_right fr">
            <div class="right_top">
                <!--/*右边第一部分*/-->
                <div class="right_info public">
                    <div class="min-title">
                        <span>用户信息</span>
                    </div>
                    <div class="echart wenzi">
                        <div class="gun">
                            <span>用户</span>
                            <span>总消费</span>
                            <span>最高消费</span>
                        </div>
                        <div id="FontScroll" class="myscroll">
                            <ul>
                                <c:forEach items="${list}" var="user" varStatus="stat" begin="0" end="100">
                                    <li>
                                        <div class="fontInner clearfix">
                                            <span>${user.user}</span>
                                            <span>${user.consume_total}</span>
                                            <span>${user.consume_max}</span>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="boxfoot"></div>
                </div>
                <!--右边第二部分-->
                <div class="right_content public">
                    <div class="min-title">
                        <span>用户性别分布</span>
                    </div>
                    <div id="chart_3" style="width:100%;height: 100%;"></div>
                    <div class="boxfoot"></div>
                </div>
                <!--右边第三部分-->
                <div class="right_bottom public">
                    <div class="min-title">
                        <span>商品价格区间</span>
                    </div>
                    <div id="echarts_2" style="width:100%;height: 100%;padding-top: 10px;"></div>
                    <div class="boxfoot"></div>
                </div>
            </div>
        </div>



    </div>
</section>

<script src="${pageContext.request.contextPath}/Visualization/js/script.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/Visualization/js/jquery-1.8.0.min.js"></script>
<script src="${pageContext.request.contextPath}/Visualization/js/echarts.min.js"></script>
<script src="${pageContext.request.contextPath}/Visualization/js/echart.js"></script>
<!--<script type="text/javascript" src="js/com.js"></script>-->
<script src="${pageContext.request.contextPath}/Visualization/js/index.js"></script>
<script src="${pageContext.request.contextPath}/Visualization/js/fontscroll.js"></script>


</body>
</html>
