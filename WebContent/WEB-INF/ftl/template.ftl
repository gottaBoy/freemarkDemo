<#include "/constants.ftl">
<#macro ttHtml>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <#--head标签模块引入 -->
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="format-detection" content="telephone=no"/>
    <meta content="物流,saas,平台,运输,货代" name="keywords">
    <title>货运中国网</title>
    <script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
</head>
<body>
  <div style="margin:20px;">
     <#nested>
  </div>
  <#--js标签模块引入 -->
</body>
</html>
</#macro>

<#macro btHtml>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head> 
  <@btHeadBox /><#--head标签模块引入 -->
</head>
<body> 
<!-- Start: Header -->
<div class="navbar" role="navigation">
  <div class="container-fluid container-nav">       
    <!-- Navbar Action -->
    <ul class="nav navbar-nav navbar-actions navbar-left">
      <li class="visible-md visible-lg"><a href="#" id="main-menu-toggle"><i class="fa fa-th-large"></i></a></li>
      <li class="visible-xs visible-sm"><a href="#" id="sidebar-menu"><i class="fa fa-navicon"></i></a></li>      
    </ul>
    <!-- Navbar Left -->
    <!-- Navbar Right -->
    <div class="navbar-right">
          <!-- Notifications -->
          <!-- End Notifications -->
          <!-- Userbox -->
          <div class="userbox">
      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <div class="profile-info">
          <span class="name">开发者</span>
            </div>      
            <i class="fa custom-caret"></i>
      </a>
      <div class="dropdown-menu">
          <ul class="list-unstyled">
        <li class="dropdown-menu-header bk-bg-white bk-margin-top-15">  
        </li>
        <li>
              <a href="#"><i class="fa fa-power-off"></i> Logout</a>
        </li>
          </ul>
      </div>            
          </div>
          <!-- End Userbox -->
    </div>
    <!-- End Navbar Right -->
  </div>    
</div>
<!-- End: Header -->
<!-- Start: Content -->
<div class="container-fluid content"> 
  <div class="row">
     <@btTopBox /><#--顶部菜单栏模块引入 -->
     
     <!-- Main Page -->
     <div class="main ">
     <div class="easyui-layout" style="width:100%;height:100%;_height:400px;min-height:400px;"> 
          <div data-options="region:'center'" style="width:100px;height:100%;">
            <div id="mmtabs" class="easyui-tabs" data-options="fit:true,border:false,plain:true" >
                 <#nested>
            </div> 
          </div>
      </div>
     </div>
     <!-- End Main Page -->     
     <!-- Usage -->
     <!-- End Usage -->
   </div>
</div>
<!--/container-->
  
<!-- Modal Dialog -->
<!-- End Modal Dialog -->
<div class="clearfix"></div>
<div id="mm" class="easyui-menu" style="width: 150px;">
  <div id="mm-tabupdate">
    刷新
  </div>
  <div class="menu-sep"></div>
  <div id="mm-tabclose">
    关闭
  </div>
  <div id="mm-tabcloseall">
    全部关闭
  </div>
  <div id="mm-tabcloseother">
    除此之外全部关闭
  </div>
  <div class="menu-sep"></div>
  <div id="mm-tabcloseright">
    当前页右侧全部关闭
  </div>
  <div id="mm-tabcloseleft">
    当前页左侧全部关闭
  </div>
  <div class="menu-sep"></div>
  <div id="mm-exit">
    退出
  </div>
</div>  
</body>
</html> 
</#macro>

<#macro btTopBox> 
<!-- Sidebar -->
<div class="sidebar">
  <div class="sidebar-collapse">
        <!-- Sidebar Header Logo-->
        <div class="sidebar-header">
    <img src="images/logo.png" class="img-responsive" alt="" />
        </div>
        <div class="divider2"></div>
      <!-- Sidebar Menu-->
        <div class="sidebar-menu">            
    <nav id="menu" class="nav-main" role="navigation">
        <ul id="side-menu" class="nav nav-sidebar">
        <#-- 菜单动态加载 -->
           <#include "/menu.ftl">
        </ul>
    </nav>
  </div>
  <!-- End Sidebar Menu-->
  </div>
  <!-- Sidebar Footer-->
  <div class="sidebar-footer">  
  <!--  <ul class="sidebar-terms">
      <li><a href="index.html#">Terms</a></li>
      <li><a href="index.html#">Privacy</a></li>
      <li><a href="index.html#">Help</a></li>
      <li><a href="index.html#">About</a></li>
    </ul>
    <div class="copyright text-center">
       copyright 2016 
    </div>  -->       
  </div>
  <!-- End Sidebar Footer-->
 </div>
 <!-- End Sidebar -->
