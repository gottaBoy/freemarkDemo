<#include "/constants.ftl"> 
<@i.tHtml>
<style type="text/css">
.input-group .btn-group .notActive{
  color: #3276b1;
  background-color: #fff;
}
</style>

<form class="form" id="form" role="form">
<!-- 
<p style="color:#57a2ec;font-weight: bold;">找车询价</p>
<hr style="border:1px solid #57a2ec" /> -->
    <div class="form-group" style="margin-top: 10px 0px;">
        <i style="color:#F30202;margin-right:4px;width:40px">*</i>
        <label class="radio-inline">
          <input type="radio" name="inlineRadio1" id="inlineRadio1" value="1" checked="checked"> 发货询价
        </label>
        <label class="radio-inline">
          <input type="radio" name="inlineRadio1" id="inlineRadio2" value="2"> 收货询价
       </label>
    </div>

    <p style="color:#57a2ec;font-weight: bold;">运输货品</p>
     <hr style="border:1px solid #57a2ec" />
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="col-xs-12 control-label"  style="line-height: 34px;"><i style="color:#F30202;margin-right:5px;">*</i> 货品名称</label>
     <input type="text" class="form-control" />
    </div>
    
    <div class="col-md-3 col-sm-6 col-xs-12  form-group">
     <label class="col-xs-12 control-label"  style="line-height: 34px;"><i style="color:#F30202;margin-right:5px;">*</i> 重量/吨</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12  form-group">
     <label class="col-xs-12 control-label"  style="line-height: 34px;">件数</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="col-xs-12 control-label"  style="line-height: 34px;"> 体积/m³</label>
     <input type="text" class="form-control" />
    </div>
   
    <p style="color:#57a2ec;font-weight: bold;">运输要求</p>
    <hr style="border:1px solid #57a2ec" />

    <div class="form-inline" data-toggle="distpicker">
       <label class="control-label"  style="float: left;margin-right: 20px;line-height: 54px;width: 30px;text-align: right;"><i style="color:#F30202;margin-right:5px">*</i> 从</label> 
       <!-- <div class="form-group">
          <label class="sr-only" for="province" style="width: 200px;">Province</label>
          <select class="form-control" id="province"><option value="" data-code="" style="width: 200px;">—— 省 ——</option></select>
        </div> -->
        <!-- <div class="form-group">
          <label class="sr-only" for="city10">City</label>
          <select class="form-control" id="city"><option value="" data-code="" style="width: 200px;">—— 市 ——</option></select>
        </div> -->
        <div class="form-group">
           <label class="sr-only" for="city1"></label>
           <!-- <label for="sendCity" class="col-sm-3  control-label">发货城市</label> -->
            <select id="city1" class="form-control" style="width:250px;"></select>
        </div>
        <div class="form-group">
          <label class="sr-only" for="dec1">City</label>
          <input class="form-control"  id="dec1" placeholder="请输入详细地址" />
        </div>
       <!--   <div class="form-group">
        <label class="sr-only" for="district">District</label>
        <select class="form-control" id="district"><option value="" data-code="" style="width: 200px;">—— 区 ——</option></select>
               </div> -->
        <div class="form-group" style="margin: 10px 0px;">
     <label class="control-label"  style="float: left;margin-right: 10px;line-height: 34px;width: 200px;text-align: right;"><i style="color:#F30202;margin-right:5px">*</i> 计划发运时间</label>
    <input class="Wdate form-control" type="text" id="shipper-time" onclick="WdatePicker()" style="width: 200px;" >
    </div>
     </div>
    <div class="form-inline" data-toggle="distpicker">
    <label class="control-label"  style="float: left;margin-right: 20px;line-height: 54px;width: 30px;text-align: right;"><i style="color:#F30202;margin-right:5px">*</i> 到</label> 
       <!--  <div class="form-group">
       
         <label class="sr-only" for="province1">Province</label>
         <select class="form-control" id="province1"><option value="" data-code="">—— 省 ——</option></select>
       </div> -->
        <!-- <div class="form-group">
          <label class="sr-only" for="city1">City</label>
          <select class="form-control" id="city1"><option value="" data-code="">—— 市 ——</option></select>
        </div> -->
       <!--  <div class="form-group">
         <label class="sr-only" for="district1">District</label>
         <select class="form-control" id="district1"><option value="" data-code="">—— 区 ——</option></select>
       </div> -->
       <div class="form-group">
           <label class="sr-only" for="city2"></label>
           <!-- <label for="sendCity" class="col-sm-3  control-label">发货城市</label> -->
            <select id="city2" class="form-control" style="width:250px;"></select>
        </div>
       <div class="form-group">
          <label class="sr-only" for="dec">City</label>
          <input class="form-control"  id="dec" placeholder="请输入详细地址" />
        </div>
     <div class="form-group" style="margin: 10px 0px;">
     <label class="control-label"  style="float: left;margin-right: 10px;line-height: 34px;width: 200px;text-align: right;"><i style="color:#F30202;margin-right:5px">*</i> 计划运达时间</label>
    <input class="Wdate form-control" type="text" id="shipper-time" onclick="WdatePicker()" style="width: 200px;" >
    </div>
     </div>

    <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:70px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>运输方式</label>
      <label class="radio-inline">
        <input type="radio" name="transtype" id="transtype1" value="1" checked="checked"> 汽运
      </label>
      <label class="radio-inline">
        <input type="radio" name="transtype" id="transtype2" value="2"> 船运
      </label>
      <label class="radio-inline">
        <input type="radio" name="transtype" id="transtype3" value="2"> 汽船联运
      </label>
    </div>


     <div class="form-group">
        <label for="carlength" class="control-label text-right" style="float: left;line-height: 34px;width: 60px;text-align: right;">车长</label>
        <div class="col-sm-10 col-md-10">
          <div class="input-group">
            <div class="btn-group">
              <a class="btn btn-default active" data-toggle="carlength" data-title="-1">不限</a>
              <a class="btn btn-default notActive" data-toggle="carlength" data-title="1">17.5米</a>
              <a class="btn btn-default notActive" data-toggle="carlength" data-title="2">13米</a>
              <a class="btn btn-default notActive" data-toggle="carlength" data-title="3">9.6米</a>
              <a class="btn btn-default notActive" data-toggle="carlength" data-title="4">6.8米</a>
              <a class="btn btn-default notActive" data-toggle="carlength" data-title="5">4.2米</a>
              <button class="btn btn-default" data-toggle="carlength" data-title="6">更多</button>
            </div>
            <input type="hidden" name="carlength" id="carlength">
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="form-group">
        <label for="cartype" class="control-label text-right" style="float: left;line-height: 34px;width: 60px;text-align: right;">车型</label>
        <div class="col-sm-10 col-md-10">
          <div class="input-group">
            <div class="btn-group">
              <a class="btn btn-default active" data-toggle="cartype" data-title="-1">不限</a>
              <a class="btn btn-default notActive" data-toggle="cartype" data-title="1">高栏车</a>
              <a class="btn btn-default notActive" data-toggle="cartype" data-title="2">平板车</a>
              <a class="btn btn-default notActive" data-toggle="cartype" data-title="3">厢式车</a>
              <button class="btn btn-default" data-toggle="carlength" data-title="6">更多</button>
            </div>
            <input type="hidden" name="cartype" id="cartype">
          </div>
        </div>
      </div>
      <div class="clearfix"></div>
      <div class="form-group">
        <label for="shiptype" class="control-label text-right" style="float: left;line-height: 34px;width: 60px;text-align: right;">船型</label>
        <div class="col-sm-10 col-md-10">
          <div class="input-group">
            <div class="btn-group">
              <a class="btn btn-default active" data-toggle="shiptype" data-title="-1">不限</a>
              <a class="btn btn-default notActive" data-toggle="shiptype" data-title="1">散货船</a>
              <a class="btn btn-default notActive" data-toggle="shiptype" data-title="2">集装箱船</a>
              <a class="btn btn-default notActive" data-toggle="shiptype" data-title="3">滚装船</a>
              <button class="btn btn-default" data-toggle="shiptype" data-title="6">更多</button>
            </div>
            <input type="hidden" name="shiptype" id="shiptype">
          </div>
        </div>
      </div>

   <div class="clearfix"></div>     
   <div class="form-group form-inline">
     <label class="control-label" style="float: left;margin-right: 10px;line-height: 34px;width: 60px;text-align: right;">补充说明</label>
    <textarea id="bidBackground" name="bidBackground" class="form-control" style="width: 900px;"></textarea>
    </div>

    <div class="form-group form-inline">
    <label class="control-label" style="float: left;margin-right: 10px;line-height: 34px;width: 60px;text-align: right;">附件</label>
    <input type="file" class="form-control" >
    </div>

    <p style="color:#57a2ec;font-weight: bold;">询报价要求</p>
    <hr style="border:1px solid #57a2ec" />

    <div class="form-group form-inline">
        <label class="control-label" style="margin:0 10px;line-height: 34px;width: 100px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span> 报价截止时间</label>
        <input class="Wdate form-control" type="text" id="shipper-time" onclick="WdatePicker()" style="width: 200px;" >
    </div> 

    <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:100px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>允许部分承运</label>
      <label class="radio-inline">
        <input type="radio" name="allow" id="allow1" value="1" checked="checked"> 允许
      </label>
      <label class="radio-inline">
        <input type="radio" name="allow" id="allow2" value="2"> 不允许
      </label>
    </div>

    <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:100px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>报价方式</label>
      <label class="radio-inline">
        <input type="radio" name="counttype" id="counttype1" value="1" checked="checked"> 总价
      </label>
      <label class="radio-inline">
        <input type="radio" name="counttype" id="counttype2" value="2"> 吨/线路
      </label>
    </div>
    
    <p style="color:#57a2ec;font-weight: bold;">支付要求</p>
    <hr style="border:1px solid #57a2ec" />

    <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:70px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>开票</label>
      <label class="radio-inline">
        <input type="radio" name="need" id="need1" value="1" checked="checked"> 需要
      </label>
      <label class="radio-inline">
        <input type="radio" name="need" id="need2" value="2"> 不需要
      </label>
    </div>

    <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:70px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>回单</label>
      <label class="radio-inline">
        <input type="radio" name="order" id="order1" value="1" checked="checked"> 需要
      </label>
      <label class="radio-inline">
        <input type="radio" name="order" id="order2" value="2"> 不需要
      </label>
    </div>

    <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:70px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>支付方式</label>
      <label class="radio-inline">
        <input type="radio" name="cost" id="cost1" value="1" checked="checked"> 在线支付
      </label>
      <label class="radio-inline">
        <input type="radio" name="cost" id="cost2" value="2"> 运费到付
      </label>
    </div>

  <p style="color:#57a2ec;font-weight: bold;">询价方式及隐私设置</p>
   <hr style="border:1px solid #57a2ec" />

