<#include "/constants.ftl"> 
<@i.tHtml>
<form class="form" id="form" role="form">
    <p style="color:#57a2ec;font-weight: bold;">基本信息</p>
     <hr style="border:1px solid #57a2ec" />
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label"> <i style="color:#F30202;margin-right:5px;">*</i>船名</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label"> <i style="color:#F30202;margin-right:5px;">*</i>跟踪手机</label>
     <select class="form-control select2-basic">
         <option id="1" value="-1">船东手机</option>
         <option id="1" value="1"></option>
    </select>
    </div>
    
    <div class="col-md-3 col-sm-6 col-xs-12  form-group">
     <label class="control-label" ><i style="color:#F30202;margin-right:5px;">*</i>船型</label>
    <select class="form-control select2-basic">
         <option id="1" value="-1">散货船</option>
         <option id="1" value="1"></option>
    </select>
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12  form-group">
     <label class="control-label"><i style="color:#F30202;margin-right:5px;">*</i>结算方</label>
     <select class="form-control select2-basic">
         <option id="1" value="-1">船东</option>
         <option id="1" value="1"></option>
    </select>
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
      <label class="control-label"><i style="color:#F30202;margin-right:5px;">*</i>载重吨(吨)</label>
      <input type="text" class="form-control" />
    </div>
    <div class="clearfix"></div>
    <#-- 核心人员 -->
    <p style="color:#57a2ec;font-weight: bold;">核心人员</p>
    <hr style="border:1px solid #57a2ec" />
    <div class="col-md-6">
        <div class="panel panel-default">
         <div class="panel-heading">船东</div>
         <div class="panel-body form-horizontal">
                 <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>姓名</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>手机</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>身份证</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>银行账号</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                 <div class="col-md-12 form-group">
                  <label class="control-label col-md-3">通讯地址</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
         </div>
      </div>
    </div>
    <div class="col-md-6">
        <div class="panel panel-default">
         <div class="panel-heading">船长</div>
         <div class="panel-body form-horizontal">
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>姓名</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>手机</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>身份证</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
                <div class="col-md-12 form-group">
                  <label class="control-label col-md-3"><i style="color:#F30202;margin-right:5px;">*</i>银行账号</label>
                  <div class="col-md-5">
                      <input type="text" class="form-control" />
                  </div>
                </div> 
         </div>
      </div>
    </div>
    
    <div class="clearfix"></div>
    <#-- 其他 -->
    <p style="color:#57a2ec;font-weight: bold;">其他</p>
    <hr style="border:1px solid #57a2ec" />
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label">随船手机1</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label">随船手机2</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label">随船手机3</label>
     <input type="text" class="form-control" />
    </div>
  </form>
  <div class="clearfix"></div>
  <div class="mt25 form-group text-center">
      <button type="button" class="btn btn-primary">保存</button>
      <button type="button" class="btn btn-primary">返回</button>
  </div>
 
<script type="text/javascript">

$(document).ready(function() {
      $(".select2-basic").select2();
});
  
</script>
                   
</@i.tHtml>