</#macro>
<#macro btHeadBox>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /> 
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="format-detection" content="telephone=no"/>
    <meta content="物流,saas,平台,运输,货代" name="keywords">
    <title>货运中国网</title>
    <link rel="icon" href="images/favicon.png" type="image/x-icon">
  <!-- Import google fonts -->
   
    
  <!-- Favicon and touch icons -->
  <!-- start: CSS file-->
  <!-- Vendor CSS-->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
  
  <!-- MetisMenu CSS -->
  <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
  
  <!-- Plugins CSS--> 
  <!-- Theme CSS -->
  <link href="assets/css/jquery.mmenu.css" rel="stylesheet" />
  
  <!-- Custom CSS -->
    <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/dist/css/sb-admin-2.css" rel="stylesheet">
      
  <!-- Page CSS -->   
  <link href="assets/css/style.css" rel="stylesheet" />
    <link href="assets/css/add-ons.min.css" rel="stylesheet" />
  
  <!-- end: CSS file--> 
  
  <!-- Head Libs -->
  <script src="assets/plugins/modernizr/js/modernizr.js"></script>
  
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
    <script src="${STATIC_LIBS}/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="${STATIC_LIBS}/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <link rel="stylesheet" type="text/css" href="assets/css/panel.css">
  <link rel="stylesheet" type="text/css" href="${STATIC_LIBS}/jquery-easyui/1.4.5/themes/bootstrap/layout.css">
  <link rel="stylesheet" type="text/css" href="${STATIC_LIBS}/jquery-easyui/1.4.5/themes/bootstrap/tabs.css">
  <link rel="stylesheet" type="text/css" href="${STATIC_LIBS}/jquery-easyui/1.4.5/themes/bootstrap/menu.css">
  <@btJSBox /> 
</#macro>

<#macro btJSBox>
  
<!-- start: JavaScript-->
<!-- Vendor JS--> 
<!-- jQuery -->
<!--<script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/jquery/dist/jquery.min.js"></script>
<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>-->
  
<script src="http://apps.bdimg.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="assets/vendor/js/jquery-migrate-1.2.1.min.js"></script>
<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script> 
<!-- Theme JS -->   
<script src="assets/js/jquery.mmenu.min.js"></script>
<script src="assets/js/core.min.js"></script>
 
<!-- Metis Menu Plugin JavaScript -->
<script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/metisMenu/dist/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/dist/js/sb-admin-2.js"></script>
 
<script src="${STATIC_LIBS}/jquery-easyui/1.4.5/jquery.easyui.min.js"></script> 
<!-- end: JavaScript-->

</#macro>



<#macro tHtml>
<!DOCTYPE html>
<html lang="zh-CN"> 
<head> 
   <@tHeadBox /><#--head标签模块引入 -->
    <@tJSBox /><#--js标签模块引入 -->
</head>
<body style="background:#f8f8f8;"> 
    <div class="" style="padding:0 15px;margin:20px 0 80px;">
        <#nested>
    </div>
</body>
</html> 
</#macro> 

