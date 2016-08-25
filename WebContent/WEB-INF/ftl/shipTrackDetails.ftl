<#include "/constants.ftl"> 
<@i.tHtml>
<div style="margin-top: 30px;"></div>
  <!--   data-tables -->
  <div class="dataTable_wrapper">
    <table width="100%" class="table table-striped table-bordered dt-responsive table-hover nowrap" cellspacing="0" id="dt_1">
      <thead>
        <tr>
          <th>日期</th>
          <th>地点</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>05月31日下午</td>
          <td>上海市</td>
        </tr>
      </tbody>
</table>
</div>

<script type="text/javascript">
$(document).ready(function() {
      //$(".select2-basic").select2();
      var table = $('#dt_1').DataTable();
});
</script>          
</@i.tHtml>