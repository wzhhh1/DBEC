<%--
  Created by IntelliJ IDEA.
  User: 王涵
  Date: 2023/6/10
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script type="text/javascript" src="${pageContext.request.contextPath}/X-admin/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/X-admin/js/xadmin.js"></script>
    <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
    <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form" id="myForm" method="post" action="${pageContext.request.contextPath}/adminedit">
            <div class="layui-form-item">
                <label for="username" class="layui-form-label">
                    <span class="x-red">*</span>账号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="username" name="username" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="${user.name}">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>将会成为您唯一的账号
                </div>
            </div>
            <div class="layui-form-item">
                <label for="phone" class="layui-form-label">
                    <span class="x-red">*</span>手机号
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="phone" name="mobile" required="" lay-verify="phone"
                           autocomplete="off" class="layui-input" value="${user.mobile}">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>您的账号将与该手机号绑定
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_email" class="layui-form-label">
                    <span class="x-red">*</span>邮箱
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="L_email" name="mail" required="" lay-verify="email"
                           autocomplete="off" class="layui-input" value="${user.mail}">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    <span class="x-red">*</span>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label"><span class="x-red">*</span>角色</label>
                <div class="layui-input-block">
                    <label><input type="radio" name="role" value="1" title="超级管理员"></label>
                    <label><input type="radio" name="role" value="0" title="普通人员"></label>
                </div>
            </div>
            <div class="layui-form-item">
                <label for="nickname" class="layui-form-label">
                    <span class="x-red">*</span>昵称
                </label>
                <div class="layui-input-inline">
                    <input type="text" id="nickname" name="nickname" required="" lay-verify="required"
                           autocomplete="off" class="layui-input" value="${user.nickname}">
                </div>
                <div class="layui-form-mid layui-word-aux">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="L_pass" class="layui-form-label">
                    <span class="x-red">*</span>密码
                </label>
                <div class="layui-input-inline">
                    <input type="password" id="L_pass" name="password" required="" lay-verify="pass"
                           autocomplete="off" class="layui-input" value="${user.password}">
                </div>
                <div class="layui-form-mid layui-word-aux">
                    6到16个字符
                </div>
            </div>
            <div class="layui-form-item">
                <button  class="layui-btn" lay-filter="add" lay-submit="" type="submit">
                    更改
                </button>
            </div>
            <input type="hidden" name="id" value="${user.id}">
        </form>
    </div>
</div>


<script>layui.use(['form', 'layer'],
    function() {
        $ = layui.jquery;
        var form = layui.form,
            layer = layui.layer;

        //自定义验证规则
        form.verify({
            nikename: function(value) {
                if (value.length < 5) {
                    return '昵称至少得5个字符啊';
                }
            },
            pass: [/(.+){6,12}$/, '密码必须6到12位'],
        });


        function closeFrame() {
            xadmin.close();
        }
        function refreshParentWindow() {
            xadmin.father_reload();
        }
        $(document).on('submit', '#myForm', function() {
            layer.msg("增加成功", {icon: 6}, function() {
                //关闭当前frame
                console.log("Close frame"); // 在控制台输出 "Close frame"
                closeFrame();
                // 可以对父窗口进行刷新
                console.log("Close frame"); // 在控制台输出 "Close frame"
                refreshParentWindow();
            });
            return true; // 返回 true 以继续表单提交
        });



        // $(document).on('submit', '#myForm', function() {
        //     layer.msg("增加成功", {icon: 6}, function() {
        //         //关闭当前frame
        //         xadmin.close();
        //         // 可以对父窗口进行刷新
        //         xadmin.father_reload();
        //     });
        //
        //     return true;
        //
        // });


    });</script>
<script>var _hmt = _hmt || []; (function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(hm, s);
})();</script>
</body>

</html>
