<!DOCTYPE html>
<html lang="en">
<%@page  contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keyword" content="">
    <title></title>
    <!-- Bootstrap core CSS -->
    <link href="/static/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="/static/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
    <link href="/static/css/style.css" rel="stylesheet">
    <link href="/static/css/style-responsive.css" rel="stylesheet">
</head>
<body>
<section id="container" >
    <!--header start-->
    <header class="header black-bg">
        <div class="sidebar-toggle-box">
            <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
        </div>
        <!--logo start-->
        <a href="index.jsp" class="logo"><b>Rental Vehicles System</b></a>
        <!--logo end-->
        <div class="top-menu">
            <ul class="nav pull-right top-menu">
                <li><a class="logout" href="#" onclick="logout();">ログアウト</a></li>
            </ul>
        </div>
    </header>
    <!--header end-->
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <ul class="sidebar-menu" id="nav-accordion">
                <p class="centered"><img src="/static/img/ui-sam.jpg" class="img-circle" width="60"></p>
                <h5 class="centered">Rental Vehicles System</h5>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-desktop"></i>
                        <span>ユーザー管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="#">ユーザー情報</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-book"></i>
                        <span>オーダー管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="#">オーダー一覧</a></li>
                        <li><a  href="#">注文履歴</a></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" >
                        <i class="fa fa-tasks"></i>
                        <span>車両管理</span>
                    </a>
                    <ul class="sub">
                        <li><a  href="" onclick="javascript:window.location.href='/car/getCarList?carBrandName=&carModelName='">車両情報</a></li>
                    </ul>
                    <ul class="sub">
                        <li><a  href="#" onclick="">プランド情報</a></li>
                    </ul>
                    <ul class="sub">
                        <li><a  href="#" onclick="">モデル情報</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </aside>

    <section id="main-content">
        <section class="wrapper">
            <h3><i class="fa fa-angle-right"></i>車の更新</h3>
            <div class="row mt">
                <div class="col-lg-12">
                    <div class="form-panel">
                        <h4 class="mb"><i class="fa fa-angle-right"></i>車の情報</h4>
                        <form class="form-horizontal style-form" method="get" action="/car/getCarList">
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">車両番号</label>
                                <div class="col-sm-10">
                                    <input class="form-control" id="carCode" type="text" value="${carInfo.carCode}" disabled>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">車のブランド</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" value="${carInfo.carBrandName}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">車のモデル</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" value="${carInfo.carModelName}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">ナンバー</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" value="${carInfo.carNumbers}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">車の写真</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" value="${carInfo.carPhoto}">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-2 col-sm-2 control-label">ステータス</label>
                                <div class="col-lg-10">
                                    <input type="text" class="form-control" value="${carInfo.carStatus}">
                                </div>
                            </div>
                            <div class="form-group" style="text-align:center">
                                <button type="submit" class="btn btn-theme" style="width: 100px;">更新</button>
                                &emsp;
                                <button type="button" class="btn btn-theme" style="width: 100px;">戻る</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </section>
</section>
</body>
</html>