<div class="inquerytype">
   <div class="form-group">
      <label class="control-label"  style="margin:0 10px;line-height: 34px;width:70px;text-align: right;"><span style="color:#F30202;margin-right:4px;">*</span>询价方式</label>
      <label class="radio-inline">
      <input type="radio" name="inquery" id="inquery1" value="1" checked="checked"> 全平台询价
      </label>
      <label class="radio-inline">
        <input type="radio" name="inquery" id="inquery2" value="2"> 伙伴圈询价
      </label>
      <label class="radio-inline">
        <input type="radio" name="inquery" id="inquery3" value="3"> 伙伴圈邀请询价
      </label>
   </div>
    <div id="partner" style="display: none;" class="dataTable_wrapper"> 
       <table width="100%" class="table table-striped table-bordered table-hover" id="dt_1">
            <thead>
              <tr>
                  <th ><input name="select_all" type="checkbox" />全选</th>
                  <th >承运物流公司</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                  <th ><input type="checkbox" /></th>
                  <td >公司1</td>
              </tr>
               <tr>
                  <th ><input type="checkbox" /></th>
                  <td >公司2</td>
              </tr>
               <tr>
                  <th ><input type="checkbox" /></th>
                  <td >公司3</td>
              </tr>
            </tbody>
       </table>
    </div>

