<%--
  Created by IntelliJ IDEA.
  User: 王涵
  Date: 2023/6/8
  Time: 18:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>欢迎页面-X-admin2.2</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/X-admin/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/X-admin/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/X-admin/js/xadmin.js"></script>
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="x-nav">
          <span class="layui-breadcrumb">
            <a href="">首页</a>
            <a href="">演示</a>
            <a>
              <cite>导航元素</cite></a>
          </span>
    <a class="layui-btn layui-btn-small" style="line-height:1.6em;margin-top:3px;float:right" onclick="location.reload()" title="刷新">
        <i class="layui-icon layui-icon-refresh" style="line-height:30px"></i></a>
</div>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form class="layui-form layui-col-space5">
                        <div class="layui-inline layui-show-xs-block">
                            <input type="text" name="findbyname"  placeholder="请输入用户名" autocomplete="off" class="layui-input">
                        </div>
                        <div class="layui-inline layui-show-xs-block">
                            <button class="layui-btn"  lay-submit="" lay-filter="sreach" type="submit"><i class="layui-icon">&#xe615;</i></button>
                        </div>
                    </form>
                </div>

                <c:if test="${loginuser.role != 0}">
                    <div class="layui-card-header">
                        <button class="layui-btn" onclick="xadmin.open('添加用户','${pageContext.request.contextPath}/admin-add',600,400)"><i class="layui-icon"></i>添加</button>
                    </div>
                </c:if>

                <div class="layui-card-body ">
                    <table class="layui-table layui-form">
                        <thead>
                        <tr>
                            <th>
                                <input type="checkbox" name=""  lay-skin="primary">
                            </th>
                            <th>ID</th>
                            <th>账号</th>
                            <th>手机号</th>
                            <th>邮箱</th>
                            <th>角色</th>
                            <th>昵称</th>
                            <c:if test="${loginuser.role != 0}">
                                    <th>操作</th>
                            </c:if>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${list}" var="user" varStatus="stat">
                                <tr>
                                    <td>
                                        <input type="checkbox" name=""  lay-skin="primary">
                                    </td>
                                    <td>${user.id}</td>
                                    <td>${user.name}</td>
                                    <td>${user.mobile}</td>
                                    <td>${user.mail}</td>
                                    <td>${user.role}</td>
                                    <td>${user.nickname}</td>
                                    <c:if test="${loginuser.role != 0}">
                                        <td class="td-status">
                                            <a title="编辑"  onclick="xadmin.open('编辑','${pageContext.request.contextPath}/adminedit?id=${user.id}')" href="javascript:;">
                                                <i class="layui-icon">&#xe642;</i>
                                            </a>
                                            <a title="删除" onclick="member_del(this,'${user.id}')" href="javascript:;">
                                                <i class="layui-icon">&#xe640;</i>
                                            </a>
                                        </td>
                                    </c:if>
                                </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
                <div class="layui-card-body ">
                    <div class="page">
                        <div>
                            <a class="prev" href="">&lt;&lt;</a>
                            <a class="num" href="">1</a>
                            <a class="next" href="">&gt;&gt;</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script>
    layui.use(['laydate','form'], function(){
        var laydate = layui.laydate;
        var form = layui.form;

        //执行一个laydate实例
        laydate.render({
            elem: '#start' //指定元素
        });

        //执行一个laydate实例
        laydate.render({
            elem: '#end' //指定元素
        });
    });

    /*用户-删除*/
    function member_del(obj,id){
        layer.confirm('确认要删除吗？',function(index){
            //发异步删除数据
            location.href = "${pageContext.request.contextPath}/admindelete?id=" + id;
            layer.msg('已删除!',{icon:1,time:1000});
        });
    }

    </script>
    <script>var _hmt = _hmt || []; (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();</script>
</html>