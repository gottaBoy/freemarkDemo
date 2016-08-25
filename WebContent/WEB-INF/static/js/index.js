// JavaScript Document
 
$(function(){
	
	(function(){
		
		$("#topnav > li[class='main_menu']").each(function(index){
			$(this).hover(function(){
				$(".nav_2 ul").hide();
				$(".nav_2 ul").eq(index).css("display","inline-block");
				$("#topnav > li[class='main_menu']").css("background","#666");
				$(this).css("background","#9b9b9b");
				
			});
			
		});
		
		$(".nav_2 ul li div").click(function(){
				$(".nav_2 ul li div").removeClass("active");
				$(this).addClass("active");
			
		});
		
		$(".footer .fleft .logo,.top .topmain .logo").click(function(){
			window.location.href='/'; 
		});
		
		
		$(".selector i").click(function(){
			$(this).parent().find("ul").toggle();
		});
		
		$(".selector").hover(function(){
			
		},function(){
			$(this).find("ul").hide();
		});
		
		$(".selector ul li").click(function(){
			var selector = $(this).parent().parent();
			selector.find("input").val($(this).text());
			selector.find("ul").hide();
		});
		
		
		$(".tab ul li").each(function(index){
			$(this).click(function(){
				$(".tab ul li").removeClass("active");
				$(this).addClass("active");
				$(this).parents(".contentwrap").find(".content").hide();
				$(this).parents(".contentwrap").find(".content").eq(index).show();
				
			});
			
		});
		
		/*登陆界面、新用户注册页面关闭*/
		
		$(".mindex").find(".close").click(function(){
			hiddenAllPannel();	
			//$(this).parents(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide(); 
		});
		
		/*打开登陆界面*/
		
		$(".top").find(".login").click(function(){
			hiddenAllPannel();	
			//$(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide();
			$(".mindex").find(".userlogin").show();
			
		});
		
		/*打开下载界面*/
		
		$(".top").find(".appdown").click(function(){
			hiddenAllPannel();	
			//$(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide();
			$(".mindex").find(".appdownload").show();
			
		});
		
		/*打开新用户注册界面*/
		
		$(".top").find(".register").click(function(){
			hiddenAllPannel();	
			//$(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide();
			$(".mindex").find(".registration").show();
			
		});
		/*打开关于我们页面*/
		$(".footer").find(".aboutuslink").click(function(){
			if ($.isFunction(window.addTab)) {
				addTab('关于我们','n_aboutus.do','n001');	
			} else { 
				hiddenAllPannel();	
				//$(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide();
				$(".mindex").find(".aboutus").show();
			}
		});
		/*打开联络我们页面*/
		$(".footer").find(".contactuslink").click(function(){
			if ($.isFunction(window.addTab)) {
				addTab('联系我们','n_contactus.do','n002');	
			} else {
				hiddenAllPannel();	
				//$(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide();
				$(".mindex").find(".contactus").show();
			}
		});
		
		hiddenAllPannel();	
		//$(".mindexwrap").children(".userlogin,.registration,.thanks,.aboutus").hide();
		 
		
		mygridTrCssApply();
		
		
	})();	 
	
})

/*隐藏所有面板*/
function hiddenAllPannel(){
	$(".mindexwrap").children(".appdownload,.userlogin,.registration,.thanks,.aboutus,.contactus").hide(); 
}



function mygridTrCssApply() { 
	$(".mygrid tr:even").css("background", "#ededed"); 
	$(".mygrid .td_0, .mygrid .th_0").css("background", "#fff");
}

var DEFAULT_PAGE_SIZE = 10;

