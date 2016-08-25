<#include "/constants.ftl"> 
<@i.tHtml>
<style type="text/css">
.input-group .btn-group .notActive{
  color: #3276b1;
  background-color: #fff;
}
</style>

<form class="form" id="form" role="form">
    <p style="color:#57a2ec;font-weight: bold;">船舶查询</p>
     <hr style="border:1px solid #57a2ec" />
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label"> 船舶名称</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label"> 船舶类型</label>
     <select class="form-control select2-basic">
         <option id="1" value="-1">散货船</option>
         <option id="1" value="1">集装箱船</option>
    </select>
    </div>
    
    <div class="col-md-3 col-sm-6 col-xs-12  form-group">
     <label class="control-label" >吨位</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12  form-group">
     <label class="control-label">船东姓名</label>
     <input type="text" class="form-control" />
    </div>
    <div class="col-md-3 col-sm-6 col-xs-12 form-group">
     <label class="control-label"> 船东手机</label>
     <input type="text" class="form-control" />
    </div>
  </form>
  <div class="mt25 form-group col-md-3 col-sm-6 col-xs-12">
      <button type="button" class="btn btn-primary">查询</button>
      <button type="button" class="btn btn-primary">新增</button>
  </div>

  <div style="margin-top: 30px;"></div>
  <!--   data-tables -->
  <div class="dataTable_wrapper">
    <table width="100%" class="table table-striped table-bordered dt-responsive table-hover nowrap" cellspacing="0" id="dt_1">
      <thead>
        <tr>
          <th>序号</th>
          <th>船舶名称</th>
          <th>船舶类型</th>
          <th>船长</th>
          <th>船长手机</th>
          <th>当前位置</th>
          <th>当前状态</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>1</td>
          <td>长江</td>
          <td>集装箱船</td>
          <td>张三</td>
          <td>12628262872</td>
          <td>珠海</td>
          <td>空船待运</td>
          <td>
                <a href="#">编辑</a>&nbsp;&nbsp;
                <a href="#">锁定</a>&nbsp;&nbsp;
                <a href="#">删除</a>&nbsp;&nbsp;
                <a href="#">定位</a>
          </td>
        </tr>
      </tbody>
</table>
</div>
<script type="text/javascript">

$(document).ready(function() {
      $(".select2-basic").select2();

     var table = $('#dt_1').DataTable();
});
  
</script>
                   
</@i.tHtml>