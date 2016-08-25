<#include "/constants.ftl"> 
<@i.ttHtml>
<form id="login" action="login" method="GET">
    
    <button type="submit">登录</button> 
</form>

<#-- <textarea id="ta" name="ta"></textarea><button type="button" onclick="getTaValue();">获取值</button> 
<script type="text/javascript">
  function getTaValue(){
     var ta1 = $("#ta").val();
     console.info(ta1);
     var ta2 = $("#ta").text();
     console.info(ta2);
     var ta3 = $("#ta").text(ta1);
     var ta4 = $("#ta").text();
     console.info(ta4);
     
     $.ajax( {     
        type: "POST",
        url: "${request.contextPath}/add",   
        dataType:"json",  
        data: $("#login").serialize(),  //JSON.stringify(aoData)
        success: function(data) {   
            alert(data);
        }     
    });    
  }
</script> -->
</@i.ttHtml>