(function($) {
	var PageFunc = function PageFunc() {
	}
	$.PageFunc = function(Total, PageSize, curPageNum, FunUrl, TotalWeight, exportPage, exportPageFunc, exportTotal, exportTotalFunc) {
		if (PageSize == "" || PageSize == null || PageSize == undefined) {
			PageSize = 10;
		}
		if (curPageNum == "" || curPageNum == null || curPageNum == undefined) {
			curPageNum = 1;
		}
		// 计算总页数
		Total = parseInt(Total); // 总记录数
		
		PageSize = parseInt(PageSize); // 每页显示数
		curPageNum = parseInt(curPageNum); // 当前页
		// 总页数
		var AllPage = Math.floor(Total / PageSize);
		if (Total % PageSize != 0) {
			AllPage++;
		}

		var navHtml = "";

		if (curPageNum < 1)
			curPageNum = 1;
		var prePageNum = curPageNum - 1;
		var postPageNum = curPageNum + 1;
		if (prePageNum < 1)
			prePageNum = 1;
		if (postPageNum > AllPage)
			postPageNum = AllPage;
		navHtml += '<ul>';
		navHtml += '<li>共<a href="#">' + Total + '</a>条</li>';
		if (TotalWeight != null) {
			TotalWeight = parseFloat(TotalWeight);
			navHtml += '<li>共<a href="#">' + TotalWeight + '</a>吨</li>';
		}
		navHtml += '<li>共<a href="#">' + AllPage + '</a>页</li>';
		if (exportTotal) {
			navHtml += '<li><a href="javascript:' + exportTotalFunc + '();">全部导出</a></li>';
		}
		navHtml += '<li>当前第<a href="#">' + curPageNum + '</a>页</li>';
		if (exportPage) {
			navHtml += '<li><a href="javascript:' + exportPageFunc + '(' + curPageNum
			+ ');">导出本页</a></li>';
		}
		navHtml += '<li><a href="javascript:' + FunUrl + '(1);">第一页</a></li>';
		navHtml += '<li><a href="javascript:' + FunUrl + '(' + prePageNum
				+ ');">上一页</a></li>';
		navHtml += '<li><a href="javascript:' + FunUrl + '(' + postPageNum
				+ ');">下一页</a></li>';
		navHtml += '<li><a href="javascript:' + FunUrl + '(' + AllPage
				+ ');">最后一页</a></li>';
		navHtml += '</ul>';
		return navHtml;
	};
})(jQuery);

function checkAll(objAll, objs) {  
	if ($('#' + objAll).is(":checked")) {
		$("[name='"+objs+"']").each(function() { 
			$(this).prop("checked","checked");
		});
	} else {
		$("[name='"+objs+"']").each(function() { 
			$(this).removeAttr("checked");
		});
	}
}

function nvlObjValue(obj) { 
	if (typeof obj == 'undefined') {
		return '';
	} else {
		return obj;
	}
}

function nvlObjAttrValue(obj, attrName) {
	if (typeof obj == 'undefined') {
		return '';
	} else {
		if (typeof obj[attrName] == 'undefined') {
			return '';
		} else {
			return obj[attrName];
		}
	}
}

function showCompanyStatus(s) {
	if (s == 0) return "未审批";
	if (s == 1) return "正常";
	if (s == 2) return "锁定";
	if (s == 9) return "已删除";
	return s;
}

function showCompanyAddrType(s) { 
	if (s == 1) return "发货地址";
	if (s == 2) return "收货地址"; 
	return s;
}

function showUserCata(s) {
	if (s == 11) return "发货业务人员";
	if (s == 12) return "发货财务人员";
	if (s == 21) return "物流业务人员";
	if (s == 22) return "物流财务人员";
	if (s == 41) return "收货业务人员";
	if (s == 42) return "收货财务人员"; 
	return s;
}

function showCarOnLoad(s) {
	if (s == true) return "有单在运"; 
	return "空车待运";
}

function showOrderStatus(s) {
	if (s == 1) return "计划";
	if (s == 2) return "锁定";
	if (s == 3) return "执行";
	if (s == 4) return "执行";
	if (s == 5) return "完成";
	if (s == 9) return "删除";
	return s;
}
function showOrderStatusByLogistics(s) {
	if (s == 1) return "计划";
	if (s == 2) return "锁定";
	if (s == 3) return "执行";
	if (s == 4) return "派完";
	if (s == 5) return "完成";
	if (s == 9) return "删除";
	return s;
}
function showDispatchStatus(s) {
	if (s == 1) return "计划";
	if (s == 3) return "待装车";
	if (s == 5) return "在途";
	if (s == 6) return "到达";
	if (s == 7) return "已卸货";
	if (s == 8) return "回单"; 
	if (s == 9) return "完成"; 
	return s;
}

function showStatementStatus(s) {
	if (s == 1) return "未确认";
	if (s == 2) return "已确认";
	if (s == 3) return "已支付"; 
	return s;
}
function showBidStatus(s) {
	if (s == 1) return "新建";
	if (s == 5) return "发布";
	if (s == 6) return "投标中";
	if (s == 7) return "评标中";
	if (s == 8) return "结束";
	if (s == 81) return "流标";
	if (s == 9) return "删除"; 
	return s;
}