</div>
 <div class="form" style="margin: 10px 0px;text-align:center;">
     <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#messageModal">发布</button> -->
     <button id="publishBtn" type="button" class="btn btn-primary" onclick="publish(this);">发布</button>
     <!-- <button type="button" class="btn btn-primary" onclick="closeBut();">返回</button> -->
  </div>
</form>
<div class="container">
 <!-- Modal -->
<div class="modal fade" role="dialog" aria-labelledby="messageModalLabel" id="messageModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h3 class="modal-title" id="messageModalLabel">提示</h3>
        </div>
        <div class="modal-body" style="padding-bottom: 0px">
          <div class="alert alert-warning" role="alert" style="padding-top: 0px">
            <h3>
              <span class="glyphicon glyphicon-question-sign" aria-hidden="true" />
                  询价单一旦发布将不可修改，请点击确定发布！
            </h3>
          </div>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-primary"  onclick="publishMessage();">确定</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
        </div>
     </div>
  </div>
</div>
<div class="modal fade" role="dialog" aria-labelledby="messageModalLabel" id="publishMessage" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
          <h3 class="modal-title" id="messageModalLabel">提示</h3>
        </div>
        <div class="modal-body" style="padding-bottom: 0px">
          <div class="alert alert-warning" role="alert" style="padding-top: 0px">
            <h3>
              <span class="glyphicon glyphicon-question-sign" aria-hidden="true" />
                  恭喜您，发布成功！
            </h3>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="publicContinue();">继续</button>
          <button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
        </div>
     </div>
  </div>