<#-- 首页顶部Head栏模块 --> 
<#macro tHeadBox>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="format-detection" content="telephone=no"/>
    <meta content="物流,saas,平台,运输,货代" name="keywords">
    <title>货运中国网</title>
    <link rel="icon" href="static/images/favicon.png" type="image/x-icon">

    <!-- Bootstrap Core CSS -->
    <!--<link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">-->
    <link href="${STATIC_LIBS}/bootstrap/3.3.6/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- EasyUI CSS -->
    <!-- 
    <link href="${STATIC_LIBS}/jquery-easyui/1.4.5/themes/icon.css" rel="stylesheet" type="text/css">
    <link href="${STATIC_LIBS}/jquery-easyui/1.4.5/themes/default/easyui.css" rel="stylesheet" type="text/css">
    -->
    <!-- MetisMenu CSS -->
    <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/metisMenu/dist/metisMenu.min.css" rel="stylesheet">
  
  <!-- DataTables CSS -->
    <!--<link href="${STATIC_LIBS}/datatables-plugins/1.10.11/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">-->
    <link href="${STATIC_LIBS}/datatables/1.10.11/media/css/dataTables.bootstrap.min.css" rel="stylesheet">
    
    <!-- DataTables Responsive CSS -->
    <link href="${STATIC_LIBS}/datatables-responsive/2.0.2/css/responsive.dataTables.css" rel="stylesheet">
    
    <!-- Timeline CSS -->
    <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/dist/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="${STATIC_LIBS}/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="${STATIC_LIBS}/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <!--<link rel="stylesheet" href="${STATIC_LIBS}/bootstrap-chosen/1.0.1/bootstrap-chosen.css"> -->
    
    <link rel="stylesheet" href="${STATIC_LIBS}/select2/4.0.2/dist/css/select2.min.css">
    <link rel="stylesheet" href="${STATIC_LIBS}/select2-bootstrap-theme/0.1.0-beta.4/dist/select2-bootstrap.min.css">
    <!--  
    <link rel="stylesheet" href="${STATIC_LIBS}/JQueryzTree/3.5.15/css/zTreeStyle/zTreeStyle.css">
    
    <link rel="stylesheet" href="${STATIC_LIBS}/jquery-treetable/3.1.0/stylesheets/jquery.treetable.css">
    <link rel="stylesheet" href="${STATIC_LIBS}/jquery-treetable/3.1.0/stylesheets/jquery.treetable.theme.default.css">
    -->
    <!-- Custom Cargocn -->
    <link href="static/css/cargocn.css" rel="stylesheet" type="text/css">
   
</#macro> 

<#-- 首页尾部JS模块 --> 
<#macro tJSBox>
  
  <!-- jQuery -->
    <script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- EasyUI JavaScript -->
    <!--<script src="${STATIC_LIBS}/jquery-easyui/1.4.5/jquery.easyui.min.js"></script>-->

    <!-- jQuery.validate -->
    <script src="${STATIC_LIBS}/jquery.validate/1.15.0/dist/jquery.validate.min.js"></script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
    
    <!-- DataTables JavaScript -->
    <script src="${STATIC_LIBS}/datatables/1.10.11/media/js/jquery.dataTables.min.js"></script>
    <script src="${STATIC_LIBS}/datatables-plugins/1.10.11/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    <script src="${STATIC_LIBS}/datatables-responsive/2.0.2/js/dataTables.responsive.js"></script>
    <script src="${STATIC_LIBS}/datatables-plugins/1.10.11/dataRender/datetime.js"></script>
    <script src="${STATIC_LIBS}/Moment.js/2.12.0/moment.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/metisMenu/dist/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/raphael/raphael-min.js"></script>
    <script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/bower_components/morrisjs/morris.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="${STATIC_LIBS}/startbootstrap-sb-admin-2/1.0.8/dist/js/sb-admin-2.js"></script>    
    
    <!-- <script src="${STATIC_LIBS}/chosen/1.5.1/chosen.jquery.min.js"></script>   -->
    
    <script src="${STATIC_LIBS}/select2/4.0.2/dist/js/select2.full.min.js"></script>  
    <script src="${STATIC_LIBS}/select2/4.0.2/dist/js/i18n/zh-CN.js"></script>  
    
    <script src="${STATIC_LIBS}/JQueryzTree/3.5.15/js/jquery.ztree.all-3.5.min.js"></script>
  
    <script src="${STATIC_LIBS}/jquery-treetable/3.1.0/javascripts/src/jquery.treetable.js"></script>
  
    <script src="${STATIC_LIBS}/My97DatePicker/WdatePicker.js"></script>
    
    <script src="static/js/formatDate.js"></script>
    
    <!-- maskedinput -->
    <script src="${STATIC_LIBS}/jquery.maskedinput/1.3.1/dist/jquery.maskedinput.js"></script>
    
     <!-- form-validate -->
    <script src="static/js/form-validate.js"></script>
    
    <!-- datatable-user -->
    <script src="static/js/datatable-user.js"></script>

</#macro> 