function showBidTenderStatus(s) { 
	if (s == 1) return "新建";
	if (s == 2) return "发送";
	if (s == 5) return "中标";
	return s;
}

function showAuctionStatus(s) {
	if (s == 1) return "新建";
	if (s == 5) return "发布";
	if (s == 6) return "竞价中";
	if (s == 7) return "评定中";
	if (s == 8) return "结束";
	if (s == 81) return "流标";
	if (s == 9) return "删除"; 
	if (s == 10) return "已生成订单"; 
	return s;
}
function showAuctionTenderStatus(s) { 
	if (s == 1) return "新建";
	if (s == 2) return "发送";
	if (s == 5) return "中标";
	return s;
}


function showQuote1Status(s) {
	if (s == 1) return "新建";
	if (s == 5) return "发布";
	if (s == 6) return "竞价中";
	if (s == 7) return "评定中";
	if (s == 8) return "结束";
	if (s == 81) return "流标";
	if (s == 9) return "删除"; 
	return s;
}
function showQuote1TenderStatus(s) { 
	if (s == 1) return "新建";
	if (s == 2) return "发送";
	if (s == 5) return "中标";
	return s;
}

function showQuote2Status(s) {
	if (s == 1) return "新建";
	if (s == 5) return "发布";
	if (s == 6) return "竞价中";
	if (s == 7) return "评定中";
	if (s == 8) return "结束";
	if (s == 81) return "流标";
	if (s == 9) return "删除"; 
	return s;
}
function showQuote2TenderStatus(s) { 
	if (s == 1) return "新建";
	if (s == 2) return "发送";
	if (s == 5) return "中标";
	return s;
}
function isCompanyStatusNew(s) {
	if (s == 0) return true;
	return false;
}

function companyLocked(s) { 
	if (s == 2) return true;
	return false;
}

function userLocked(s) { 
	if (s == 1) return true;
	return false;
}
function convoysLocked(s) { 
	if (s == 2) return true;
	return false;
}
function carLocked(s) { 
	if (s == 2) return true;
	return false;
}
function driverLocked(s) { 
	if (s == 2) return true;
	return false;
}
function orderLocked(s) { 
	if (s == 2) return true;
	return false;
}
function setSelectorValue(o,v) {
	o.prop("value",v);
}

function showUploadImg(imgNameObj) {
	if (imgNameObj && imgNameObj.val() != '')
	window.open('/cargocn/upload/postFile/'+imgNameObj.val());	
}

function showPriceType(s) {
	if (s == 'W') return '吨/线路';
	if (s == 'B') return '立方/线路';
	if (s == 'N') return '件/线路';
	return s;
}

function showDate(s) {
	if (s != null) {
		if (s.length >= 10) { 
			return s.substr(0,10);
		}
	} else {
		return '';
	}
	return s;
}
function showDateTimeA(s) {
	if (s != null) {
		var retS = '';
		if (s.length >= 10) { 
			retS = s.substr(5,2) + '月' + s.substr(8,2) + '日';
		}
		if (s.length >= 13) { 
			if (parseInt(s.substr(11,2),10) >= 12) {
				retS += '下午';
			} else {
				retS += '上午';
			}
		}
		return retS;
	} else {
		return '';
	}
	return s;
}
function showDateTime(s) {
	if (s != null) { 
		return s.replace('T',' ');
	} else {
		return '';
	}
	return s;
}
function mydateformatter(date){
    var y = date.getFullYear();
    var m = date.getMonth()+1;
    var d = date.getDate();
    return y+'/'+(m<10?('0'+m):m)+'/'+(d<10?('0'+d):d);
}
function mydateparser(s){
    if (!s) return new Date();
    var ss = (s.split('/'));
    var y = parseInt(ss[0],10);
    var m = parseInt(ss[1],10);
    var d = parseInt(ss[2],10);
    if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
        return new Date(y,m-1,d);
    } else {
        return new Date();
    }
}

(function($){
	$.fn.serializeJson=function(){
	var serializeObj={};
	var array=this.serializeArray();
	var str=this.serialize();
	$(array).each(function(){
	if(serializeObj[this.name]){
	if($.isArray(serializeObj[this.name])){
	serializeObj[this.name].push(this.value);
	}else{
	serializeObj[this.name]=[serializeObj[this.name],this.value];
	}
	}else{
	serializeObj[this.name]=this.value;
	}
	});
	return serializeObj;
	};
	})(jQuery);