</div>
</div> 
<script type="text/javascript">
$(document).ready(function() {
    $('input[name="inquery"]').on('click', function(){
          console.info($(this).val());
          if($(this).val()==3){
               $("#partner").show();
               if (parent.iFrameHeight) parent.iFrameHeight('cib-s002');
          }else{
               $("#partner").hide();
          }
    });

    $('.input-group .btn-group a').on('click', function(){
        var sel = $(this).data('title');
        var tog = $(this).data('toggle');
        $('#'+tog).prop('value', sel);
        $('a[data-toggle="'+tog+'"]').not('[data-title="'+sel+'"]').removeClass('active').addClass('notActive');
        $('a[data-toggle="'+tog+'"][data-title="'+sel+'"]').removeClass('notActive').addClass('active');
    });

    //$('#myModal').modal();

    $("#city1").select2({
              theme: "bootstrap",
              placeholder: "请选择",
              allowClear: true
    });
    $("#city2").select2({
              theme: "bootstrap",
              placeholder: "请选择",
              allowClear: true
    });
});

var publish = function(e){
   //$(window.parent.document).find('#myModal').modal('show');
   var top = $(e).position().top;
   $("#messageModal > .modal-dialog").css("top",top-300);
   $("#messageModal").modal("show");
}
var publishMessage = function(){
     $("#messageModal").modal("hide");
     var top = $("#publishBtn").position().top;
     $("#publishMessage > .modal-dialog").css("top",top-300);
    $("#publishMessage").modal("show");
}

var closeBut = function(){
     parent.closeTab('cib-s001-1');
}
var tip = function(){
     alert("操作成功!");
 }
</script>
                         
</@i.tHtml>