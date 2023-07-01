<%--
  Created by IntelliJ IDEA.
  User: 王涵
  Date: 2023/6/20
  Time: 11:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>车辆综合管控平台</title>

  <link rel="stylesheet" href="./css2/main.css">
  <link rel="stylesheet" href="./css2/style.css">
  <link rel="stylesheet" type="text/css" href="./css2/style2.0.css">
  <script type="text/javascript" src="./js2/jquery.min.js"></script>
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
<!--头部-->
<header id="header">
  <div class="header">
    <h1 class=""><a href="https://gitee.com/iGaoWei/big-data-view" style="color: white">车辆综合管控平台</a></h1>
  </div>
</header>

<!--内容-->
<section id="data_content">

  <div class="data_info">
    <div class="info_1 fl">
      <div class="text_1">
        <div class="fl">
          <img src="./images2/info_1.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
          </div>
        </div>
        <div class="fl">
          <img src="./images2/info_2.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
          </div>
        </div>
        <div class="fl">
          <img src="./images2/info_3.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
          </div>
        </div>
      </div>
    </div>
    <div class="info_2 fl">
      <div class="text_2">
        <div class="fl">
          <img src="./images2/info_4.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
          </div>
        </div>
        <div class="fl">
          <img src="./images2/info_5.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
          </div>
        </div>

      </div>
    </div>
    <div class="info_3 fr">
      <div class="text_2">
        <div class="fl">
          <img src="./images2/info_6.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
          </div>
        </div>
        <div class="fl">
          <img src="./images2/info_7.png" alt="更多资源：https://gitee.com/iGaoWei/big-data-view">
          <div class="fl count">
            <p>车辆总数(辆)</p>
            <p class="conuts">46625</p>
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
            <span>车辆总数</span>
          </div>
          <div id="char4" style="width:100%;height: 100%;"></div>
          <div class="boxfoot"></div>
        </div>
        <!--左边第二部分-->
        <div class="top_bottom public">
          <div class="min-title">
            <span>车辆类型</span>
          </div>
          <div id="echarts_1" style="width:100%;height: 100%;"></div>
          <div class="boxfoot"></div>
        </div>
        <!--左边第三部分-->
        <div class="left_bottom public">
          <div class="min-title">
            <span>车辆状态</span>
          </div>
          <div id="chart_2" style="width:100%;height: 100%;"></div>
          <div class="boxfoot"></div>
        </div>
      </div>
    </div>
    <!--中间-->
    <div class="data_c fl">
      <div class="data_c_1">


        <div id="contPar" class="contPar">
          <div id="page1" style="z-index:1">
            <div class="title0">车辆综合管控平台</div>
            <div class="title1">旅游、交通、危险品、校车、大数据</div>


            <div id="drag-container" style="z-index: 1">
              <div id="spin-container">

                <img alt="更多资源：https://gitee.com/iGaoWei/big-data-view" class="infoBtn"
                     src="./picture2/page1_0.png">
                <img alt="更多资源：https://gitee.com/iGaoWei/big-data-view" class=""
                     src="./picture2/page1_1.png">
                <img alt="更多资源：https://gitee.com/iGaoWei/big-data-view" class=""
                     src="./picture2/page1_2.png">
                <img alt="更多资源：https://gitee.com/iGaoWei/big-data-view" class=""
                     src="./picture2/page1_1.png">
                <img alt="更多资源：https://gitee.com/iGaoWei/big-data-view" class=""
                     src="./picture2/page1_2.png">

              </div>
              <div id="ground"></div>
            </div>

            <img alt="更多资源：https://gitee.com/iGaoWei/big-data-view" class="img3 png"
                 src="./images2/newdz.png">
          </div>
        </div>


      </div>
      <div class="data_c_2 public">

        <div id="echart4" style="width: 100%;height: 100%;padding-top: 10px;"></div>
        <div class="boxfoot"></div>
      </div>
    </div>
    <!--右边-->
    <div class="data_right fr">
      <div class="right_top">
        <!--/*右边第一部分*/-->
        <div class="right_info public">
          <div class="min-title">
            <span>收费站收费数量</span>
          </div>
          <div class="echart wenzi">
            <div class="gun">
              <span>小型车</span>
              <span>中型车</span>
              <span>大型车</span>
            </div>
            <div id="FontScroll" class="myscroll">
              <ul>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>
                <li>
                  <div class="fontInner clearfix">
                    <span>253万</span>
                    <span>65万</span>
                    <span>182万</span>
                  </div>
                </li>


              </ul>
            </div>
          </div>

          <div class="boxfoot"></div>
        </div>
        <!--右边第二部分-->
        <div class="right_content public">
          <div class="min-title">
            <span>抓拍车辆</span>
          </div>
          <div id="chart_3" style="width:100%;height: 100%;"></div>
          <div class="boxfoot"></div>
        </div>
        <!--右边第三部分-->
        <div class="right_bottom public">
          <div class="min-title">
            <span>车辆类型</span>
          </div>
          <div id="echarts_2" style="width:100%;height: 100%;padding-top: 10px;"></div>
          <div class="boxfoot"></div>
        </div>
      </div>
    </div>



  </div>
</section>

<script src="./js2/script.js"></script>
<script type="text/javascript" src="./js2/jquery-1.8.0.min.js"></script>
<script src="./js2/echarts.min.js"></script>
<script src="./js2/echart.js"></script>
<!--<script type="text/javascript" src="./js2/com.js"></script>-->
<script src="./js2/index.js"></script>
<script src="./js2/fontscroll.js"></script>


</body>

</html>
