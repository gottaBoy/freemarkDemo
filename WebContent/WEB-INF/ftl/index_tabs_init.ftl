<script type="text/javascript">

$(function(){  
  InitLeftMenu();
  tabClose();
  tabCloseEven();
});
function InitLeftMenu() {  
  //所有菜单链接
  $('.nav-second-level li a').click(function(){ 
    //判断是否还有下级
    if(!$(this).next()[0]){
    var tabTitle = $(this).children('.nav_txt').text();
  
    var url = $(this).attr("rel");
    var menuid = $(this).attr("ref"); 
    
    var options = {
       "id":menuid,
       "url":url,
       "title":tabTitle,
       "close":true,
       "content":""
    };
    addTab(options); 
    //addTab(tabTitle,url,'icon-edit',menuid); 
    
    }
  }); 
}    
//function addTab(subtitle,url,icon,menuid){
function addTab(ops){
    var subtitle,url,icon,menuid;
    subtitle = ops.title;
    url = ops.url;
    icon = ops.icon;
    menuid = ops.id;
  if(!$('#mmtabs').tabs('exists',subtitle)){
    $('#mmtabs').tabs('add',{});
    // tab刷新内容 fix 自适应高度
    var tab = $('#mmtabs').tabs('getSelected');
     $("#mmtabs").tabs('update', {
            tab: tab,
            options: {
                title: subtitle,
                content: createFrame(url,menuid),
                //iconCls: icon,
                closable: true,
                selected:true
            }
        }); 
  }else{
    $('#mmtabs').tabs('select',subtitle);
    $('#mm-tabupdate').click();
  }
  tabClose();
}
function closeReflashTab(subtitle1,subtitle2){
  closeTab(subtitle1);
  reflashTab(subtitle2);
}
function reflashTab(subtitle){
  $('#mmtabs').tabs('select',subtitle);
  var currTab = $('#mmtabs').tabs('getSelected');
  var url = $(currTab.panel('options').content).attr('src');
  var iframeId = $(currTab.panel('options').content).attr('id');
  $('#mmtabs').tabs('update',{
    tab:currTab,
    options:{
      content:createFrame(url,iframeId)
    }
  });
}
function closeTab(subtitle){
  $('#mmtabs').tabs('close',subtitle);
}

//更新当前页面
function goBackThisTab(ops){
   var currTab = $('#mmtabs').tabs('getSelected');
   $('#mmtabs').tabs('update', {
    tab: currTab,
    options: {
      title: ops.title,
      content:createFrame(ops.url,ops.id)
    }
   });
}
//跳转到另外一个页面
function goBackAnotherTab(currentTitle,ops){
   //关闭当前页面
   closeTab(currentTitle);
   //进入到新的页面
   addTab(ops);
}

function createFrame(url,menuid)
{
  var s = '<iframe id="'+menuid+'" scrolling="auto" frameborder="0" src="'+url+'" style="width:100%;height:100%;"></iframe>';
  return s;
}
/**function iFrameHeight(iframeid) {
  var ifm = document.getElementById(iframeid); 
  var subWeb ; 
  if (document.frames) {
    if (document.frames[iframeid]) {
      subWeb = document.frames[iframeid].document;
    } else if (ifm != null){
      subWeb = ifm.document;
    }
  } else {
    subWeb = ifm.contentDocument;
  }  
  if(ifm != null && subWeb != null) {  
    if (subWeb.body)
    ifm.height = subWeb.body.scrollHeight + 40;  
  } 
} **/
function tabClose()
{
  /*双击关闭TAB选项卡*/
  $(".tabs-inner").dblclick(function(){
    var subtitle = $(this).children(".tabs-closable").text();
    $('#mmtabs').tabs('close',subtitle);
  })
  /*为选项卡绑定右键*/
  $(".tabs-inner").bind('contextmenu',function(e){
    $('#mm').menu('show', {
      left: e.pageX,
      top: e.pageY
    });

    var subtitle =$(this).children(".tabs-closable").text();

    $('#mm').data("currtab",subtitle);
    $('#mmtabs').tabs('select',subtitle);
    return false;
  });
}
//绑定右键菜单事件
function tabCloseEven()
{
  //刷新
  $('#mm-tabupdate').click(function(){
    var currTab = $('#mmtabs').tabs('getSelected');
    var url = $(currTab.panel('options').content).attr('src');
    var iframeId = $(currTab.panel('options').content).attr('id');
    $('#mmtabs').tabs('update',{
      tab:currTab,
      options:{
        content:createFrame(url,iframeId)
      }
    })
  })
  //关闭当前
  $('#mm-tabclose').click(function(){
    var currtab_title = $('#mm').data("currtab");
    $('#mmtabs').tabs('close',currtab_title);
  })
  //全部关闭
  $('#mm-tabcloseall').click(function(){
    $('.tabs-inner span').each(function(i,n){
      var t = $(n).text();
      $('#mmtabs').tabs('close',t);
    });
  });
  //关闭除当前之外的TAB
  $('#mm-tabcloseother').click(function(){
    $('#mm-tabcloseright').click();
    $('#mm-tabcloseleft').click();
  });
  //关闭当前右侧的TAB
  $('#mm-tabcloseright').click(function(){
    var nextall = $('.tabs-selected').nextAll();
    if(nextall.length==0){ 
      alert('后边没有啦~~');
      return false;
    }
    nextall.each(function(i,n){
      var t=$('a:eq(0) span',$(n)).text();
      $('#mmtabs').tabs('close',t);
    });
    return false;
  });
  //关闭当前左侧的TAB
  $('#mm-tabcloseleft').click(function(){
    var prevall = $('.tabs-selected').prevAll();
    if(prevall.length==0){
      alert('到头了，前边没有啦~~');
      return false;
    }
    prevall.each(function(i,n){
      var t=$('a:eq(0) span',$(n)).text();
      $('#mmtabs').tabs('close',t);
    });
    return false;
  });

  //退出
  $("#mm-exit").click(function(){
    $('#mm').menu('hide');
  })
}  
 
</script> 